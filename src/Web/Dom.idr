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
  Anchor : Type
  Anchor = HTMLAnchorElement

  public export
  Area : Type
  Area = HTMLAreaElement

  public export
  Audio : Type
  Audio = HTMLAudioElement

  public export
  BR : Type
  BR = HTMLBRElement

  public export
  Base : Type
  Base = HTMLBaseElement

  public export
  Body : Type
  Body = HTMLBodyElement

  public export
  Button : Type
  Button = HTMLButtonElement

  public export
  Canvas : Type
  Canvas = HTMLCanvasElement

  public export
  DList : Type
  DList = HTMLDListElement

  public export
  Data : Type
  Data = HTMLDataElement

  public export
  DataList : Type
  DataList = HTMLDataListElement

  public export
  Details : Type
  Details = HTMLDetailsElement

  public export
  Dialog : Type
  Dialog = HTMLDialogElement

  public export
  Div : Type
  Div = HTMLDivElement

  public export
  Embed : Type
  Embed = HTMLEmbedElement

  public export
  FieldSet : Type
  FieldSet = HTMLFieldSetElement

  public export
  Form : Type
  Form = HTMLFormElement

  public export
  HR : Type
  HR = HTMLHRElement

  public export
  Heading : Type
  Heading = HTMLHeadingElement

  public export
  Html : Type
  Html = HTMLHtmlElement

  public export
  IFrame : Type
  IFrame = HTMLIFrameElement

  public export
  Image : Type
  Image = HTMLImageElement

  public export
  Input : Type
  Input = HTMLInputElement

  public export
  LI : Type
  LI = HTMLLIElement

  public export
  Label : Type
  Label = HTMLLabelElement

  public export
  Legend : Type
  Legend = HTMLLegendElement

  public export
  Link : Type
  Link = HTMLLinkElement

  public export
  Map : Type
  Map = HTMLMapElement

  public export
  Menu : Type
  Menu = HTMLMenuElement

  public export
  Meta : Type
  Meta = HTMLMetaElement

  public export
  Meter : Type
  Meter = HTMLMeterElement

  public export
  Mod : Type
  Mod = HTMLModElement

  public export
  Mod : Type
  Mod = HTMLModElement

  public export
  OList : Type
  OList = HTMLOListElement

  public export
  Object : Type
  Object = HTMLObjectElement

  public export
  OptGroup : Type
  OptGroup = HTMLOptGroupElement

  public export
  Option : Type
  Option = HTMLOptionElement

  public export
  Output : Type
  Output = HTMLOutputElement

  public export
  Paragraph : Type
  Paragraph = HTMLParagraphElement

  public export
  Param : Type
  Param = HTMLParamElement

  public export
  Picture : Type
  Picture = HTMLPictureElement

  public export
  Pre : Type
  Pre = HTMLPreElement

  public export
  Progress : Type
  Progress = HTMLProgressElement

  public export
  Quote : Type
  Quote = HTMLQuoteElement

  public export
  Script : Type
  Script = HTMLScriptElement

  public export
  Select : Type
  Select = HTMLSelectElement

  public export
  Slot : Type
  Slot = HTMLSlotElement

  public export
  Source : Type
  Source = HTMLSourceElement

  public export
  Span : Type
  Span = HTMLSpanElement

  public export
  Style : Type
  Style = HTMLStyleElement

  public export
  TableCaption : Type
  TableCaption = HTMLTableCaptionElement

  public export
  TableCell : Type
  TableCell = HTMLTableCellElement

  public export
  TableCol : Type
  TableCol = HTMLTableColElement

  public export
  Table : Type
  Table = HTMLTableElement

  public export
  TableRow : Type
  TableRow = HTMLTableRowElement

  public export
  TableSection : Type
  TableSection = HTMLTableSectionElement

  public export
  Template : Type
  Template = HTMLTemplateElement

  public export
  TextArea : Type
  TextArea = HTMLTextAreaElement

  public export
  Time : Type
  Time = HTMLTimeElement

  public export
  Title : Type
  Title = HTMLTitleElement

  public export
  Track : Type
  Track = HTMLTrackElement

  public export
  UList : Type
  UList = HTMLUListElement

  public export
  Video : Type
  Video = HTMLVideoElement

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
  A          : ElementType "a" Anchor
  Area       : ElementType "area" Area
  Audio      : ElementType "audio" Audio
  Base       : ElementType "base" Base
  Blockquote : ElementType "blockquote" Quote
  Body       : ElementType "body" Alias.Body
  Br         : ElementType "br" BR
  Button     : ElementType "button" Button
  Canvas     : ElementType "canvas" Canvas
  Caption    : ElementType "caption" TableCaption
  Col        : ElementType "col" TableCol
  Colgroup   : ElementType "colgroup" TableCol
  Data       : ElementType "data" Data
  Datalist   : ElementType "datalist" DataList
  Del        : ElementType "del" Mod
  Details    : ElementType "details" Details
  Dialog     : ElementType "dialog" Dialog
  Div        : ElementType "div" Div
  Dl         : ElementType "dl" DList
  Embed      : ElementType "embed" Embed
  FieldSet   : ElementType "fieldset" FieldSet
  Form       : ElementType "form" Form
  H1         : ElementType "h1" Heading
  H2         : ElementType "h2" Heading
  H3         : ElementType "h3" Heading
  H4         : ElementType "h4" Heading
  H5         : ElementType "h5" Heading
  H6         : ElementType "h6" Heading
  HR         : ElementType "hr" HR
  Html       : ElementType "html" Html
  IFrame     : ElementType "iframe" IFrame
  Ime        : ElementType "img" Image
  Input      : ElementType "input" Input
  Ins        : ElementType "ins" Mod
  Label      : ElementType "label" Label
  Legend     : ElementType "legend" Legend
  Li         : ElementType "li" LI
  Link       : ElementType "link" Link
  Map        : ElementType "map" Map
  Menu       : ElementType "menu" Menu
  Meta       : ElementType "meta" Meta
  Meter      : ElementType "meter" Meter
  Object     : ElementType "object" Alias.Object
  Ol         : ElementType "ol" OList
  OptGroup   : ElementType "optgroup" OptGroup
  Option     : ElementType "option" Option
  Output     : ElementType "output" Output
  P          : ElementType "p" Paragraph
  Param      : ElementType "param" Param
  Picture    : ElementType "picture" Picture
  Pre        : ElementType "pre" Pre
  Progress   : ElementType "progress" Progress
  Q          : ElementType "q" Quote
  Script     : ElementType "script" Script
  Select     : ElementType "Select" Select
  Slot       : ElementType "slot" Slot
  Source     : ElementType "source" Source
  Span       : ElementType "span" Span
  Style      : ElementType "style" Style
  Table      : ElementType "table" Table
  Tbody      : ElementType "tbody" TableSection
  Td         : ElementType "td" TableCell
  Template   : ElementType "template" Template
  TextArea   : ElementType "textarea" TextArea
  Tfoot      : ElementType "tfoot" TableSection
  Th         : ElementType "th" TableCell
  Thead      : ElementType "thead" TableSection
  Time       : ElementType "time" Time
  Title      : ElementType "title" Title
  Tr         : ElementType "tr" TableRow
  Track      : ElementType "track" Track
  Ul         : ElementType "ul" UList
  Video      : ElementType "video" Video

||| Extracts the `tag` String from a known `ElementType`.
public export
elementTag : {tag : _} -> (0 _ : ElementType tag t) -> String
elementTag _ = tag

||| Proof, that each element type has an instance of `SafeCast`.
export
elemCast :  (0 f : Type -> Type)
         -> ({0 a : Type} -> SafeCast a => f a)
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
                       for_ mods $ \m => m res
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
