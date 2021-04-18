module Web.Dom

import JS
import public Web.Internal.Types
import public Web.Raw.Dom as Dom

%default total

--------------------------------------------------------------------------------
--          Main entry points
--------------------------------------------------------------------------------

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
body = unMaybe "Web.Dom.body" $ document >>= to body

--------------------------------------------------------------------------------
--          Elements
--------------------------------------------------------------------------------

||| HTML Element Tags.
|||
||| This is mainly to be used with `Web.Dom.createElement` and `newElement`.
||| Some deprecated tags have been left out, some others might
||| still be missing.
public export
data ElementType : (tag : String) -> (htmlElement : Type) -> Type where
  A          : ElementType "a" HTMLAnchorElement
  Area       : ElementType "area" HTMLAreaElement
  Audio      : ElementType "audio" HTMLAudioElement
  Base       : ElementType "base" HTMLBaseElement
  Blockquote : ElementType "blockquote" HTMLQuoteElement
  Body       : ElementType "body" HTMLBodyElement
  Br         : ElementType "br" HTMLBRElement
  Button     : ElementType "button" HTMLButtonElement
  Canvas     : ElementType "canvas" HTMLCanvasElement
  Caption    : ElementType "caption" HTMLTableCaptionElement
  Col        : ElementType "col" HTMLTableColElement
  Colgroup   : ElementType "colgroup" HTMLTableColElement
  Data       : ElementType "data" HTMLDataElement
  Datalist   : ElementType "datalist" HTMLDataListElement
  Del        : ElementType "del" HTMLModElement
  Details    : ElementType "details" HTMLDetailsElement
  Dialog     : ElementType "dialog" HTMLDialogElement
  Div        : ElementType "div" HTMLDivElement
  Dl         : ElementType "dl" HTMLDListElement
  Embed      : ElementType "embed" HTMLEmbedElement
  FieldSet   : ElementType "fieldset" HTMLFieldSetElement
  Form       : ElementType "form" HTMLFormElement
  H1         : ElementType "h1" HTMLHeadingElement
  H2         : ElementType "h2" HTMLHeadingElement
  H3         : ElementType "h3" HTMLHeadingElement
  H4         : ElementType "h4" HTMLHeadingElement
  H5         : ElementType "h5" HTMLHeadingElement
  H6         : ElementType "h6" HTMLHeadingElement
  HR         : ElementType "hr" HTMLHRElement
  Html       : ElementType "html" HTMLHtmlElement
  IFrame     : ElementType "iframe" HTMLIFrameElement
  Ime        : ElementType "img" HTMLImageElement
  Input      : ElementType "input" HTMLInputElement
  Ins        : ElementType "ins" HTMLModElement
  Label      : ElementType "label" HTMLLabelElement
  Legend     : ElementType "legend" HTMLLegendElement
  Li         : ElementType "li" HTMLLIElement
  Link       : ElementType "link" HTMLLinkElement
  Map        : ElementType "map" HTMLMapElement
  Menu       : ElementType "menu" HTMLMenuElement
  Meta       : ElementType "meta" HTMLMetaElement
  Meter      : ElementType "meter" HTMLMeterElement
  Object     : ElementType "object" HTMLObjectElement
  Ol         : ElementType "ol" HTMLOListElement
  OptGroup   : ElementType "optgroup" HTMLOptGroupElement
  Option     : ElementType "option" HTMLOptionElement
  Output     : ElementType "output" HTMLOutputElement
  P          : ElementType "p" HTMLParagraphElement
  Param      : ElementType "param" HTMLParamElement
  Picture    : ElementType "picture" HTMLPictureElement
  Pre        : ElementType "pre" HTMLPreElement
  Progress   : ElementType "progress" HTMLProgressElement
  Q          : ElementType "q" HTMLQuoteElement
  Script     : ElementType "script" HTMLScriptElement
  Select     : ElementType "Select" HTMLSelectElement
  Slot       : ElementType "slot" HTMLSlotElement
  Source     : ElementType "source" HTMLSourceElement
  Span       : ElementType "span" HTMLSpanElement
  Style      : ElementType "style" HTMLStyleElement
  Table      : ElementType "table" HTMLTableElement
  Tbody      : ElementType "tbody" HTMLTableSectionElement
  Td         : ElementType "td" HTMLTableCellElement
  Template   : ElementType "template" HTMLTemplateElement
  TextArea   : ElementType "textarea" HTMLTextAreaElement
  Tfoot      : ElementType "tfoot" HTMLTableSectionElement
  Th         : ElementType "th" HTMLTableCellElement
  Thead      : ElementType "thead" HTMLTableSectionElement
  Time       : ElementType "time" HTMLTimeElement
  Title      : ElementType "title" HTMLTitleElement
  Tr         : ElementType "tr" HTMLTableRowElement
  Track      : ElementType "track" HTMLTrackElement
  Ul         : ElementType "ul" HTMLUListElement
  Video      : ElementType "video" HTMLVideoElement

||| Extracts the `tag` String from a known `ElementType`.
public export
elementTag : {tag : _} -> ElementType tag t -> String
elementTag _ = tag

||| Proof, that each element type has an instance of `SafeCast`.
export
elemCast :  (0 f : Type -> Type)
         -> (forall a . SafeCast a => f a)
         -> (e : ElementType s t)
         -> f t
elemCast _ fun A          = fun
elemCast _ fun Area       = fun
elemCast _ fun Audio      = fun
elemCast _ fun Base       = fun
elemCast _ fun Blockquote = fun
elemCast _ fun Body       = fun
elemCast _ fun Br         = fun
elemCast _ fun Button     = fun
elemCast _ fun Canvas     = fun
elemCast _ fun Caption    = fun
elemCast _ fun Col        = fun
elemCast _ fun Colgroup   = fun
elemCast _ fun Data       = fun
elemCast _ fun Datalist   = fun
elemCast _ fun Del        = fun
elemCast _ fun Details    = fun
elemCast _ fun Dialog     = fun
elemCast _ fun Div        = fun
elemCast _ fun Dl         = fun
elemCast _ fun Embed      = fun
elemCast _ fun FieldSet   = fun
elemCast _ fun Form       = fun
elemCast _ fun H1         = fun
elemCast _ fun H2         = fun
elemCast _ fun H3         = fun
elemCast _ fun H4         = fun
elemCast _ fun H5         = fun
elemCast _ fun H6         = fun
elemCast _ fun HR         = fun
elemCast _ fun Html       = fun
elemCast _ fun IFrame     = fun
elemCast _ fun Ime        = fun
elemCast _ fun Input      = fun
elemCast _ fun Ins        = fun
elemCast _ fun Label      = fun
elemCast _ fun Legend     = fun
elemCast _ fun Li         = fun
elemCast _ fun Link       = fun
elemCast _ fun Map        = fun
elemCast _ fun Menu       = fun
elemCast _ fun Meta       = fun
elemCast _ fun Meter      = fun
elemCast _ fun Object     = fun
elemCast _ fun Ol         = fun
elemCast _ fun OptGroup   = fun
elemCast _ fun Option     = fun
elemCast _ fun Output     = fun
elemCast _ fun P          = fun
elemCast _ fun Param      = fun
elemCast _ fun Picture    = fun
elemCast _ fun Pre        = fun
elemCast _ fun Progress   = fun
elemCast _ fun Q          = fun
elemCast _ fun Script     = fun
elemCast _ fun Select     = fun
elemCast _ fun Slot       = fun
elemCast _ fun Source     = fun
elemCast _ fun Span       = fun
elemCast _ fun Style      = fun
elemCast _ fun Table      = fun
elemCast _ fun Tbody      = fun
elemCast _ fun Td         = fun
elemCast _ fun Template   = fun
elemCast _ fun TextArea   = fun
elemCast _ fun Tfoot      = fun
elemCast _ fun Th         = fun
elemCast _ fun Thead      = fun
elemCast _ fun Time       = fun
elemCast _ fun Title      = fun
elemCast _ fun Tr         = fun
elemCast _ fun Track      = fun
elemCast _ fun Ul         = fun
elemCast _ fun Video      = fun

||| Creates a new element using the given `ElementType`'s `tag`
||| and casting the result to the corresponding HTML element type.
||| See also `newElement`.
export
createElement : {tag : _} -> (e : ElementType tag t) -> JSIO t
createElement e =
   elemCast JSIO ( castingTo #"JS.Dom.createElement [\#{tag}]"# $
                   document >>= (`createElement'` tag)) e

||| Like `createElement` but applies the given set of
||| modifiers. This is especially useful for setting an element's
||| attributes.
export
newElement :  {tag : _}
           -> (e : ElementType tag t)
           -> (mods : List (t -> JSIO ()))
           -> JSIO t
newElement e mods = do res <- createElement e
                       for_ mods \m => m res
                       pure res

--------------------------------------------------------------------------------
--          Finding Elements
--------------------------------------------------------------------------------

export
getElementById : String -> JSIO (Maybe Element)
getElementById s = getElementById !document s

export
castElementById_ : SafeCast a => String -> JSIO (Maybe a)
castElementById_ = map (>>= safeCast) . getElementById

export
castElementById : (0 a : Type) -> SafeCast a => String -> JSIO (Maybe a)
castElementById _ = castElementById_

export
htmlElementById : ElementType tag a -> String -> JSIO (Maybe a)
htmlElementById e s = elemCast (JSIO . Maybe) (castElementById_ s) e

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export
ArrayLike NodeList Node where

export
ArrayLike DOMTokenList String where

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
