module JS.DOM.Raw.HtmlTypes

import Data.Maybe

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace DOMParserSupportedType
  
  public export
  data DOMParserSupportedType = TextHtml
                              | TextXml
                              | ApplicationXml
                              | ApplicationXhtmlXml
                              | ImageSvgXml

  public export
  Show DOMParserSupportedType where
    show TextHtml = "text/html"
    show TextXml = "text/xml"
    show ApplicationXml = "application/xml"
    show ApplicationXhtmlXml = "application/xhtml+xml"
    show ImageSvgXml = "image/svg+xml"

  public export
  Eq DOMParserSupportedType where
    (==) = (==) `on` show

  public export
  Ord DOMParserSupportedType where
    compare = compare `on` show

  public export
  read : String -> Maybe DOMParserSupportedType
  read "text/html" = Just TextHtml
  read "text/xml" = Just TextXml
  read "application/xml" = Just ApplicationXml
  read "application/xhtml+xml" = Just ApplicationXhtmlXml
  read "image/svg+xml" = Just ImageSvgXml
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (DOMParserSupportedType.read s)}
             -> DOMParserSupportedType
  fromString s = fromJust $ read s

namespace DocumentReadyState
  
  public export
  data DocumentReadyState = Loading | Interactive | Complete

  public export
  Show DocumentReadyState where
    show Loading = "loading"
    show Interactive = "interactive"
    show Complete = "complete"

  public export
  Eq DocumentReadyState where
    (==) = (==) `on` show

  public export
  Ord DocumentReadyState where
    compare = compare `on` show

  public export
  read : String -> Maybe DocumentReadyState
  read "loading" = Just Loading
  read "interactive" = Just Interactive
  read "complete" = Just Complete
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (DocumentReadyState.read s)}
             -> DocumentReadyState
  fromString s = fromJust $ read s

namespace CanPlayTypeResult
  
  public export
  data CanPlayTypeResult = Empty | Maybe | Probably

  public export
  Show CanPlayTypeResult where
    show Empty = ""
    show Maybe = "maybe"
    show Probably = "probably"

  public export
  Eq CanPlayTypeResult where
    (==) = (==) `on` show

  public export
  Ord CanPlayTypeResult where
    compare = compare `on` show

  public export
  read : String -> Maybe CanPlayTypeResult
  read "" = Just Empty
  read "maybe" = Just Maybe
  read "probably" = Just Probably
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (CanPlayTypeResult.read s)}
             -> CanPlayTypeResult
  fromString s = fromJust $ read s

namespace ScrollRestoration
  
  public export
  data ScrollRestoration = Auto | Manual

  public export
  Show ScrollRestoration where
    show Auto = "auto"
    show Manual = "manual"

  public export
  Eq ScrollRestoration where
    (==) = (==) `on` show

  public export
  Ord ScrollRestoration where
    compare = compare `on` show

  public export
  read : String -> Maybe ScrollRestoration
  read "auto" = Just Auto
  read "manual" = Just Manual
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (ScrollRestoration.read s)}
             -> ScrollRestoration
  fromString s = fromJust $ read s

namespace ImageOrientation
  
  public export
  data ImageOrientation = None | FlipY

  public export
  Show ImageOrientation where
    show None = "none"
    show FlipY = "flipY"

  public export
  Eq ImageOrientation where
    (==) = (==) `on` show

  public export
  Ord ImageOrientation where
    compare = compare `on` show

  public export
  read : String -> Maybe ImageOrientation
  read "none" = Just None
  read "flipY" = Just FlipY
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (ImageOrientation.read s)}
             -> ImageOrientation
  fromString s = fromJust $ read s

namespace PremultiplyAlpha
  
  public export
  data PremultiplyAlpha = None | Premultiply | Default

  public export
  Show PremultiplyAlpha where
    show None = "none"
    show Premultiply = "premultiply"
    show Default = "default"

  public export
  Eq PremultiplyAlpha where
    (==) = (==) `on` show

  public export
  Ord PremultiplyAlpha where
    compare = compare `on` show

  public export
  read : String -> Maybe PremultiplyAlpha
  read "none" = Just None
  read "premultiply" = Just Premultiply
  read "default" = Just Default
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (PremultiplyAlpha.read s)}
             -> PremultiplyAlpha
  fromString s = fromJust $ read s

namespace ColorSpaceConversion
  
  public export
  data ColorSpaceConversion = None | Default

  public export
  Show ColorSpaceConversion where
    show None = "none"
    show Default = "default"

  public export
  Eq ColorSpaceConversion where
    (==) = (==) `on` show

  public export
  Ord ColorSpaceConversion where
    compare = compare `on` show

  public export
  read : String -> Maybe ColorSpaceConversion
  read "none" = Just None
  read "default" = Just Default
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (ColorSpaceConversion.read s)}
             -> ColorSpaceConversion
  fromString s = fromJust $ read s

namespace ResizeQuality
  
  public export
  data ResizeQuality = Pixelated | Low | Medium | High

  public export
  Show ResizeQuality where
    show Pixelated = "pixelated"
    show Low = "low"
    show Medium = "medium"
    show High = "high"

  public export
  Eq ResizeQuality where
    (==) = (==) `on` show

  public export
  Ord ResizeQuality where
    compare = compare `on` show

  public export
  read : String -> Maybe ResizeQuality
  read "pixelated" = Just Pixelated
  read "low" = Just Low
  read "medium" = Just Medium
  read "high" = Just High
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (ResizeQuality.read s)}
             -> ResizeQuality
  fromString s = fromJust $ read s

namespace CanvasFillRule
  
  public export
  data CanvasFillRule = Nonzero | Evenodd

  public export
  Show CanvasFillRule where
    show Nonzero = "nonzero"
    show Evenodd = "evenodd"

  public export
  Eq CanvasFillRule where
    (==) = (==) `on` show

  public export
  Ord CanvasFillRule where
    compare = compare `on` show

  public export
  read : String -> Maybe CanvasFillRule
  read "nonzero" = Just Nonzero
  read "evenodd" = Just Evenodd
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (CanvasFillRule.read s)}
             -> CanvasFillRule
  fromString s = fromJust $ read s

namespace ImageSmoothingQuality
  
  public export
  data ImageSmoothingQuality = Low | Medium | High

  public export
  Show ImageSmoothingQuality where
    show Low = "low"
    show Medium = "medium"
    show High = "high"

  public export
  Eq ImageSmoothingQuality where
    (==) = (==) `on` show

  public export
  Ord ImageSmoothingQuality where
    compare = compare `on` show

  public export
  read : String -> Maybe ImageSmoothingQuality
  read "low" = Just Low
  read "medium" = Just Medium
  read "high" = Just High
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (ImageSmoothingQuality.read s)}
             -> ImageSmoothingQuality
  fromString s = fromJust $ read s

namespace CanvasLineCap
  
  public export
  data CanvasLineCap = Butt | Round | Square

  public export
  Show CanvasLineCap where
    show Butt = "butt"
    show Round = "round"
    show Square = "square"

  public export
  Eq CanvasLineCap where
    (==) = (==) `on` show

  public export
  Ord CanvasLineCap where
    compare = compare `on` show

  public export
  read : String -> Maybe CanvasLineCap
  read "butt" = Just Butt
  read "round" = Just Round
  read "square" = Just Square
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (CanvasLineCap.read s)}
             -> CanvasLineCap
  fromString s = fromJust $ read s

namespace CanvasLineJoin
  
  public export
  data CanvasLineJoin = Round | Bevel | Miter

  public export
  Show CanvasLineJoin where
    show Round = "round"
    show Bevel = "bevel"
    show Miter = "miter"

  public export
  Eq CanvasLineJoin where
    (==) = (==) `on` show

  public export
  Ord CanvasLineJoin where
    compare = compare `on` show

  public export
  read : String -> Maybe CanvasLineJoin
  read "round" = Just Round
  read "bevel" = Just Bevel
  read "miter" = Just Miter
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (CanvasLineJoin.read s)}
             -> CanvasLineJoin
  fromString s = fromJust $ read s

namespace CanvasTextAlign
  
  public export
  data CanvasTextAlign = Start | End | Left | Right | Center

  public export
  Show CanvasTextAlign where
    show Start = "start"
    show End = "end"
    show Left = "left"
    show Right = "right"
    show Center = "center"

  public export
  Eq CanvasTextAlign where
    (==) = (==) `on` show

  public export
  Ord CanvasTextAlign where
    compare = compare `on` show

  public export
  read : String -> Maybe CanvasTextAlign
  read "start" = Just Start
  read "end" = Just End
  read "left" = Just Left
  read "right" = Just Right
  read "center" = Just Center
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (CanvasTextAlign.read s)}
             -> CanvasTextAlign
  fromString s = fromJust $ read s

namespace CanvasTextBaseline
  
  public export
  data CanvasTextBaseline = Top
                          | Hanging
                          | Middle
                          | Alphabetic
                          | Ideographic
                          | Bottom

  public export
  Show CanvasTextBaseline where
    show Top = "top"
    show Hanging = "hanging"
    show Middle = "middle"
    show Alphabetic = "alphabetic"
    show Ideographic = "ideographic"
    show Bottom = "bottom"

  public export
  Eq CanvasTextBaseline where
    (==) = (==) `on` show

  public export
  Ord CanvasTextBaseline where
    compare = compare `on` show

  public export
  read : String -> Maybe CanvasTextBaseline
  read "top" = Just Top
  read "hanging" = Just Hanging
  read "middle" = Just Middle
  read "alphabetic" = Just Alphabetic
  read "ideographic" = Just Ideographic
  read "bottom" = Just Bottom
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (CanvasTextBaseline.read s)}
             -> CanvasTextBaseline
  fromString s = fromJust $ read s

namespace CanvasDirection
  
  public export
  data CanvasDirection = Ltr | Rtl | Inherit

  public export
  Show CanvasDirection where
    show Ltr = "ltr"
    show Rtl = "rtl"
    show Inherit = "inherit"

  public export
  Eq CanvasDirection where
    (==) = (==) `on` show

  public export
  Ord CanvasDirection where
    compare = compare `on` show

  public export
  read : String -> Maybe CanvasDirection
  read "ltr" = Just Ltr
  read "rtl" = Just Rtl
  read "inherit" = Just Inherit
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (CanvasDirection.read s)}
             -> CanvasDirection
  fromString s = fromJust $ read s

namespace OffscreenRenderingContextId
  
  public export
  data OffscreenRenderingContextId = TwoD | Bitmaprenderer | Webgl | Webgl2

  public export
  Show OffscreenRenderingContextId where
    show TwoD = "2d"
    show Bitmaprenderer = "bitmaprenderer"
    show Webgl = "webgl"
    show Webgl2 = "webgl2"

  public export
  Eq OffscreenRenderingContextId where
    (==) = (==) `on` show

  public export
  Ord OffscreenRenderingContextId where
    compare = compare `on` show

  public export
  read : String -> Maybe OffscreenRenderingContextId
  read "2d" = Just TwoD
  read "bitmaprenderer" = Just Bitmaprenderer
  read "webgl" = Just Webgl
  read "webgl2" = Just Webgl2
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (OffscreenRenderingContextId.read s)}
             -> OffscreenRenderingContextId
  fromString s = fromJust $ read s

namespace TextTrackMode
  
  public export
  data TextTrackMode = Disabled | Hidden | Showing

  public export
  Show TextTrackMode where
    show Disabled = "disabled"
    show Hidden = "hidden"
    show Showing = "showing"

  public export
  Eq TextTrackMode where
    (==) = (==) `on` show

  public export
  Ord TextTrackMode where
    compare = compare `on` show

  public export
  read : String -> Maybe TextTrackMode
  read "disabled" = Just Disabled
  read "hidden" = Just Hidden
  read "showing" = Just Showing
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (TextTrackMode.read s)}
             -> TextTrackMode
  fromString s = fromJust $ read s

namespace TextTrackKind
  
  public export
  data TextTrackKind = Subtitles | Captions | Descriptions | Chapters | Metadata

  public export
  Show TextTrackKind where
    show Subtitles = "subtitles"
    show Captions = "captions"
    show Descriptions = "descriptions"
    show Chapters = "chapters"
    show Metadata = "metadata"

  public export
  Eq TextTrackKind where
    (==) = (==) `on` show

  public export
  Ord TextTrackKind where
    compare = compare `on` show

  public export
  read : String -> Maybe TextTrackKind
  read "subtitles" = Just Subtitles
  read "captions" = Just Captions
  read "descriptions" = Just Descriptions
  read "chapters" = Just Chapters
  read "metadata" = Just Metadata
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (TextTrackKind.read s)}
             -> TextTrackKind
  fromString s = fromJust $ read s

namespace BinaryType
  
  public export
  data BinaryType = Blob | Arraybuffer

  public export
  Show BinaryType where
    show Blob = "blob"
    show Arraybuffer = "arraybuffer"

  public export
  Eq BinaryType where
    (==) = (==) `on` show

  public export
  Ord BinaryType where
    compare = compare `on` show

  public export
  read : String -> Maybe BinaryType
  read "blob" = Just Blob
  read "arraybuffer" = Just Arraybuffer
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (BinaryType.read s)}
             -> BinaryType
  fromString s = fromJust $ read s

namespace WorkerType
  
  public export
  data WorkerType = Classic | Module

  public export
  Show WorkerType where
    show Classic = "classic"
    show Module = "module"

  public export
  Eq WorkerType where
    (==) = (==) `on` show

  public export
  Ord WorkerType where
    compare = compare `on` show

  public export
  read : String -> Maybe WorkerType
  read "classic" = Just Classic
  read "module" = Just Module
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (WorkerType.read s)}
             -> WorkerType
  fromString s = fromJust $ read s

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export
data AudioTrack : Type where [external]

export
data AudioTrackList : Type where [external]

export
data BarProp : Type where [external]

export
data BeforeUnloadEvent : Type where [external]

export
data BroadcastChannel : Type where [external]

export
data CanvasGradient : Type where [external]

export
data CanvasPattern : Type where [external]

export
data CanvasRenderingContext2D : Type where [external]

export
data CloseEvent : Type where [external]

export
data CustomElementRegistry : Type where [external]

export
data DOMParser : Type where [external]

export
data DOMStringList : Type where [external]

export
data DOMStringMap : Type where [external]

export
data DataTransfer : Type where [external]

export
data DataTransferItem : Type where [external]

export
data DataTransferItemList : Type where [external]

export
data DedicatedWorkerGlobalScope : Type where [external]

export
data DragEvent : Type where [external]

export
data ElementInternals : Type where [external]

export
data ErrorEvent : Type where [external]

export
data EventSource : Type where [external]

export
data External : Type where [external]

export
data FormDataEvent : Type where [external]

export
data HTMLAllCollection : Type where [external]

export
data HTMLAnchorElement : Type where [external]

export
data HTMLAreaElement : Type where [external]

export
data HTMLAudioElement : Type where [external]

export
data HTMLBRElement : Type where [external]

export
data HTMLBaseElement : Type where [external]

export
data HTMLBodyElement : Type where [external]

export
data HTMLButtonElement : Type where [external]

export
data HTMLCanvasElement : Type where [external]

export
data HTMLDListElement : Type where [external]

export
data HTMLDataElement : Type where [external]

export
data HTMLDataListElement : Type where [external]

export
data HTMLDetailsElement : Type where [external]

export
data HTMLDialogElement : Type where [external]

export
data HTMLDirectoryElement : Type where [external]

export
data HTMLDivElement : Type where [external]

export
data HTMLElement : Type where [external]

export
data HTMLEmbedElement : Type where [external]

export
data HTMLFieldSetElement : Type where [external]

export
data HTMLFontElement : Type where [external]

export
data HTMLFormControlsCollection : Type where [external]

export
data HTMLFormElement : Type where [external]

export
data HTMLFrameElement : Type where [external]

export
data HTMLFrameSetElement : Type where [external]

export
data HTMLHRElement : Type where [external]

export
data HTMLHeadElement : Type where [external]

export
data HTMLHeadingElement : Type where [external]

export
data HTMLHtmlElement : Type where [external]

export
data HTMLIFrameElement : Type where [external]

export
data HTMLImageElement : Type where [external]

export
data HTMLInputElement : Type where [external]

export
data HTMLLIElement : Type where [external]

export
data HTMLLabelElement : Type where [external]

export
data HTMLLegendElement : Type where [external]

export
data HTMLLinkElement : Type where [external]

export
data HTMLMapElement : Type where [external]

export
data HTMLMarqueeElement : Type where [external]

export
data HTMLMediaElement : Type where [external]

export
data HTMLMenuElement : Type where [external]

export
data HTMLMetaElement : Type where [external]

export
data HTMLMeterElement : Type where [external]

export
data HTMLModElement : Type where [external]

export
data HTMLOListElement : Type where [external]

export
data HTMLObjectElement : Type where [external]

export
data HTMLOptGroupElement : Type where [external]

export
data HTMLOptionElement : Type where [external]

export
data HTMLOptionsCollection : Type where [external]

export
data HTMLOutputElement : Type where [external]

export
data HTMLParagraphElement : Type where [external]

export
data HTMLParamElement : Type where [external]

export
data HTMLPictureElement : Type where [external]

export
data HTMLPreElement : Type where [external]

export
data HTMLProgressElement : Type where [external]

export
data HTMLQuoteElement : Type where [external]

export
data HTMLScriptElement : Type where [external]

export
data HTMLSelectElement : Type where [external]

export
data HTMLSlotElement : Type where [external]

export
data HTMLSourceElement : Type where [external]

export
data HTMLSpanElement : Type where [external]

export
data HTMLStyleElement : Type where [external]

export
data HTMLTableCaptionElement : Type where [external]

export
data HTMLTableCellElement : Type where [external]

export
data HTMLTableColElement : Type where [external]

export
data HTMLTableElement : Type where [external]

export
data HTMLTableRowElement : Type where [external]

export
data HTMLTableSectionElement : Type where [external]

export
data HTMLTemplateElement : Type where [external]

export
data HTMLTextAreaElement : Type where [external]

export
data HTMLTimeElement : Type where [external]

export
data HTMLTitleElement : Type where [external]

export
data HTMLTrackElement : Type where [external]

export
data HTMLUListElement : Type where [external]

export
data HTMLUnknownElement : Type where [external]

export
data HTMLVideoElement : Type where [external]

export
data HashChangeEvent : Type where [external]

export
data History : Type where [external]

export
data ImageBitmap : Type where [external]

export
data ImageBitmapRenderingContext : Type where [external]

export
data ImageData : Type where [external]

export
data Location : Type where [external]

export
data MediaError : Type where [external]

export
data MessageChannel : Type where [external]

export
data MessageEvent : Type where [external]

export
data MessagePort : Type where [external]

export
data MimeType : Type where [external]

export
data MimeType : Type where [external]

export
data MimeTypeArray : Type where [external]

export
data Navigator : Type where [external]

export
data OffscreenCanvas : Type where [external]

export
data OffscreenCanvasRenderingContext2D : Type where [external]

export
data PageTransitionEvent : Type where [external]

export
data Path2D : Type where [external]

export
data Plugin : Type where [external]

export
data PluginArray : Type where [external]

export
data PopStateEvent : Type where [external]

export
data PromiseRejectionEvent : Type where [external]

export
data RadioNodeList : Type where [external]

export
data SharedWorker : Type where [external]

export
data SharedWorkerGlobalScope : Type where [external]

export
data Storage : Type where [external]

export
data StorageEvent : Type where [external]

export
data SubmitEvent : Type where [external]

export
data TextMetrics : Type where [external]

export
data TextTrack : Type where [external]

export
data TextTrackCue : Type where [external]

export
data TextTrackCueList : Type where [external]

export
data TextTrackList : Type where [external]

export
data TimeRanges : Type where [external]

export
data TrackEvent : Type where [external]

export
data ValidityState : Type where [external]

export
data VideoTrack : Type where [external]

export
data VideoTrackList : Type where [external]

export
data WebSocket : Type where [external]

export
data Window : Type where [external]

export
data Worker : Type where [external]

export
data WorkerGlobalScope : Type where [external]

export
data WorkerLocation : Type where [external]

export
data Worklet : Type where [external]

export
data WorkletGlobalScope : Type where [external]

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export
data ARIAMixin : Type where [external]

export
data AbstractWorker : Type where [external]

export
data CanvasCompositing : Type where [external]

export
data CanvasDrawImage : Type where [external]

export
data CanvasDrawPath : Type where [external]

export
data CanvasFillStrokeStyles : Type where [external]

export
data CanvasFilters : Type where [external]

export
data CanvasImageData : Type where [external]

export
data CanvasImageSmoothing : Type where [external]

export
data CanvasPath : Type where [external]

export
data CanvasPathDrawingStyles : Type where [external]

export
data CanvasRect : Type where [external]

export
data CanvasShadowStyles : Type where [external]

export
data CanvasState : Type where [external]

export
data CanvasText : Type where [external]

export
data CanvasTextDrawingStyles : Type where [external]

export
data CanvasTransform : Type where [external]

export
data CanvasUserInterface : Type where [external]

export
data DocumentAndElementEventHandlers : Type where [external]

export
data ElementContentEditable : Type where [external]

export
data GlobalEventHandlers : Type where [external]

export
data HTMLHyperlinkElementUtils : Type where [external]

export
data HTMLOrSVGElement : Type where [external]

export
data NavigatorConcurrentHardware : Type where [external]

export
data NavigatorContentUtils : Type where [external]

export
data NavigatorCookies : Type where [external]

export
data NavigatorID : Type where [external]

export
data NavigatorLanguage : Type where [external]

export
data NavigatorOnLine : Type where [external]

export
data NavigatorPlugins : Type where [external]

export
data WindowEventHandlers : Type where [external]

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export
data AssignedNodesOptions : Type where [external]

export
data CanvasRenderingContext2DSettings : Type where [external]

export
data CloseEventInit : Type where [external]

export
data DragEventInit : Type where [external]

export
data ElementDefinitionOptions : Type where [external]

export
data ErrorEventInit : Type where [external]

export
data EventSourceInit : Type where [external]

export
data FormDataEventInit : Type where [external]

export
data HashChangeEventInit : Type where [external]

export
data ImageBitmapOptions : Type where [external]

export
data ImageBitmapRenderingContextSettings : Type where [external]

export
data ImageEncodeOptions : Type where [external]

export
data MessageEventInit : Type where [external]

export
data PageTransitionEventInit : Type where [external]

export
data PopStateEventInit : Type where [external]

export
data PostMessageOptions : Type where [external]

export
data PromiseRejectionEventInit : Type where [external]

export
data StorageEventInit : Type where [external]

export
data SubmitEventInit : Type where [external]

export
data TrackEventInit : Type where [external]

export
data ValidityStateFlags : Type where [external]

export
data WindowPostMessageOptions : Type where [external]

export
data WorkerOptions : Type where [external]

export
data WorkletOptions : Type where [external]