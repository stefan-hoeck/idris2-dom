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
--          Aliases
--------------------------------------------------------------------------------

namespace Alias
  public export
  0 Anchor : Type
  Anchor = HTMLAnchorElement

  public export
  0 Area : Type
  Area = HTMLAreaElement

  public export
  0 Audio : Type
  Audio = HTMLAudioElement

  public export
  0 BR : Type
  BR = HTMLBRElement

  public export
  0 Base : Type
  Base = HTMLBaseElement

  public export
  0 Body : Type
  Body = HTMLBodyElement

  public export
  0 Button : Type
  Button = HTMLButtonElement

  public export
  0 Canvas : Type
  Canvas = HTMLCanvasElement

  public export
  0 DList : Type
  DList = HTMLDListElement

  public export
  0 Data : Type
  Data = HTMLDataElement

  public export
  0 DataList : Type
  DataList = HTMLDataListElement

  public export
  0 Details : Type
  Details = HTMLDetailsElement

  public export
  0 Dialog : Type
  Dialog = HTMLDialogElement

  public export
  0 Div : Type
  Div = HTMLDivElement

  public export
  0 Embed : Type
  Embed = HTMLEmbedElement

  public export
  0 FieldSet : Type
  FieldSet = HTMLFieldSetElement

  public export
  0 Form : Type
  Form = HTMLFormElement

  public export
  0 HR : Type
  HR = HTMLHRElement

  public export
  0 Heading : Type
  Heading = HTMLHeadingElement

  public export
  0 Html : Type
  Html = HTMLHtmlElement

  public export
  0 IFrame : Type
  IFrame = HTMLIFrameElement

  public export
  0 Image : Type
  Image = HTMLImageElement

  public export
  0 Input : Type
  Input = HTMLInputElement

  public export
  0 LI : Type
  LI = HTMLLIElement

  public export
  0 Label : Type
  Label = HTMLLabelElement

  public export
  0 Legend : Type
  Legend = HTMLLegendElement

  public export
  0 Link : Type
  Link = HTMLLinkElement

  public export
  0 Map : Type
  Map = HTMLMapElement

  public export
  0 Menu : Type
  Menu = HTMLMenuElement

  public export
  0 Meta : Type
  Meta = HTMLMetaElement

  public export
  0 Meter : Type
  Meter = HTMLMeterElement

  public export
  0 Mod : Type
  Mod = HTMLModElement

  public export
  0 OList : Type
  OList = HTMLOListElement

  public export
  0 Object : Type
  Object = HTMLObjectElement

  public export
  0 OptGroup : Type
  OptGroup = HTMLOptGroupElement

  public export
  0 Option : Type
  Option = HTMLOptionElement

  public export
  0 Output : Type
  Output = HTMLOutputElement

  public export
  0 Paragraph : Type
  Paragraph = HTMLParagraphElement

  public export
  0 Param : Type
  Param = HTMLParamElement

  public export
  0 Picture : Type
  Picture = HTMLPictureElement

  public export
  0 Pre : Type
  Pre = HTMLPreElement

  public export
  0 Progress : Type
  Progress = HTMLProgressElement

  public export
  0 Quote : Type
  Quote = HTMLQuoteElement

  public export
  0 Script : Type
  Script = HTMLScriptElement

  public export
  0 Select : Type
  Select = HTMLSelectElement

  public export
  0 Slot : Type
  Slot = HTMLSlotElement

  public export
  0 Source : Type
  Source = HTMLSourceElement

  public export
  0 Span : Type
  Span = HTMLSpanElement

  public export
  0 Style : Type
  Style = HTMLStyleElement

  public export
  0 TableCaption : Type
  TableCaption = HTMLTableCaptionElement

  public export
  0 TableCell : Type
  TableCell = HTMLTableCellElement

  public export
  0 TableCol : Type
  TableCol = HTMLTableColElement

  public export
  0 Table : Type
  Table = HTMLTableElement

  public export
  0 TableRow : Type
  TableRow = HTMLTableRowElement

  public export
  0 TableSection : Type
  TableSection = HTMLTableSectionElement

  public export
  0 Template : Type
  Template = HTMLTemplateElement

  public export
  0 TextArea : Type
  TextArea = HTMLTextAreaElement

  public export
  0 Time : Type
  Time = HTMLTimeElement

  public export
  0 Title : Type
  Title = HTMLTitleElement

  public export
  0 Track : Type
  Track = HTMLTrackElement

  public export
  0 UList : Type
  UList = HTMLUListElement

  public export
  0 Video : Type
  Video = HTMLVideoElement

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
newElement e mods = do
  res <- createElement e
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
Callback MutationCallback
  (Array MutationRecord -> MutationObserver -> JSIO ()) where
  callback f = toMutationCallback $ \a,m => runJS (f a m)

||| In case of an error, the error is logged to the console and
||| the node is rejected
export
Callback NodeFilter (Node -> JSIO Bits16) where
  callback f = toNodeFilter (runJSWithDefault FILTER_REJECT . f)

export
Callback XPathNSResolver (Maybe String -> JSIO (Maybe String) ) where
  callback f =
    toXPathNSResolver $
        map maybeToNullable
      . runJSWithDefault Nothing
      . f
      . nullableToMaybe
