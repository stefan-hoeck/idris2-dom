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

||| HTML Element Tags linking tag names with HTML element types
|||
||| This is mainly to be used with `Web.Dom.createElement` and `newElement`.
||| Some deprecated tags have been left out, some others might
||| still be missing.
public export
data ElementType : (tag : String) -> (htmlElement : Type) -> Type where
  A          : ElementType "a" HTMLAnchorElement
  Address    : ElementType "address" HTMLElement
  Area       : ElementType "area" HTMLAreaElement
  Article    : ElementType "article" HTMLElement
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
  Footer     : ElementType "footer" HTMLElement
  Form       : ElementType "form" HTMLFormElement
  H1         : ElementType "h1" HTMLHeadingElement
  H2         : ElementType "h2" HTMLHeadingElement
  H3         : ElementType "h3" HTMLHeadingElement
  H4         : ElementType "h4" HTMLHeadingElement
  H5         : ElementType "h5" HTMLHeadingElement
  H6         : ElementType "h6" HTMLHeadingElement
  HR         : ElementType "hr" HTMLHRElement
  Header     : ElementType "header" HTMLElement
  Html       : ElementType "html" HTMLHtmlElement
  IFrame     : ElementType "iframe" HTMLIFrameElement
  Img        : ElementType "img" HTMLImageElement
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
  Section    : ElementType "section" HTMLElement
  Select     : ElementType "select" HTMLSelectElement
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
public export %inline
elementTag : {tag : _} -> (0 _ : ElementType tag t) -> String
elementTag _ = tag

||| Creates a new element using the given `ElementType`'s `tag`
||| and casting the result to the corresponding HTML element type.
||| See also `newElement`.
export
createElement : SafeCast t => {tag : _} -> (0 e : ElementType tag t) -> JSIO t
createElement e =
   castingTo "Web.Dom.createElement \{tag}" $ document >>= (`createElement` tag)

||| Like `createElement` but applies the given set of
||| modifiers. This is especially useful for setting an element's
||| attributes.
export
newElement :
     {auto sc : SafeCast t}
  -> {tag : _}
  -> (0 e : ElementType tag t)
  -> (mods : List (t -> JSIO ()))
  -> JSIO t
newElement e mods =
  do res <- createElement e
     for_ mods $ \m => m res
     pure res

--------------------------------------------------------------------------------
--          Finding Elements
--------------------------------------------------------------------------------

export
ArrayLike HTMLCollection Element where

export
getElementById : String -> JSIO (Maybe Element)
getElementById s = document >>= (`getElementById` s)

export
castElementById_ : SafeCast a => String -> JSIO (Maybe a)
castElementById_ = map (>>= safeCast) . getElementById

export %inline
castElementById : (0 a : Type) -> SafeCast a => String -> JSIO (Maybe a)
castElementById _ = castElementById_

export %inline
htmlElementById :
     {auto sc : SafeCast t}
  -> (0 e : ElementType tag t)
  -> String
  -> JSIO (Maybe t)
htmlElementById e s = castElementById_ s

export
getElementsByClass : String -> JSIO HTMLCollection
getElementsByClass s = document >>= (`getElementsByClassName` s)

export
firstElementByClass : String -> JSIO (Maybe Element)
firstElementByClass s = do
  col <- getElementsByClass s
  readIO col 0

export
castFirstElementByClass_ : SafeCast a => String -> JSIO (Maybe a)
castFirstElementByClass_ = map (>>= safeCast) . firstElementByClass

export %inline
castFirstElementByClass :
     (0 a : Type)
  -> {auto sc : SafeCast a}
  -> String
  -> JSIO (Maybe a)
castFirstElementByClass _ = castFirstElementByClass_

export %inline
firstHtmlElementByClass :
     (0 e : ElementType tag a)
  -> {auto sc : SafeCast a}
  -> String
  -> JSIO (Maybe a)
firstHtmlElementByClass e s = castFirstElementByClass_ s

||| Tries to retrieve an element of the given type by looking
||| up its class in the DOM. Unlike `firstElementByClass`, this will throw
||| an exception in the `JSIO` monad if the element is not found
||| or can't be safely cast to the desired type.
export
getElementByClass : SafeCast t => (class : String) -> JSIO t
getElementByClass class = liftJSIO $ do
  Nothing <- castFirstElementByClass t class | Just t => pure t
  throwError $ Caught "Web.Dom.getElementByClass: Could not find an element with class \{class}"

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
  callback f = toMutationCallback $ \a,m => runJS (f a m)

||| In case of an error, the error is logged to the console and
||| the node is rejected
export
Callback NodeFilter (Node -> JSIO Bits16) where
  callback f = toNodeFilter (runJSWithDefault FILTER_REJECT . f)

export
Callback XPathNSResolver (Maybe String -> JSIO (Maybe String) ) where
  callback f = toXPathNSResolver $ map maybeToNullable
                                 . runJSWithDefault Nothing
                                 . f
                                 . nullableToMaybe
