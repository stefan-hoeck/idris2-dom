module Web.Internal.HtmlTypes
 
import JS

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

namespace SelectionMode
  
  public export
  data SelectionMode = Select | Start | End | Preserve

  public export
  Show SelectionMode where
    show Select = "select"
    show Start = "start"
    show End = "end"
    show Preserve = "preserve"

  public export
  Eq SelectionMode where
    (==) = (==) `on` show

  public export
  Ord SelectionMode where
    compare = compare `on` show

  public export
  read : String -> Maybe SelectionMode
  read "select" = Just Select
  read "start" = Just Start
  read "end" = Just End
  read "preserve" = Just Preserve
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (SelectionMode.read s)}
             -> SelectionMode
  fromString s = fromJust $ read s

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data AudioTrack : Type where [external]

export
SafeCast AudioTrack where
  safeCast = unsafeCastOnPrototypeName "AudioTrack"

export data AudioTrackList : Type where [external]

export
SafeCast AudioTrackList where
  safeCast = unsafeCastOnPrototypeName "AudioTrackList"

export data BarProp : Type where [external]

export
SafeCast BarProp where
  safeCast = unsafeCastOnPrototypeName "BarProp"

export data BeforeUnloadEvent : Type where [external]

export
SafeCast BeforeUnloadEvent where
  safeCast = unsafeCastOnPrototypeName "BeforeUnloadEvent"

export data BroadcastChannel : Type where [external]

export
SafeCast BroadcastChannel where
  safeCast = unsafeCastOnPrototypeName "BroadcastChannel"

export data CanvasGradient : Type where [external]

export
SafeCast CanvasGradient where
  safeCast = unsafeCastOnPrototypeName "CanvasGradient"

export data CanvasPattern : Type where [external]

export
SafeCast CanvasPattern where
  safeCast = unsafeCastOnPrototypeName "CanvasPattern"

export data CanvasRenderingContext2D : Type where [external]

export
SafeCast CanvasRenderingContext2D where
  safeCast = unsafeCastOnPrototypeName "CanvasRenderingContext2D"

export data CloseEvent : Type where [external]

export
SafeCast CloseEvent where
  safeCast = unsafeCastOnPrototypeName "CloseEvent"

export data CustomElementRegistry : Type where [external]

export
SafeCast CustomElementRegistry where
  safeCast = unsafeCastOnPrototypeName "CustomElementRegistry"

export data DOMParser : Type where [external]

export
SafeCast DOMParser where
  safeCast = unsafeCastOnPrototypeName "DOMParser"

export data DOMStringList : Type where [external]

export
SafeCast DOMStringList where
  safeCast = unsafeCastOnPrototypeName "DOMStringList"

export data DOMStringMap : Type where [external]

export
SafeCast DOMStringMap where
  safeCast = unsafeCastOnPrototypeName "DOMStringMap"

export data DataTransfer : Type where [external]

export
SafeCast DataTransfer where
  safeCast = unsafeCastOnPrototypeName "DataTransfer"

export data DataTransferItem : Type where [external]

export
SafeCast DataTransferItem where
  safeCast = unsafeCastOnPrototypeName "DataTransferItem"

export data DataTransferItemList : Type where [external]

export
SafeCast DataTransferItemList where
  safeCast = unsafeCastOnPrototypeName "DataTransferItemList"

export data DedicatedWorkerGlobalScope : Type where [external]

export
SafeCast DedicatedWorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "DedicatedWorkerGlobalScope"

export data DragEvent : Type where [external]

export
SafeCast DragEvent where
  safeCast = unsafeCastOnPrototypeName "DragEvent"

export data ElementInternals : Type where [external]

export
SafeCast ElementInternals where
  safeCast = unsafeCastOnPrototypeName "ElementInternals"

export data ErrorEvent : Type where [external]

export
SafeCast ErrorEvent where
  safeCast = unsafeCastOnPrototypeName "ErrorEvent"

export data EventSource : Type where [external]

export
SafeCast EventSource where
  safeCast = unsafeCastOnPrototypeName "EventSource"

export data External : Type where [external]

export
SafeCast External where
  safeCast = unsafeCastOnPrototypeName "External"

export data FormDataEvent : Type where [external]

export
SafeCast FormDataEvent where
  safeCast = unsafeCastOnPrototypeName "FormDataEvent"

export data HTMLAllCollection : Type where [external]

export
SafeCast HTMLAllCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLAllCollection"

export data HTMLAnchorElement : Type where [external]

export
SafeCast HTMLAnchorElement where
  safeCast = unsafeCastOnPrototypeName "HTMLAnchorElement"

export data HTMLAreaElement : Type where [external]

export
SafeCast HTMLAreaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLAreaElement"

export data HTMLAudioElement : Type where [external]

export
SafeCast HTMLAudioElement where
  safeCast = unsafeCastOnPrototypeName "HTMLAudioElement"

export data HTMLBRElement : Type where [external]

export
SafeCast HTMLBRElement where
  safeCast = unsafeCastOnPrototypeName "HTMLBRElement"

export data HTMLBaseElement : Type where [external]

export
SafeCast HTMLBaseElement where
  safeCast = unsafeCastOnPrototypeName "HTMLBaseElement"

export data HTMLBodyElement : Type where [external]

export
SafeCast HTMLBodyElement where
  safeCast = unsafeCastOnPrototypeName "HTMLBodyElement"

export data HTMLButtonElement : Type where [external]

export
SafeCast HTMLButtonElement where
  safeCast = unsafeCastOnPrototypeName "HTMLButtonElement"

export data HTMLCanvasElement : Type where [external]

export
SafeCast HTMLCanvasElement where
  safeCast = unsafeCastOnPrototypeName "HTMLCanvasElement"

export data HTMLDListElement : Type where [external]

export
SafeCast HTMLDListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDListElement"

export data HTMLDataElement : Type where [external]

export
SafeCast HTMLDataElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDataElement"

export data HTMLDataListElement : Type where [external]

export
SafeCast HTMLDataListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDataListElement"

export data HTMLDetailsElement : Type where [external]

export
SafeCast HTMLDetailsElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDetailsElement"

export data HTMLDialogElement : Type where [external]

export
SafeCast HTMLDialogElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDialogElement"

export data HTMLDirectoryElement : Type where [external]

export
SafeCast HTMLDirectoryElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDirectoryElement"

export data HTMLDivElement : Type where [external]

export
SafeCast HTMLDivElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDivElement"

export data HTMLElement : Type where [external]

export
SafeCast HTMLElement where
  safeCast = unsafeCastOnPrototypeName "HTMLElement"

export data HTMLEmbedElement : Type where [external]

export
SafeCast HTMLEmbedElement where
  safeCast = unsafeCastOnPrototypeName "HTMLEmbedElement"

export data HTMLFieldSetElement : Type where [external]

export
SafeCast HTMLFieldSetElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFieldSetElement"

export data HTMLFontElement : Type where [external]

export
SafeCast HTMLFontElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFontElement"

export data HTMLFormControlsCollection : Type where [external]

export
SafeCast HTMLFormControlsCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLFormControlsCollection"

export data HTMLFormElement : Type where [external]

export
SafeCast HTMLFormElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFormElement"

export data HTMLFrameElement : Type where [external]

export
SafeCast HTMLFrameElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFrameElement"

export data HTMLFrameSetElement : Type where [external]

export
SafeCast HTMLFrameSetElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFrameSetElement"

export data HTMLHRElement : Type where [external]

export
SafeCast HTMLHRElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHRElement"

export data HTMLHeadElement : Type where [external]

export
SafeCast HTMLHeadElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHeadElement"

export data HTMLHeadingElement : Type where [external]

export
SafeCast HTMLHeadingElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHeadingElement"

export data HTMLHtmlElement : Type where [external]

export
SafeCast HTMLHtmlElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHtmlElement"

export data HTMLIFrameElement : Type where [external]

export
SafeCast HTMLIFrameElement where
  safeCast = unsafeCastOnPrototypeName "HTMLIFrameElement"

export data HTMLImageElement : Type where [external]

export
SafeCast HTMLImageElement where
  safeCast = unsafeCastOnPrototypeName "HTMLImageElement"

export data HTMLInputElement : Type where [external]

export
SafeCast HTMLInputElement where
  safeCast = unsafeCastOnPrototypeName "HTMLInputElement"

export data HTMLLIElement : Type where [external]

export
SafeCast HTMLLIElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLIElement"

export data HTMLLabelElement : Type where [external]

export
SafeCast HTMLLabelElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLabelElement"

export data HTMLLegendElement : Type where [external]

export
SafeCast HTMLLegendElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLegendElement"

export data HTMLLinkElement : Type where [external]

export
SafeCast HTMLLinkElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLinkElement"

export data HTMLMapElement : Type where [external]

export
SafeCast HTMLMapElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMapElement"

export data HTMLMarqueeElement : Type where [external]

export
SafeCast HTMLMarqueeElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMarqueeElement"

export data HTMLMediaElement : Type where [external]

export
SafeCast HTMLMediaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMediaElement"

export data HTMLMenuElement : Type where [external]

export
SafeCast HTMLMenuElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMenuElement"

export data HTMLMetaElement : Type where [external]

export
SafeCast HTMLMetaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMetaElement"

export data HTMLMeterElement : Type where [external]

export
SafeCast HTMLMeterElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMeterElement"

export data HTMLModElement : Type where [external]

export
SafeCast HTMLModElement where
  safeCast = unsafeCastOnPrototypeName "HTMLModElement"

export data HTMLOListElement : Type where [external]

export
SafeCast HTMLOListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOListElement"

export data HTMLObjectElement : Type where [external]

export
SafeCast HTMLObjectElement where
  safeCast = unsafeCastOnPrototypeName "HTMLObjectElement"

export data HTMLOptGroupElement : Type where [external]

export
SafeCast HTMLOptGroupElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOptGroupElement"

export data HTMLOptionElement : Type where [external]

export
SafeCast HTMLOptionElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOptionElement"

export data HTMLOptionsCollection : Type where [external]

export
SafeCast HTMLOptionsCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLOptionsCollection"

export data HTMLOutputElement : Type where [external]

export
SafeCast HTMLOutputElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOutputElement"

export data HTMLParagraphElement : Type where [external]

export
SafeCast HTMLParagraphElement where
  safeCast = unsafeCastOnPrototypeName "HTMLParagraphElement"

export data HTMLParamElement : Type where [external]

export
SafeCast HTMLParamElement where
  safeCast = unsafeCastOnPrototypeName "HTMLParamElement"

export data HTMLPictureElement : Type where [external]

export
SafeCast HTMLPictureElement where
  safeCast = unsafeCastOnPrototypeName "HTMLPictureElement"

export data HTMLPreElement : Type where [external]

export
SafeCast HTMLPreElement where
  safeCast = unsafeCastOnPrototypeName "HTMLPreElement"

export data HTMLProgressElement : Type where [external]

export
SafeCast HTMLProgressElement where
  safeCast = unsafeCastOnPrototypeName "HTMLProgressElement"

export data HTMLQuoteElement : Type where [external]

export
SafeCast HTMLQuoteElement where
  safeCast = unsafeCastOnPrototypeName "HTMLQuoteElement"

export data HTMLScriptElement : Type where [external]

export
SafeCast HTMLScriptElement where
  safeCast = unsafeCastOnPrototypeName "HTMLScriptElement"

export data HTMLSelectElement : Type where [external]

export
SafeCast HTMLSelectElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSelectElement"

export data HTMLSlotElement : Type where [external]

export
SafeCast HTMLSlotElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSlotElement"

export data HTMLSourceElement : Type where [external]

export
SafeCast HTMLSourceElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSourceElement"

export data HTMLSpanElement : Type where [external]

export
SafeCast HTMLSpanElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSpanElement"

export data HTMLStyleElement : Type where [external]

export
SafeCast HTMLStyleElement where
  safeCast = unsafeCastOnPrototypeName "HTMLStyleElement"

export data HTMLTableCaptionElement : Type where [external]

export
SafeCast HTMLTableCaptionElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableCaptionElement"

export data HTMLTableCellElement : Type where [external]

export
SafeCast HTMLTableCellElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableCellElement"

export data HTMLTableColElement : Type where [external]

export
SafeCast HTMLTableColElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableColElement"

export data HTMLTableElement : Type where [external]

export
SafeCast HTMLTableElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableElement"

export data HTMLTableRowElement : Type where [external]

export
SafeCast HTMLTableRowElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableRowElement"

export data HTMLTableSectionElement : Type where [external]

export
SafeCast HTMLTableSectionElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableSectionElement"

export data HTMLTemplateElement : Type where [external]

export
SafeCast HTMLTemplateElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTemplateElement"

export data HTMLTextAreaElement : Type where [external]

export
SafeCast HTMLTextAreaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTextAreaElement"

export data HTMLTimeElement : Type where [external]

export
SafeCast HTMLTimeElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTimeElement"

export data HTMLTitleElement : Type where [external]

export
SafeCast HTMLTitleElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTitleElement"

export data HTMLTrackElement : Type where [external]

export
SafeCast HTMLTrackElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTrackElement"

export data HTMLUListElement : Type where [external]

export
SafeCast HTMLUListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLUListElement"

export data HTMLUnknownElement : Type where [external]

export
SafeCast HTMLUnknownElement where
  safeCast = unsafeCastOnPrototypeName "HTMLUnknownElement"

export data HTMLVideoElement : Type where [external]

export
SafeCast HTMLVideoElement where
  safeCast = unsafeCastOnPrototypeName "HTMLVideoElement"

export data HashChangeEvent : Type where [external]

export
SafeCast HashChangeEvent where
  safeCast = unsafeCastOnPrototypeName "HashChangeEvent"

export data History : Type where [external]

export
SafeCast History where
  safeCast = unsafeCastOnPrototypeName "History"

export data ImageBitmap : Type where [external]

export
SafeCast ImageBitmap where
  safeCast = unsafeCastOnPrototypeName "ImageBitmap"

export data ImageBitmapRenderingContext : Type where [external]

export
SafeCast ImageBitmapRenderingContext where
  safeCast = unsafeCastOnPrototypeName "ImageBitmapRenderingContext"

export data ImageData : Type where [external]

export
SafeCast ImageData where
  safeCast = unsafeCastOnPrototypeName "ImageData"

export data Location : Type where [external]

export
SafeCast Location where
  safeCast = unsafeCastOnPrototypeName "Location"

export data MediaError : Type where [external]

export
SafeCast MediaError where
  safeCast = unsafeCastOnPrototypeName "MediaError"

export data MessageChannel : Type where [external]

export
SafeCast MessageChannel where
  safeCast = unsafeCastOnPrototypeName "MessageChannel"

export data MessageEvent : Type where [external]

export
SafeCast MessageEvent where
  safeCast = unsafeCastOnPrototypeName "MessageEvent"

export data MessagePort : Type where [external]

export
SafeCast MessagePort where
  safeCast = unsafeCastOnPrototypeName "MessagePort"

export data MimeType : Type where [external]

export
SafeCast MimeType where
  safeCast = unsafeCastOnPrototypeName "MimeType"

export data MimeTypeArray : Type where [external]

export
SafeCast MimeTypeArray where
  safeCast = unsafeCastOnPrototypeName "MimeTypeArray"

export data Navigator : Type where [external]

export
SafeCast Navigator where
  safeCast = unsafeCastOnPrototypeName "Navigator"

export data OffscreenCanvas : Type where [external]

export
SafeCast OffscreenCanvas where
  safeCast = unsafeCastOnPrototypeName "OffscreenCanvas"

export data OffscreenCanvasRenderingContext2D : Type where [external]

export
SafeCast OffscreenCanvasRenderingContext2D where
  safeCast = unsafeCastOnPrototypeName "OffscreenCanvasRenderingContext2D"

export data PageTransitionEvent : Type where [external]

export
SafeCast PageTransitionEvent where
  safeCast = unsafeCastOnPrototypeName "PageTransitionEvent"

export data Path2D : Type where [external]

export
SafeCast Path2D where
  safeCast = unsafeCastOnPrototypeName "Path2D"

export data Plugin : Type where [external]

export
SafeCast Plugin where
  safeCast = unsafeCastOnPrototypeName "Plugin"

export data PluginArray : Type where [external]

export
SafeCast PluginArray where
  safeCast = unsafeCastOnPrototypeName "PluginArray"

export data PopStateEvent : Type where [external]

export
SafeCast PopStateEvent where
  safeCast = unsafeCastOnPrototypeName "PopStateEvent"

export data PromiseRejectionEvent : Type where [external]

export
SafeCast PromiseRejectionEvent where
  safeCast = unsafeCastOnPrototypeName "PromiseRejectionEvent"

export data RadioNodeList : Type where [external]

export
SafeCast RadioNodeList where
  safeCast = unsafeCastOnPrototypeName "RadioNodeList"

export data SharedWorker : Type where [external]

export
SafeCast SharedWorker where
  safeCast = unsafeCastOnPrototypeName "SharedWorker"

export data SharedWorkerGlobalScope : Type where [external]

export
SafeCast SharedWorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "SharedWorkerGlobalScope"

export data Storage : Type where [external]

export
SafeCast Storage where
  safeCast = unsafeCastOnPrototypeName "Storage"

export data StorageEvent : Type where [external]

export
SafeCast StorageEvent where
  safeCast = unsafeCastOnPrototypeName "StorageEvent"

export data SubmitEvent : Type where [external]

export
SafeCast SubmitEvent where
  safeCast = unsafeCastOnPrototypeName "SubmitEvent"

export data TextMetrics : Type where [external]

export
SafeCast TextMetrics where
  safeCast = unsafeCastOnPrototypeName "TextMetrics"

export data TextTrack : Type where [external]

export
SafeCast TextTrack where
  safeCast = unsafeCastOnPrototypeName "TextTrack"

export data TextTrackCue : Type where [external]

export
SafeCast TextTrackCue where
  safeCast = unsafeCastOnPrototypeName "TextTrackCue"

export data TextTrackCueList : Type where [external]

export
SafeCast TextTrackCueList where
  safeCast = unsafeCastOnPrototypeName "TextTrackCueList"

export data TextTrackList : Type where [external]

export
SafeCast TextTrackList where
  safeCast = unsafeCastOnPrototypeName "TextTrackList"

export data TimeRanges : Type where [external]

export
SafeCast TimeRanges where
  safeCast = unsafeCastOnPrototypeName "TimeRanges"

export data TrackEvent : Type where [external]

export
SafeCast TrackEvent where
  safeCast = unsafeCastOnPrototypeName "TrackEvent"

export data ValidityState : Type where [external]

export
SafeCast ValidityState where
  safeCast = unsafeCastOnPrototypeName "ValidityState"

export data VideoTrack : Type where [external]

export
SafeCast VideoTrack where
  safeCast = unsafeCastOnPrototypeName "VideoTrack"

export data VideoTrackList : Type where [external]

export
SafeCast VideoTrackList where
  safeCast = unsafeCastOnPrototypeName "VideoTrackList"

export data WebSocket : Type where [external]

export
SafeCast WebSocket where
  safeCast = unsafeCastOnPrototypeName "WebSocket"

export data Window : Type where [external]

export
SafeCast Window where
  safeCast = unsafeCastOnPrototypeName "Window"

export data Worker : Type where [external]

export
SafeCast Worker where
  safeCast = unsafeCastOnPrototypeName "Worker"

export data WorkerGlobalScope : Type where [external]

export
SafeCast WorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "WorkerGlobalScope"

export data WorkerLocation : Type where [external]

export
SafeCast WorkerLocation where
  safeCast = unsafeCastOnPrototypeName "WorkerLocation"

export data WorkerNavigator : Type where [external]

export
SafeCast WorkerNavigator where
  safeCast = unsafeCastOnPrototypeName "WorkerNavigator"

export data Worklet : Type where [external]

export
SafeCast Worklet where
  safeCast = unsafeCastOnPrototypeName "Worklet"

export data WorkletGlobalScope : Type where [external]

export
SafeCast WorkletGlobalScope where
  safeCast = unsafeCastOnPrototypeName "WorkletGlobalScope"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data AssignedNodesOptions : Type where [external]

export
SafeCast AssignedNodesOptions where
  safeCast = unsafeCastOnPrototypeName "AssignedNodesOptions"

export data CanvasRenderingContext2DSettings : Type where [external]

export
SafeCast CanvasRenderingContext2DSettings where
  safeCast = unsafeCastOnPrototypeName "CanvasRenderingContext2DSettings"

export data CloseEventInit : Type where [external]

export
SafeCast CloseEventInit where
  safeCast = unsafeCastOnPrototypeName "CloseEventInit"

export data DragEventInit : Type where [external]

export
SafeCast DragEventInit where
  safeCast = unsafeCastOnPrototypeName "DragEventInit"

export data ElementDefinitionOptions : Type where [external]

export
SafeCast ElementDefinitionOptions where
  safeCast = unsafeCastOnPrototypeName "ElementDefinitionOptions"

export data ErrorEventInit : Type where [external]

export
SafeCast ErrorEventInit where
  safeCast = unsafeCastOnPrototypeName "ErrorEventInit"

export data EventSourceInit : Type where [external]

export
SafeCast EventSourceInit where
  safeCast = unsafeCastOnPrototypeName "EventSourceInit"

export data FocusOptions : Type where [external]

export
SafeCast FocusOptions where
  safeCast = unsafeCastOnPrototypeName "FocusOptions"

export data FormDataEventInit : Type where [external]

export
SafeCast FormDataEventInit where
  safeCast = unsafeCastOnPrototypeName "FormDataEventInit"

export data HashChangeEventInit : Type where [external]

export
SafeCast HashChangeEventInit where
  safeCast = unsafeCastOnPrototypeName "HashChangeEventInit"

export data ImageBitmapOptions : Type where [external]

export
SafeCast ImageBitmapOptions where
  safeCast = unsafeCastOnPrototypeName "ImageBitmapOptions"

export data ImageBitmapRenderingContextSettings : Type where [external]

export
SafeCast ImageBitmapRenderingContextSettings where
  safeCast = unsafeCastOnPrototypeName "ImageBitmapRenderingContextSettings"

export data ImageEncodeOptions : Type where [external]

export
SafeCast ImageEncodeOptions where
  safeCast = unsafeCastOnPrototypeName "ImageEncodeOptions"

export data MessageEventInit : Type where [external]

export
SafeCast MessageEventInit where
  safeCast = unsafeCastOnPrototypeName "MessageEventInit"

export data PageTransitionEventInit : Type where [external]

export
SafeCast PageTransitionEventInit where
  safeCast = unsafeCastOnPrototypeName "PageTransitionEventInit"

export data PopStateEventInit : Type where [external]

export
SafeCast PopStateEventInit where
  safeCast = unsafeCastOnPrototypeName "PopStateEventInit"

export data PostMessageOptions : Type where [external]

export
SafeCast PostMessageOptions where
  safeCast = unsafeCastOnPrototypeName "PostMessageOptions"

export data PromiseRejectionEventInit : Type where [external]

export
SafeCast PromiseRejectionEventInit where
  safeCast = unsafeCastOnPrototypeName "PromiseRejectionEventInit"

export data StorageEventInit : Type where [external]

export
SafeCast StorageEventInit where
  safeCast = unsafeCastOnPrototypeName "StorageEventInit"

export data SubmitEventInit : Type where [external]

export
SafeCast SubmitEventInit where
  safeCast = unsafeCastOnPrototypeName "SubmitEventInit"

export data TrackEventInit : Type where [external]

export
SafeCast TrackEventInit where
  safeCast = unsafeCastOnPrototypeName "TrackEventInit"

export data ValidityStateFlags : Type where [external]

export
SafeCast ValidityStateFlags where
  safeCast = unsafeCastOnPrototypeName "ValidityStateFlags"

export data WindowPostMessageOptions : Type where [external]

export
SafeCast WindowPostMessageOptions where
  safeCast = unsafeCastOnPrototypeName "WindowPostMessageOptions"

export data WorkerOptions : Type where [external]

export
SafeCast WorkerOptions where
  safeCast = unsafeCastOnPrototypeName "WorkerOptions"

export data WorkletOptions : Type where [external]

export
SafeCast WorkletOptions where
  safeCast = unsafeCastOnPrototypeName "WorkletOptions"

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data ARIAMixin : Type where [external]

export data AbstractWorker : Type where [external]

export data CanvasCompositing : Type where [external]

export data CanvasDrawImage : Type where [external]

export data CanvasDrawPath : Type where [external]

export data CanvasFillStrokeStyles : Type where [external]

export data CanvasFilters : Type where [external]

export data CanvasImageData : Type where [external]

export data CanvasImageSmoothing : Type where [external]

export data CanvasPath : Type where [external]

export data CanvasPathDrawingStyles : Type where [external]

export data CanvasRect : Type where [external]

export data CanvasShadowStyles : Type where [external]

export data CanvasState : Type where [external]

export data CanvasText : Type where [external]

export data CanvasTextDrawingStyles : Type where [external]

export data CanvasTransform : Type where [external]

export data CanvasUserInterface : Type where [external]

export data DocumentAndElementEventHandlers : Type where [external]

export data ElementContentEditable : Type where [external]

export data GlobalEventHandlers : Type where [external]

export data HTMLHyperlinkElementUtils : Type where [external]

export data HTMLOrSVGElement : Type where [external]

export data NavigatorConcurrentHardware : Type where [external]

export data NavigatorContentUtils : Type where [external]

export data NavigatorCookies : Type where [external]

export data NavigatorID : Type where [external]

export data NavigatorLanguage : Type where [external]

export data NavigatorOnLine : Type where [external]

export data NavigatorPlugins : Type where [external]

export data WindowEventHandlers : Type where [external]

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export data BlobCallback : Type where [external]

export data CustomElementConstructor : Type where [external]

export data EventHandlerNonNull : Type where [external]

export data FunctionStringCallback : Type where [external]

export data OnBeforeUnloadEventHandlerNonNull : Type where [external]

export data OnErrorEventHandlerNonNull : Type where [external]