module Web.Dom

import JS
import public Web.Internal.Types
import public Web.Raw.Dom as Dom

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
createElement : (0 a : Type) -> SafeCast a => String -> JSIO a
createElement _ tag =
  castingTo #"JS.Dom..createElement [\#{tag}]"# $
  document >>= (`createElement'` tag)

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
