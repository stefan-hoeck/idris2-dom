module Web.Dom

import JS
import public Web.Internal.Types
import public Web.Raw.Dom as Dom

%default total

%foreign "browser:lambda:()=>window"
prim__window : PrimIO Window

%foreign "browser:lambda:()=>document"
prim__document : PrimIO Document

export
window : JSIO Window
window = primJS prim__window

export
document : JSIO Document
document = primJS prim__document

export
body : JSIO HTMLElement
body = unMaybe "Test.body" $ document >>= to body

export
getElementById : String -> JSIO (Maybe Element)
getElementById s = getElementById !document s

export
castElementById : SafeCast a => String -> JSIO (Maybe a)
castElementById = map safeCast . getElementById

--------------------------------------------------------------------------------
--          Elements
--------------------------------------------------------------------------------

||| TODO : extend this
public export
data ElementType = A
                 | Area
                 | Audio
                 | Br
                 | Div
                 | Button
                 | Input

public export
elementTag : ElementType -> String
elementTag A      = "a"
elementTag Area   = "area"
elementTag Audio  = "audio"
elementTag Br     = "br"
elementTag Div    = "div"
elementTag Button = "button"
elementTag Input  = "input"

public export
0 ElemTpe : ElementType -> Type
ElemTpe A      = HTMLAnchorElement
ElemTpe Area   = HTMLAreaElement
ElemTpe Audio  = HTMLAudioElement
ElemTpe Br     = HTMLBRElement
ElemTpe Div    = HTMLDivElement
ElemTpe Button = HTMLButtonElement
ElemTpe Input  = HTMLInputElement

elemCast :  (forall a . SafeCast a => JSIO a)
         -> (e : ElementType)
         -> JSIO (ElemTpe e)
elemCast f A      = f
elemCast f Area   = f
elemCast f Audio  = f
elemCast f Br     = f
elemCast f Div    = f
elemCast f Button = f
elemCast f Input  = f

export
createElement : (e : ElementType) -> JSIO (ElemTpe e)
createElement e =
  let tag = elementTag e
   in elemCast ( castingTo #"JS.Dom..createElement [\#{tag}]"# $
                 document >>= (`createElement'` tag)) e

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export
Callback EventListener (Event -> JSIO ()) where
  callback f = toEventListener (runJS . f)

export
Callback MutationCallback (  Array MutationRecord
                          -> MutationObserver
                          -> JSIO () ) where
  callback f = toMutationCallback \a,m => runJS (f a m)

||| In case of an error, the error is logged to the console and
||| the node is rejected
export
Callback NodeFilter (Node -> JSIO UInt16 ) where
  callback f = toNodeFilter (runJSWithDefault FILTER_REJECT . f)

export
Callback XPathNSResolver (Maybe String -> JSIO (Maybe String) ) where
  callback f = toXPathNSResolver $ map maybeToNullable
                                 . runJSWithDefault Nothing
                                 . f
                                 . nullableToMaybe
