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
castElementById : (0 a : Type) -> SafeCast a => String -> JSIO (Maybe a)
castElementById _ = map (>>= safeCast) . getElementById

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
elemCast :  (forall a . SafeCast a => JSIO a)
         -> (e : ElementType s t)
         -> JSIO t
elemCast f A          = f
elemCast f Area       = f
elemCast f Audio      = f
elemCast f Base       = f
elemCast f Blockquote = f
elemCast f Body       = f
elemCast f Br         = f
elemCast f Button     = f
elemCast f Canvas     = f
elemCast f Caption    = f
elemCast f Col        = f
elemCast f Colgroup   = f
elemCast f Data       = f
elemCast f Datalist   = f
elemCast f Del        = f
elemCast f Details    = f
elemCast f Dialog     = f
elemCast f Div        = f
elemCast f Dl         = f
elemCast f Embed      = f
elemCast f FieldSet   = f
elemCast f Form       = f
elemCast f H1         = f
elemCast f H2         = f
elemCast f H3         = f
elemCast f H4         = f
elemCast f H5         = f
elemCast f H6         = f
elemCast f HR         = f
elemCast f Html       = f
elemCast f IFrame     = f
elemCast f Ime        = f
elemCast f Input      = f
elemCast f Ins        = f
elemCast f Label      = f
elemCast f Legend     = f
elemCast f Li         = f
elemCast f Link       = f
elemCast f Map        = f
elemCast f Menu       = f
elemCast f Meta       = f
elemCast f Meter      = f
elemCast f Object     = f
elemCast f Ol         = f
elemCast f OptGroup   = f
elemCast f Option     = f
elemCast f Output     = f
elemCast f P          = f
elemCast f Param      = f
elemCast f Picture    = f
elemCast f Pre        = f
elemCast f Progress   = f
elemCast f Q          = f
elemCast f Script     = f
elemCast f Select     = f
elemCast f Slot       = f
elemCast f Source     = f
elemCast f Span       = f
elemCast f Style      = f
elemCast f Table      = f
elemCast f Tbody      = f
elemCast f Td         = f
elemCast f Template   = f
elemCast f TextArea   = f
elemCast f Tfoot      = f
elemCast f Th         = f
elemCast f Thead      = f
elemCast f Time       = f
elemCast f Title      = f
elemCast f Tr         = f
elemCast f Track      = f
elemCast f Ul         = f
elemCast f Video      = f

||| Creates a new element using the given `ElementType`'s `tag`
||| and casting the result to the corresponding HTML element type.
||| See also `newElement`.
export
createElement : {tag : _} -> (e : ElementType tag t) -> JSIO t
createElement e =
   elemCast ( castingTo #"JS.Dom..createElement [\#{tag}]"# $
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
