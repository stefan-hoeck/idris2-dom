module Web.HtmlTypes
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

  export
  ToJS DOMParserSupportedType where
    toJS = toJS . show

  export
  FromJS DOMParserSupportedType where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS DocumentReadyState where
    toJS = toJS . show

  export
  FromJS DocumentReadyState where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS CanPlayTypeResult where
    toJS = toJS . show

  export
  FromJS CanPlayTypeResult where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS ScrollRestoration where
    toJS = toJS . show

  export
  FromJS ScrollRestoration where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS ImageOrientation where
    toJS = toJS . show

  export
  FromJS ImageOrientation where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS PremultiplyAlpha where
    toJS = toJS . show

  export
  FromJS PremultiplyAlpha where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS ColorSpaceConversion where
    toJS = toJS . show

  export
  FromJS ColorSpaceConversion where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS ResizeQuality where
    toJS = toJS . show

  export
  FromJS ResizeQuality where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS CanvasFillRule where
    toJS = toJS . show

  export
  FromJS CanvasFillRule where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS ImageSmoothingQuality where
    toJS = toJS . show

  export
  FromJS ImageSmoothingQuality where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS CanvasLineCap where
    toJS = toJS . show

  export
  FromJS CanvasLineCap where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS CanvasLineJoin where
    toJS = toJS . show

  export
  FromJS CanvasLineJoin where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS CanvasTextAlign where
    toJS = toJS . show

  export
  FromJS CanvasTextAlign where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS CanvasTextBaseline where
    toJS = toJS . show

  export
  FromJS CanvasTextBaseline where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS CanvasDirection where
    toJS = toJS . show

  export
  FromJS CanvasDirection where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS OffscreenRenderingContextId where
    toJS = toJS . show

  export
  FromJS OffscreenRenderingContextId where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS TextTrackMode where
    toJS = toJS . show

  export
  FromJS TextTrackMode where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS TextTrackKind where
    toJS = toJS . show

  export
  FromJS TextTrackKind where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS BinaryType where
    toJS = toJS . show

  export
  FromJS BinaryType where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS WorkerType where
    toJS = toJS . show

  export
  FromJS WorkerType where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS SelectionMode where
    toJS = toJS . show

  export
  FromJS SelectionMode where
    fromJS ptr = fromJS ptr >>= read

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export data AudioTrack : Type where [external]

export
SafeCast AudioTrack where
  safeCast = unsafeCastOnPrototypeName "AudioTrack"

export ToJS AudioTrack where toJS = believe_me
export FromJS AudioTrack where fromJS = safeCast
export data AudioTrackList : Type where [external]

export
SafeCast AudioTrackList where
  safeCast = unsafeCastOnPrototypeName "AudioTrackList"

export ToJS AudioTrackList where toJS = believe_me
export FromJS AudioTrackList where fromJS = safeCast
export data BarProp : Type where [external]

export
SafeCast BarProp where
  safeCast = unsafeCastOnPrototypeName "BarProp"

export ToJS BarProp where toJS = believe_me
export FromJS BarProp where fromJS = safeCast
export data BeforeUnloadEvent : Type where [external]

export
SafeCast BeforeUnloadEvent where
  safeCast = unsafeCastOnPrototypeName "BeforeUnloadEvent"

export ToJS BeforeUnloadEvent where toJS = believe_me
export FromJS BeforeUnloadEvent where fromJS = safeCast
export data BroadcastChannel : Type where [external]

export
SafeCast BroadcastChannel where
  safeCast = unsafeCastOnPrototypeName "BroadcastChannel"

export ToJS BroadcastChannel where toJS = believe_me
export FromJS BroadcastChannel where fromJS = safeCast
export data CanvasGradient : Type where [external]

export
SafeCast CanvasGradient where
  safeCast = unsafeCastOnPrototypeName "CanvasGradient"

export ToJS CanvasGradient where toJS = believe_me
export FromJS CanvasGradient where fromJS = safeCast
export data CanvasPattern : Type where [external]

export
SafeCast CanvasPattern where
  safeCast = unsafeCastOnPrototypeName "CanvasPattern"

export ToJS CanvasPattern where toJS = believe_me
export FromJS CanvasPattern where fromJS = safeCast
export data CanvasRenderingContext2D : Type where [external]

export
SafeCast CanvasRenderingContext2D where
  safeCast = unsafeCastOnPrototypeName "CanvasRenderingContext2D"

export ToJS CanvasRenderingContext2D where toJS = believe_me
export FromJS CanvasRenderingContext2D where fromJS = safeCast
export data CloseEvent : Type where [external]

export
SafeCast CloseEvent where
  safeCast = unsafeCastOnPrototypeName "CloseEvent"

export ToJS CloseEvent where toJS = believe_me
export FromJS CloseEvent where fromJS = safeCast
export data CustomElementRegistry : Type where [external]

export
SafeCast CustomElementRegistry where
  safeCast = unsafeCastOnPrototypeName "CustomElementRegistry"

export ToJS CustomElementRegistry where toJS = believe_me
export FromJS CustomElementRegistry where fromJS = safeCast
export data DOMParser : Type where [external]

export
SafeCast DOMParser where
  safeCast = unsafeCastOnPrototypeName "DOMParser"

export ToJS DOMParser where toJS = believe_me
export FromJS DOMParser where fromJS = safeCast
export data DOMStringList : Type where [external]

export
SafeCast DOMStringList where
  safeCast = unsafeCastOnPrototypeName "DOMStringList"

export ToJS DOMStringList where toJS = believe_me
export FromJS DOMStringList where fromJS = safeCast
export data DOMStringMap : Type where [external]

export
SafeCast DOMStringMap where
  safeCast = unsafeCastOnPrototypeName "DOMStringMap"

export ToJS DOMStringMap where toJS = believe_me
export FromJS DOMStringMap where fromJS = safeCast
export data DataTransfer : Type where [external]

export
SafeCast DataTransfer where
  safeCast = unsafeCastOnPrototypeName "DataTransfer"

export ToJS DataTransfer where toJS = believe_me
export FromJS DataTransfer where fromJS = safeCast
export data DataTransferItem : Type where [external]

export
SafeCast DataTransferItem where
  safeCast = unsafeCastOnPrototypeName "DataTransferItem"

export ToJS DataTransferItem where toJS = believe_me
export FromJS DataTransferItem where fromJS = safeCast
export data DataTransferItemList : Type where [external]

export
SafeCast DataTransferItemList where
  safeCast = unsafeCastOnPrototypeName "DataTransferItemList"

export ToJS DataTransferItemList where toJS = believe_me
export FromJS DataTransferItemList where fromJS = safeCast
export data DedicatedWorkerGlobalScope : Type where [external]

export
SafeCast DedicatedWorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "DedicatedWorkerGlobalScope"

export ToJS DedicatedWorkerGlobalScope where toJS = believe_me
export FromJS DedicatedWorkerGlobalScope where fromJS = safeCast
export data DragEvent : Type where [external]

export
SafeCast DragEvent where
  safeCast = unsafeCastOnPrototypeName "DragEvent"

export ToJS DragEvent where toJS = believe_me
export FromJS DragEvent where fromJS = safeCast
export data ElementInternals : Type where [external]

export
SafeCast ElementInternals where
  safeCast = unsafeCastOnPrototypeName "ElementInternals"

export ToJS ElementInternals where toJS = believe_me
export FromJS ElementInternals where fromJS = safeCast
export data ErrorEvent : Type where [external]

export
SafeCast ErrorEvent where
  safeCast = unsafeCastOnPrototypeName "ErrorEvent"

export ToJS ErrorEvent where toJS = believe_me
export FromJS ErrorEvent where fromJS = safeCast
export data EventSource : Type where [external]

export
SafeCast EventSource where
  safeCast = unsafeCastOnPrototypeName "EventSource"

export ToJS EventSource where toJS = believe_me
export FromJS EventSource where fromJS = safeCast
export data External : Type where [external]

export
SafeCast External where
  safeCast = unsafeCastOnPrototypeName "External"

export ToJS External where toJS = believe_me
export FromJS External where fromJS = safeCast
export data FormDataEvent : Type where [external]

export
SafeCast FormDataEvent where
  safeCast = unsafeCastOnPrototypeName "FormDataEvent"

export ToJS FormDataEvent where toJS = believe_me
export FromJS FormDataEvent where fromJS = safeCast
export data HTMLAllCollection : Type where [external]

export
SafeCast HTMLAllCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLAllCollection"

export ToJS HTMLAllCollection where toJS = believe_me
export FromJS HTMLAllCollection where fromJS = safeCast
export data HTMLAnchorElement : Type where [external]

export
SafeCast HTMLAnchorElement where
  safeCast = unsafeCastOnPrototypeName "HTMLAnchorElement"

export ToJS HTMLAnchorElement where toJS = believe_me
export FromJS HTMLAnchorElement where fromJS = safeCast
export data HTMLAreaElement : Type where [external]

export
SafeCast HTMLAreaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLAreaElement"

export ToJS HTMLAreaElement where toJS = believe_me
export FromJS HTMLAreaElement where fromJS = safeCast
export data HTMLAudioElement : Type where [external]

export
SafeCast HTMLAudioElement where
  safeCast = unsafeCastOnPrototypeName "HTMLAudioElement"

export ToJS HTMLAudioElement where toJS = believe_me
export FromJS HTMLAudioElement where fromJS = safeCast
export data HTMLBRElement : Type where [external]

export
SafeCast HTMLBRElement where
  safeCast = unsafeCastOnPrototypeName "HTMLBRElement"

export ToJS HTMLBRElement where toJS = believe_me
export FromJS HTMLBRElement where fromJS = safeCast
export data HTMLBaseElement : Type where [external]

export
SafeCast HTMLBaseElement where
  safeCast = unsafeCastOnPrototypeName "HTMLBaseElement"

export ToJS HTMLBaseElement where toJS = believe_me
export FromJS HTMLBaseElement where fromJS = safeCast
export data HTMLBodyElement : Type where [external]

export
SafeCast HTMLBodyElement where
  safeCast = unsafeCastOnPrototypeName "HTMLBodyElement"

export ToJS HTMLBodyElement where toJS = believe_me
export FromJS HTMLBodyElement where fromJS = safeCast
export data HTMLButtonElement : Type where [external]

export
SafeCast HTMLButtonElement where
  safeCast = unsafeCastOnPrototypeName "HTMLButtonElement"

export ToJS HTMLButtonElement where toJS = believe_me
export FromJS HTMLButtonElement where fromJS = safeCast
export data HTMLCanvasElement : Type where [external]

export
SafeCast HTMLCanvasElement where
  safeCast = unsafeCastOnPrototypeName "HTMLCanvasElement"

export ToJS HTMLCanvasElement where toJS = believe_me
export FromJS HTMLCanvasElement where fromJS = safeCast
export data HTMLDListElement : Type where [external]

export
SafeCast HTMLDListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDListElement"

export ToJS HTMLDListElement where toJS = believe_me
export FromJS HTMLDListElement where fromJS = safeCast
export data HTMLDataElement : Type where [external]

export
SafeCast HTMLDataElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDataElement"

export ToJS HTMLDataElement where toJS = believe_me
export FromJS HTMLDataElement where fromJS = safeCast
export data HTMLDataListElement : Type where [external]

export
SafeCast HTMLDataListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDataListElement"

export ToJS HTMLDataListElement where toJS = believe_me
export FromJS HTMLDataListElement where fromJS = safeCast
export data HTMLDetailsElement : Type where [external]

export
SafeCast HTMLDetailsElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDetailsElement"

export ToJS HTMLDetailsElement where toJS = believe_me
export FromJS HTMLDetailsElement where fromJS = safeCast
export data HTMLDialogElement : Type where [external]

export
SafeCast HTMLDialogElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDialogElement"

export ToJS HTMLDialogElement where toJS = believe_me
export FromJS HTMLDialogElement where fromJS = safeCast
export data HTMLDirectoryElement : Type where [external]

export
SafeCast HTMLDirectoryElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDirectoryElement"

export ToJS HTMLDirectoryElement where toJS = believe_me
export FromJS HTMLDirectoryElement where fromJS = safeCast
export data HTMLDivElement : Type where [external]

export
SafeCast HTMLDivElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDivElement"

export ToJS HTMLDivElement where toJS = believe_me
export FromJS HTMLDivElement where fromJS = safeCast
export data HTMLElement : Type where [external]

export
SafeCast HTMLElement where
  safeCast = unsafeCastOnPrototypeName "HTMLElement"

export ToJS HTMLElement where toJS = believe_me
export FromJS HTMLElement where fromJS = safeCast
export data HTMLEmbedElement : Type where [external]

export
SafeCast HTMLEmbedElement where
  safeCast = unsafeCastOnPrototypeName "HTMLEmbedElement"

export ToJS HTMLEmbedElement where toJS = believe_me
export FromJS HTMLEmbedElement where fromJS = safeCast
export data HTMLFieldSetElement : Type where [external]

export
SafeCast HTMLFieldSetElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFieldSetElement"

export ToJS HTMLFieldSetElement where toJS = believe_me
export FromJS HTMLFieldSetElement where fromJS = safeCast
export data HTMLFontElement : Type where [external]

export
SafeCast HTMLFontElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFontElement"

export ToJS HTMLFontElement where toJS = believe_me
export FromJS HTMLFontElement where fromJS = safeCast
export data HTMLFormControlsCollection : Type where [external]

export
SafeCast HTMLFormControlsCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLFormControlsCollection"

export ToJS HTMLFormControlsCollection where toJS = believe_me
export FromJS HTMLFormControlsCollection where fromJS = safeCast
export data HTMLFormElement : Type where [external]

export
SafeCast HTMLFormElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFormElement"

export ToJS HTMLFormElement where toJS = believe_me
export FromJS HTMLFormElement where fromJS = safeCast
export data HTMLFrameElement : Type where [external]

export
SafeCast HTMLFrameElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFrameElement"

export ToJS HTMLFrameElement where toJS = believe_me
export FromJS HTMLFrameElement where fromJS = safeCast
export data HTMLFrameSetElement : Type where [external]

export
SafeCast HTMLFrameSetElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFrameSetElement"

export ToJS HTMLFrameSetElement where toJS = believe_me
export FromJS HTMLFrameSetElement where fromJS = safeCast
export data HTMLHRElement : Type where [external]

export
SafeCast HTMLHRElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHRElement"

export ToJS HTMLHRElement where toJS = believe_me
export FromJS HTMLHRElement where fromJS = safeCast
export data HTMLHeadElement : Type where [external]

export
SafeCast HTMLHeadElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHeadElement"

export ToJS HTMLHeadElement where toJS = believe_me
export FromJS HTMLHeadElement where fromJS = safeCast
export data HTMLHeadingElement : Type where [external]

export
SafeCast HTMLHeadingElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHeadingElement"

export ToJS HTMLHeadingElement where toJS = believe_me
export FromJS HTMLHeadingElement where fromJS = safeCast
export data HTMLHtmlElement : Type where [external]

export
SafeCast HTMLHtmlElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHtmlElement"

export ToJS HTMLHtmlElement where toJS = believe_me
export FromJS HTMLHtmlElement where fromJS = safeCast
export data HTMLIFrameElement : Type where [external]

export
SafeCast HTMLIFrameElement where
  safeCast = unsafeCastOnPrototypeName "HTMLIFrameElement"

export ToJS HTMLIFrameElement where toJS = believe_me
export FromJS HTMLIFrameElement where fromJS = safeCast
export data HTMLImageElement : Type where [external]

export
SafeCast HTMLImageElement where
  safeCast = unsafeCastOnPrototypeName "HTMLImageElement"

export ToJS HTMLImageElement where toJS = believe_me
export FromJS HTMLImageElement where fromJS = safeCast
export data HTMLInputElement : Type where [external]

export
SafeCast HTMLInputElement where
  safeCast = unsafeCastOnPrototypeName "HTMLInputElement"

export ToJS HTMLInputElement where toJS = believe_me
export FromJS HTMLInputElement where fromJS = safeCast
export data HTMLLIElement : Type where [external]

export
SafeCast HTMLLIElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLIElement"

export ToJS HTMLLIElement where toJS = believe_me
export FromJS HTMLLIElement where fromJS = safeCast
export data HTMLLabelElement : Type where [external]

export
SafeCast HTMLLabelElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLabelElement"

export ToJS HTMLLabelElement where toJS = believe_me
export FromJS HTMLLabelElement where fromJS = safeCast
export data HTMLLegendElement : Type where [external]

export
SafeCast HTMLLegendElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLegendElement"

export ToJS HTMLLegendElement where toJS = believe_me
export FromJS HTMLLegendElement where fromJS = safeCast
export data HTMLLinkElement : Type where [external]

export
SafeCast HTMLLinkElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLinkElement"

export ToJS HTMLLinkElement where toJS = believe_me
export FromJS HTMLLinkElement where fromJS = safeCast
export data HTMLMapElement : Type where [external]

export
SafeCast HTMLMapElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMapElement"

export ToJS HTMLMapElement where toJS = believe_me
export FromJS HTMLMapElement where fromJS = safeCast
export data HTMLMarqueeElement : Type where [external]

export
SafeCast HTMLMarqueeElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMarqueeElement"

export ToJS HTMLMarqueeElement where toJS = believe_me
export FromJS HTMLMarqueeElement where fromJS = safeCast
export data HTMLMediaElement : Type where [external]

export
SafeCast HTMLMediaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMediaElement"

export ToJS HTMLMediaElement where toJS = believe_me
export FromJS HTMLMediaElement where fromJS = safeCast
export data HTMLMenuElement : Type where [external]

export
SafeCast HTMLMenuElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMenuElement"

export ToJS HTMLMenuElement where toJS = believe_me
export FromJS HTMLMenuElement where fromJS = safeCast
export data HTMLMetaElement : Type where [external]

export
SafeCast HTMLMetaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMetaElement"

export ToJS HTMLMetaElement where toJS = believe_me
export FromJS HTMLMetaElement where fromJS = safeCast
export data HTMLMeterElement : Type where [external]

export
SafeCast HTMLMeterElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMeterElement"

export ToJS HTMLMeterElement where toJS = believe_me
export FromJS HTMLMeterElement where fromJS = safeCast
export data HTMLModElement : Type where [external]

export
SafeCast HTMLModElement where
  safeCast = unsafeCastOnPrototypeName "HTMLModElement"

export ToJS HTMLModElement where toJS = believe_me
export FromJS HTMLModElement where fromJS = safeCast
export data HTMLOListElement : Type where [external]

export
SafeCast HTMLOListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOListElement"

export ToJS HTMLOListElement where toJS = believe_me
export FromJS HTMLOListElement where fromJS = safeCast
export data HTMLObjectElement : Type where [external]

export
SafeCast HTMLObjectElement where
  safeCast = unsafeCastOnPrototypeName "HTMLObjectElement"

export ToJS HTMLObjectElement where toJS = believe_me
export FromJS HTMLObjectElement where fromJS = safeCast
export data HTMLOptGroupElement : Type where [external]

export
SafeCast HTMLOptGroupElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOptGroupElement"

export ToJS HTMLOptGroupElement where toJS = believe_me
export FromJS HTMLOptGroupElement where fromJS = safeCast
export data HTMLOptionElement : Type where [external]

export
SafeCast HTMLOptionElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOptionElement"

export ToJS HTMLOptionElement where toJS = believe_me
export FromJS HTMLOptionElement where fromJS = safeCast
export data HTMLOptionsCollection : Type where [external]

export
SafeCast HTMLOptionsCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLOptionsCollection"

export ToJS HTMLOptionsCollection where toJS = believe_me
export FromJS HTMLOptionsCollection where fromJS = safeCast
export data HTMLOutputElement : Type where [external]

export
SafeCast HTMLOutputElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOutputElement"

export ToJS HTMLOutputElement where toJS = believe_me
export FromJS HTMLOutputElement where fromJS = safeCast
export data HTMLParagraphElement : Type where [external]

export
SafeCast HTMLParagraphElement where
  safeCast = unsafeCastOnPrototypeName "HTMLParagraphElement"

export ToJS HTMLParagraphElement where toJS = believe_me
export FromJS HTMLParagraphElement where fromJS = safeCast
export data HTMLParamElement : Type where [external]

export
SafeCast HTMLParamElement where
  safeCast = unsafeCastOnPrototypeName "HTMLParamElement"

export ToJS HTMLParamElement where toJS = believe_me
export FromJS HTMLParamElement where fromJS = safeCast
export data HTMLPictureElement : Type where [external]

export
SafeCast HTMLPictureElement where
  safeCast = unsafeCastOnPrototypeName "HTMLPictureElement"

export ToJS HTMLPictureElement where toJS = believe_me
export FromJS HTMLPictureElement where fromJS = safeCast
export data HTMLPreElement : Type where [external]

export
SafeCast HTMLPreElement where
  safeCast = unsafeCastOnPrototypeName "HTMLPreElement"

export ToJS HTMLPreElement where toJS = believe_me
export FromJS HTMLPreElement where fromJS = safeCast
export data HTMLProgressElement : Type where [external]

export
SafeCast HTMLProgressElement where
  safeCast = unsafeCastOnPrototypeName "HTMLProgressElement"

export ToJS HTMLProgressElement where toJS = believe_me
export FromJS HTMLProgressElement where fromJS = safeCast
export data HTMLQuoteElement : Type where [external]

export
SafeCast HTMLQuoteElement where
  safeCast = unsafeCastOnPrototypeName "HTMLQuoteElement"

export ToJS HTMLQuoteElement where toJS = believe_me
export FromJS HTMLQuoteElement where fromJS = safeCast
export data HTMLScriptElement : Type where [external]

export
SafeCast HTMLScriptElement where
  safeCast = unsafeCastOnPrototypeName "HTMLScriptElement"

export ToJS HTMLScriptElement where toJS = believe_me
export FromJS HTMLScriptElement where fromJS = safeCast
export data HTMLSelectElement : Type where [external]

export
SafeCast HTMLSelectElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSelectElement"

export ToJS HTMLSelectElement where toJS = believe_me
export FromJS HTMLSelectElement where fromJS = safeCast
export data HTMLSlotElement : Type where [external]

export
SafeCast HTMLSlotElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSlotElement"

export ToJS HTMLSlotElement where toJS = believe_me
export FromJS HTMLSlotElement where fromJS = safeCast
export data HTMLSourceElement : Type where [external]

export
SafeCast HTMLSourceElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSourceElement"

export ToJS HTMLSourceElement where toJS = believe_me
export FromJS HTMLSourceElement where fromJS = safeCast
export data HTMLSpanElement : Type where [external]

export
SafeCast HTMLSpanElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSpanElement"

export ToJS HTMLSpanElement where toJS = believe_me
export FromJS HTMLSpanElement where fromJS = safeCast
export data HTMLStyleElement : Type where [external]

export
SafeCast HTMLStyleElement where
  safeCast = unsafeCastOnPrototypeName "HTMLStyleElement"

export ToJS HTMLStyleElement where toJS = believe_me
export FromJS HTMLStyleElement where fromJS = safeCast
export data HTMLTableCaptionElement : Type where [external]

export
SafeCast HTMLTableCaptionElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableCaptionElement"

export ToJS HTMLTableCaptionElement where toJS = believe_me
export FromJS HTMLTableCaptionElement where fromJS = safeCast
export data HTMLTableCellElement : Type where [external]

export
SafeCast HTMLTableCellElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableCellElement"

export ToJS HTMLTableCellElement where toJS = believe_me
export FromJS HTMLTableCellElement where fromJS = safeCast
export data HTMLTableColElement : Type where [external]

export
SafeCast HTMLTableColElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableColElement"

export ToJS HTMLTableColElement where toJS = believe_me
export FromJS HTMLTableColElement where fromJS = safeCast
export data HTMLTableElement : Type where [external]

export
SafeCast HTMLTableElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableElement"

export ToJS HTMLTableElement where toJS = believe_me
export FromJS HTMLTableElement where fromJS = safeCast
export data HTMLTableRowElement : Type where [external]

export
SafeCast HTMLTableRowElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableRowElement"

export ToJS HTMLTableRowElement where toJS = believe_me
export FromJS HTMLTableRowElement where fromJS = safeCast
export data HTMLTableSectionElement : Type where [external]

export
SafeCast HTMLTableSectionElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableSectionElement"

export ToJS HTMLTableSectionElement where toJS = believe_me
export FromJS HTMLTableSectionElement where fromJS = safeCast
export data HTMLTemplateElement : Type where [external]

export
SafeCast HTMLTemplateElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTemplateElement"

export ToJS HTMLTemplateElement where toJS = believe_me
export FromJS HTMLTemplateElement where fromJS = safeCast
export data HTMLTextAreaElement : Type where [external]

export
SafeCast HTMLTextAreaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTextAreaElement"

export ToJS HTMLTextAreaElement where toJS = believe_me
export FromJS HTMLTextAreaElement where fromJS = safeCast
export data HTMLTimeElement : Type where [external]

export
SafeCast HTMLTimeElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTimeElement"

export ToJS HTMLTimeElement where toJS = believe_me
export FromJS HTMLTimeElement where fromJS = safeCast
export data HTMLTitleElement : Type where [external]

export
SafeCast HTMLTitleElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTitleElement"

export ToJS HTMLTitleElement where toJS = believe_me
export FromJS HTMLTitleElement where fromJS = safeCast
export data HTMLTrackElement : Type where [external]

export
SafeCast HTMLTrackElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTrackElement"

export ToJS HTMLTrackElement where toJS = believe_me
export FromJS HTMLTrackElement where fromJS = safeCast
export data HTMLUListElement : Type where [external]

export
SafeCast HTMLUListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLUListElement"

export ToJS HTMLUListElement where toJS = believe_me
export FromJS HTMLUListElement where fromJS = safeCast
export data HTMLUnknownElement : Type where [external]

export
SafeCast HTMLUnknownElement where
  safeCast = unsafeCastOnPrototypeName "HTMLUnknownElement"

export ToJS HTMLUnknownElement where toJS = believe_me
export FromJS HTMLUnknownElement where fromJS = safeCast
export data HTMLVideoElement : Type where [external]

export
SafeCast HTMLVideoElement where
  safeCast = unsafeCastOnPrototypeName "HTMLVideoElement"

export ToJS HTMLVideoElement where toJS = believe_me
export FromJS HTMLVideoElement where fromJS = safeCast
export data HashChangeEvent : Type where [external]

export
SafeCast HashChangeEvent where
  safeCast = unsafeCastOnPrototypeName "HashChangeEvent"

export ToJS HashChangeEvent where toJS = believe_me
export FromJS HashChangeEvent where fromJS = safeCast
export data History : Type where [external]

export
SafeCast History where
  safeCast = unsafeCastOnPrototypeName "History"

export ToJS History where toJS = believe_me
export FromJS History where fromJS = safeCast
export data ImageBitmap : Type where [external]

export
SafeCast ImageBitmap where
  safeCast = unsafeCastOnPrototypeName "ImageBitmap"

export ToJS ImageBitmap where toJS = believe_me
export FromJS ImageBitmap where fromJS = safeCast
export data ImageBitmapRenderingContext : Type where [external]

export
SafeCast ImageBitmapRenderingContext where
  safeCast = unsafeCastOnPrototypeName "ImageBitmapRenderingContext"

export ToJS ImageBitmapRenderingContext where toJS = believe_me
export FromJS ImageBitmapRenderingContext where fromJS = safeCast
export data ImageData : Type where [external]

export
SafeCast ImageData where
  safeCast = unsafeCastOnPrototypeName "ImageData"

export ToJS ImageData where toJS = believe_me
export FromJS ImageData where fromJS = safeCast
export data Location : Type where [external]

export
SafeCast Location where
  safeCast = unsafeCastOnPrototypeName "Location"

export ToJS Location where toJS = believe_me
export FromJS Location where fromJS = safeCast
export data MediaError : Type where [external]

export
SafeCast MediaError where
  safeCast = unsafeCastOnPrototypeName "MediaError"

export ToJS MediaError where toJS = believe_me
export FromJS MediaError where fromJS = safeCast
export data MessageChannel : Type where [external]

export
SafeCast MessageChannel where
  safeCast = unsafeCastOnPrototypeName "MessageChannel"

export ToJS MessageChannel where toJS = believe_me
export FromJS MessageChannel where fromJS = safeCast
export data MessageEvent : Type where [external]

export
SafeCast MessageEvent where
  safeCast = unsafeCastOnPrototypeName "MessageEvent"

export ToJS MessageEvent where toJS = believe_me
export FromJS MessageEvent where fromJS = safeCast
export data MessagePort : Type where [external]

export
SafeCast MessagePort where
  safeCast = unsafeCastOnPrototypeName "MessagePort"

export ToJS MessagePort where toJS = believe_me
export FromJS MessagePort where fromJS = safeCast
export data MimeType : Type where [external]

export
SafeCast MimeType where
  safeCast = unsafeCastOnPrototypeName "MimeType"

export ToJS MimeType where toJS = believe_me
export FromJS MimeType where fromJS = safeCast
export data MimeTypeArray : Type where [external]

export
SafeCast MimeTypeArray where
  safeCast = unsafeCastOnPrototypeName "MimeTypeArray"

export ToJS MimeTypeArray where toJS = believe_me
export FromJS MimeTypeArray where fromJS = safeCast
export data Navigator : Type where [external]

export
SafeCast Navigator where
  safeCast = unsafeCastOnPrototypeName "Navigator"

export ToJS Navigator where toJS = believe_me
export FromJS Navigator where fromJS = safeCast
export data OffscreenCanvas : Type where [external]

export
SafeCast OffscreenCanvas where
  safeCast = unsafeCastOnPrototypeName "OffscreenCanvas"

export ToJS OffscreenCanvas where toJS = believe_me
export FromJS OffscreenCanvas where fromJS = safeCast
export data OffscreenCanvasRenderingContext2D : Type where [external]

export
SafeCast OffscreenCanvasRenderingContext2D where
  safeCast = unsafeCastOnPrototypeName "OffscreenCanvasRenderingContext2D"

export ToJS OffscreenCanvasRenderingContext2D where toJS = believe_me
export FromJS OffscreenCanvasRenderingContext2D where fromJS = safeCast
export data PageTransitionEvent : Type where [external]

export
SafeCast PageTransitionEvent where
  safeCast = unsafeCastOnPrototypeName "PageTransitionEvent"

export ToJS PageTransitionEvent where toJS = believe_me
export FromJS PageTransitionEvent where fromJS = safeCast
export data Path2D : Type where [external]

export
SafeCast Path2D where
  safeCast = unsafeCastOnPrototypeName "Path2D"

export ToJS Path2D where toJS = believe_me
export FromJS Path2D where fromJS = safeCast
export data Plugin : Type where [external]

export
SafeCast Plugin where
  safeCast = unsafeCastOnPrototypeName "Plugin"

export ToJS Plugin where toJS = believe_me
export FromJS Plugin where fromJS = safeCast
export data PluginArray : Type where [external]

export
SafeCast PluginArray where
  safeCast = unsafeCastOnPrototypeName "PluginArray"

export ToJS PluginArray where toJS = believe_me
export FromJS PluginArray where fromJS = safeCast
export data PopStateEvent : Type where [external]

export
SafeCast PopStateEvent where
  safeCast = unsafeCastOnPrototypeName "PopStateEvent"

export ToJS PopStateEvent where toJS = believe_me
export FromJS PopStateEvent where fromJS = safeCast
export data PromiseRejectionEvent : Type where [external]

export
SafeCast PromiseRejectionEvent where
  safeCast = unsafeCastOnPrototypeName "PromiseRejectionEvent"

export ToJS PromiseRejectionEvent where toJS = believe_me
export FromJS PromiseRejectionEvent where fromJS = safeCast
export data RadioNodeList : Type where [external]

export
SafeCast RadioNodeList where
  safeCast = unsafeCastOnPrototypeName "RadioNodeList"

export ToJS RadioNodeList where toJS = believe_me
export FromJS RadioNodeList where fromJS = safeCast
export data SharedWorker : Type where [external]

export
SafeCast SharedWorker where
  safeCast = unsafeCastOnPrototypeName "SharedWorker"

export ToJS SharedWorker where toJS = believe_me
export FromJS SharedWorker where fromJS = safeCast
export data SharedWorkerGlobalScope : Type where [external]

export
SafeCast SharedWorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "SharedWorkerGlobalScope"

export ToJS SharedWorkerGlobalScope where toJS = believe_me
export FromJS SharedWorkerGlobalScope where fromJS = safeCast
export data Storage : Type where [external]

export
SafeCast Storage where
  safeCast = unsafeCastOnPrototypeName "Storage"

export ToJS Storage where toJS = believe_me
export FromJS Storage where fromJS = safeCast
export data StorageEvent : Type where [external]

export
SafeCast StorageEvent where
  safeCast = unsafeCastOnPrototypeName "StorageEvent"

export ToJS StorageEvent where toJS = believe_me
export FromJS StorageEvent where fromJS = safeCast
export data SubmitEvent : Type where [external]

export
SafeCast SubmitEvent where
  safeCast = unsafeCastOnPrototypeName "SubmitEvent"

export ToJS SubmitEvent where toJS = believe_me
export FromJS SubmitEvent where fromJS = safeCast
export data TextMetrics : Type where [external]

export
SafeCast TextMetrics where
  safeCast = unsafeCastOnPrototypeName "TextMetrics"

export ToJS TextMetrics where toJS = believe_me
export FromJS TextMetrics where fromJS = safeCast
export data TextTrack : Type where [external]

export
SafeCast TextTrack where
  safeCast = unsafeCastOnPrototypeName "TextTrack"

export ToJS TextTrack where toJS = believe_me
export FromJS TextTrack where fromJS = safeCast
export data TextTrackCue : Type where [external]

export
SafeCast TextTrackCue where
  safeCast = unsafeCastOnPrototypeName "TextTrackCue"

export ToJS TextTrackCue where toJS = believe_me
export FromJS TextTrackCue where fromJS = safeCast
export data TextTrackCueList : Type where [external]

export
SafeCast TextTrackCueList where
  safeCast = unsafeCastOnPrototypeName "TextTrackCueList"

export ToJS TextTrackCueList where toJS = believe_me
export FromJS TextTrackCueList where fromJS = safeCast
export data TextTrackList : Type where [external]

export
SafeCast TextTrackList where
  safeCast = unsafeCastOnPrototypeName "TextTrackList"

export ToJS TextTrackList where toJS = believe_me
export FromJS TextTrackList where fromJS = safeCast
export data TimeRanges : Type where [external]

export
SafeCast TimeRanges where
  safeCast = unsafeCastOnPrototypeName "TimeRanges"

export ToJS TimeRanges where toJS = believe_me
export FromJS TimeRanges where fromJS = safeCast
export data TrackEvent : Type where [external]

export
SafeCast TrackEvent where
  safeCast = unsafeCastOnPrototypeName "TrackEvent"

export ToJS TrackEvent where toJS = believe_me
export FromJS TrackEvent where fromJS = safeCast
export data ValidityState : Type where [external]

export
SafeCast ValidityState where
  safeCast = unsafeCastOnPrototypeName "ValidityState"

export ToJS ValidityState where toJS = believe_me
export FromJS ValidityState where fromJS = safeCast
export data VideoTrack : Type where [external]

export
SafeCast VideoTrack where
  safeCast = unsafeCastOnPrototypeName "VideoTrack"

export ToJS VideoTrack where toJS = believe_me
export FromJS VideoTrack where fromJS = safeCast
export data VideoTrackList : Type where [external]

export
SafeCast VideoTrackList where
  safeCast = unsafeCastOnPrototypeName "VideoTrackList"

export ToJS VideoTrackList where toJS = believe_me
export FromJS VideoTrackList where fromJS = safeCast
export data WebSocket : Type where [external]

export
SafeCast WebSocket where
  safeCast = unsafeCastOnPrototypeName "WebSocket"

export ToJS WebSocket where toJS = believe_me
export FromJS WebSocket where fromJS = safeCast
export data Window : Type where [external]

export
SafeCast Window where
  safeCast = unsafeCastOnPrototypeName "Window"

export ToJS Window where toJS = believe_me
export FromJS Window where fromJS = safeCast
export data Worker : Type where [external]

export
SafeCast Worker where
  safeCast = unsafeCastOnPrototypeName "Worker"

export ToJS Worker where toJS = believe_me
export FromJS Worker where fromJS = safeCast
export data WorkerGlobalScope : Type where [external]

export
SafeCast WorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "WorkerGlobalScope"

export ToJS WorkerGlobalScope where toJS = believe_me
export FromJS WorkerGlobalScope where fromJS = safeCast
export data WorkerLocation : Type where [external]

export
SafeCast WorkerLocation where
  safeCast = unsafeCastOnPrototypeName "WorkerLocation"

export ToJS WorkerLocation where toJS = believe_me
export FromJS WorkerLocation where fromJS = safeCast
export data WorkerNavigator : Type where [external]

export
SafeCast WorkerNavigator where
  safeCast = unsafeCastOnPrototypeName "WorkerNavigator"

export ToJS WorkerNavigator where toJS = believe_me
export FromJS WorkerNavigator where fromJS = safeCast
export data Worklet : Type where [external]

export
SafeCast Worklet where
  safeCast = unsafeCastOnPrototypeName "Worklet"

export ToJS Worklet where toJS = believe_me
export FromJS Worklet where fromJS = safeCast
export data WorkletGlobalScope : Type where [external]

export
SafeCast WorkletGlobalScope where
  safeCast = unsafeCastOnPrototypeName "WorkletGlobalScope"

export ToJS WorkletGlobalScope where toJS = believe_me
export FromJS WorkletGlobalScope where fromJS = safeCast

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------
export data ARIAMixin : Type where [external]

export
SafeCast ARIAMixin where
  safeCast = unsafeCastOnPrototypeName "ARIAMixin"

export ToJS ARIAMixin where toJS = believe_me
export FromJS ARIAMixin where fromJS = safeCast
export data AbstractWorker : Type where [external]

export
SafeCast AbstractWorker where
  safeCast = unsafeCastOnPrototypeName "AbstractWorker"

export ToJS AbstractWorker where toJS = believe_me
export FromJS AbstractWorker where fromJS = safeCast
export data CanvasCompositing : Type where [external]

export
SafeCast CanvasCompositing where
  safeCast = unsafeCastOnPrototypeName "CanvasCompositing"

export ToJS CanvasCompositing where toJS = believe_me
export FromJS CanvasCompositing where fromJS = safeCast
export data CanvasDrawImage : Type where [external]

export
SafeCast CanvasDrawImage where
  safeCast = unsafeCastOnPrototypeName "CanvasDrawImage"

export ToJS CanvasDrawImage where toJS = believe_me
export FromJS CanvasDrawImage where fromJS = safeCast
export data CanvasDrawPath : Type where [external]

export
SafeCast CanvasDrawPath where
  safeCast = unsafeCastOnPrototypeName "CanvasDrawPath"

export ToJS CanvasDrawPath where toJS = believe_me
export FromJS CanvasDrawPath where fromJS = safeCast
export data CanvasFillStrokeStyles : Type where [external]

export
SafeCast CanvasFillStrokeStyles where
  safeCast = unsafeCastOnPrototypeName "CanvasFillStrokeStyles"

export ToJS CanvasFillStrokeStyles where toJS = believe_me
export FromJS CanvasFillStrokeStyles where fromJS = safeCast
export data CanvasFilters : Type where [external]

export
SafeCast CanvasFilters where
  safeCast = unsafeCastOnPrototypeName "CanvasFilters"

export ToJS CanvasFilters where toJS = believe_me
export FromJS CanvasFilters where fromJS = safeCast
export data CanvasImageData : Type where [external]

export
SafeCast CanvasImageData where
  safeCast = unsafeCastOnPrototypeName "CanvasImageData"

export ToJS CanvasImageData where toJS = believe_me
export FromJS CanvasImageData where fromJS = safeCast
export data CanvasImageSmoothing : Type where [external]

export
SafeCast CanvasImageSmoothing where
  safeCast = unsafeCastOnPrototypeName "CanvasImageSmoothing"

export ToJS CanvasImageSmoothing where toJS = believe_me
export FromJS CanvasImageSmoothing where fromJS = safeCast
export data CanvasPath : Type where [external]

export
SafeCast CanvasPath where
  safeCast = unsafeCastOnPrototypeName "CanvasPath"

export ToJS CanvasPath where toJS = believe_me
export FromJS CanvasPath where fromJS = safeCast
export data CanvasPathDrawingStyles : Type where [external]

export
SafeCast CanvasPathDrawingStyles where
  safeCast = unsafeCastOnPrototypeName "CanvasPathDrawingStyles"

export ToJS CanvasPathDrawingStyles where toJS = believe_me
export FromJS CanvasPathDrawingStyles where fromJS = safeCast
export data CanvasRect : Type where [external]

export
SafeCast CanvasRect where
  safeCast = unsafeCastOnPrototypeName "CanvasRect"

export ToJS CanvasRect where toJS = believe_me
export FromJS CanvasRect where fromJS = safeCast
export data CanvasShadowStyles : Type where [external]

export
SafeCast CanvasShadowStyles where
  safeCast = unsafeCastOnPrototypeName "CanvasShadowStyles"

export ToJS CanvasShadowStyles where toJS = believe_me
export FromJS CanvasShadowStyles where fromJS = safeCast
export data CanvasState : Type where [external]

export
SafeCast CanvasState where
  safeCast = unsafeCastOnPrototypeName "CanvasState"

export ToJS CanvasState where toJS = believe_me
export FromJS CanvasState where fromJS = safeCast
export data CanvasText : Type where [external]

export
SafeCast CanvasText where
  safeCast = unsafeCastOnPrototypeName "CanvasText"

export ToJS CanvasText where toJS = believe_me
export FromJS CanvasText where fromJS = safeCast
export data CanvasTextDrawingStyles : Type where [external]

export
SafeCast CanvasTextDrawingStyles where
  safeCast = unsafeCastOnPrototypeName "CanvasTextDrawingStyles"

export ToJS CanvasTextDrawingStyles where toJS = believe_me
export FromJS CanvasTextDrawingStyles where fromJS = safeCast
export data CanvasTransform : Type where [external]

export
SafeCast CanvasTransform where
  safeCast = unsafeCastOnPrototypeName "CanvasTransform"

export ToJS CanvasTransform where toJS = believe_me
export FromJS CanvasTransform where fromJS = safeCast
export data CanvasUserInterface : Type where [external]

export
SafeCast CanvasUserInterface where
  safeCast = unsafeCastOnPrototypeName "CanvasUserInterface"

export ToJS CanvasUserInterface where toJS = believe_me
export FromJS CanvasUserInterface where fromJS = safeCast
export data DocumentAndElementEventHandlers : Type where [external]

export
SafeCast DocumentAndElementEventHandlers where
  safeCast = unsafeCastOnPrototypeName "DocumentAndElementEventHandlers"

export ToJS DocumentAndElementEventHandlers where toJS = believe_me
export FromJS DocumentAndElementEventHandlers where fromJS = safeCast
export data ElementContentEditable : Type where [external]

export
SafeCast ElementContentEditable where
  safeCast = unsafeCastOnPrototypeName "ElementContentEditable"

export ToJS ElementContentEditable where toJS = believe_me
export FromJS ElementContentEditable where fromJS = safeCast
export data GlobalEventHandlers : Type where [external]

export
SafeCast GlobalEventHandlers where
  safeCast = unsafeCastOnPrototypeName "GlobalEventHandlers"

export ToJS GlobalEventHandlers where toJS = believe_me
export FromJS GlobalEventHandlers where fromJS = safeCast
export data HTMLHyperlinkElementUtils : Type where [external]

export
SafeCast HTMLHyperlinkElementUtils where
  safeCast = unsafeCastOnPrototypeName "HTMLHyperlinkElementUtils"

export ToJS HTMLHyperlinkElementUtils where toJS = believe_me
export FromJS HTMLHyperlinkElementUtils where fromJS = safeCast
export data HTMLOrSVGElement : Type where [external]

export
SafeCast HTMLOrSVGElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOrSVGElement"

export ToJS HTMLOrSVGElement where toJS = believe_me
export FromJS HTMLOrSVGElement where fromJS = safeCast
export data NavigatorConcurrentHardware : Type where [external]

export
SafeCast NavigatorConcurrentHardware where
  safeCast = unsafeCastOnPrototypeName "NavigatorConcurrentHardware"

export ToJS NavigatorConcurrentHardware where toJS = believe_me
export FromJS NavigatorConcurrentHardware where fromJS = safeCast
export data NavigatorContentUtils : Type where [external]

export
SafeCast NavigatorContentUtils where
  safeCast = unsafeCastOnPrototypeName "NavigatorContentUtils"

export ToJS NavigatorContentUtils where toJS = believe_me
export FromJS NavigatorContentUtils where fromJS = safeCast
export data NavigatorCookies : Type where [external]

export
SafeCast NavigatorCookies where
  safeCast = unsafeCastOnPrototypeName "NavigatorCookies"

export ToJS NavigatorCookies where toJS = believe_me
export FromJS NavigatorCookies where fromJS = safeCast
export data NavigatorID : Type where [external]

export
SafeCast NavigatorID where
  safeCast = unsafeCastOnPrototypeName "NavigatorID"

export ToJS NavigatorID where toJS = believe_me
export FromJS NavigatorID where fromJS = safeCast
export data NavigatorLanguage : Type where [external]

export
SafeCast NavigatorLanguage where
  safeCast = unsafeCastOnPrototypeName "NavigatorLanguage"

export ToJS NavigatorLanguage where toJS = believe_me
export FromJS NavigatorLanguage where fromJS = safeCast
export data NavigatorOnLine : Type where [external]

export
SafeCast NavigatorOnLine where
  safeCast = unsafeCastOnPrototypeName "NavigatorOnLine"

export ToJS NavigatorOnLine where toJS = believe_me
export FromJS NavigatorOnLine where fromJS = safeCast
export data NavigatorPlugins : Type where [external]

export
SafeCast NavigatorPlugins where
  safeCast = unsafeCastOnPrototypeName "NavigatorPlugins"

export ToJS NavigatorPlugins where toJS = believe_me
export FromJS NavigatorPlugins where fromJS = safeCast
export data WindowEventHandlers : Type where [external]

export
SafeCast WindowEventHandlers where
  safeCast = unsafeCastOnPrototypeName "WindowEventHandlers"

export ToJS WindowEventHandlers where toJS = believe_me
export FromJS WindowEventHandlers where fromJS = safeCast

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------
export data AssignedNodesOptions : Type where [external]

export
SafeCast AssignedNodesOptions where
  safeCast = unsafeCastOnPrototypeName "AssignedNodesOptions"

export ToJS AssignedNodesOptions where toJS = believe_me
export FromJS AssignedNodesOptions where fromJS = safeCast
export data CanvasRenderingContext2DSettings : Type where [external]

export
SafeCast CanvasRenderingContext2DSettings where
  safeCast = unsafeCastOnPrototypeName "CanvasRenderingContext2DSettings"

export ToJS CanvasRenderingContext2DSettings where toJS = believe_me
export FromJS CanvasRenderingContext2DSettings where fromJS = safeCast
export data CloseEventInit : Type where [external]

export
SafeCast CloseEventInit where
  safeCast = unsafeCastOnPrototypeName "CloseEventInit"

export ToJS CloseEventInit where toJS = believe_me
export FromJS CloseEventInit where fromJS = safeCast
export data DragEventInit : Type where [external]

export
SafeCast DragEventInit where
  safeCast = unsafeCastOnPrototypeName "DragEventInit"

export ToJS DragEventInit where toJS = believe_me
export FromJS DragEventInit where fromJS = safeCast
export data ElementDefinitionOptions : Type where [external]

export
SafeCast ElementDefinitionOptions where
  safeCast = unsafeCastOnPrototypeName "ElementDefinitionOptions"

export ToJS ElementDefinitionOptions where toJS = believe_me
export FromJS ElementDefinitionOptions where fromJS = safeCast
export data ErrorEventInit : Type where [external]

export
SafeCast ErrorEventInit where
  safeCast = unsafeCastOnPrototypeName "ErrorEventInit"

export ToJS ErrorEventInit where toJS = believe_me
export FromJS ErrorEventInit where fromJS = safeCast
export data EventSourceInit : Type where [external]

export
SafeCast EventSourceInit where
  safeCast = unsafeCastOnPrototypeName "EventSourceInit"

export ToJS EventSourceInit where toJS = believe_me
export FromJS EventSourceInit where fromJS = safeCast
export data FocusOptions : Type where [external]

export
SafeCast FocusOptions where
  safeCast = unsafeCastOnPrototypeName "FocusOptions"

export ToJS FocusOptions where toJS = believe_me
export FromJS FocusOptions where fromJS = safeCast
export data FormDataEventInit : Type where [external]

export
SafeCast FormDataEventInit where
  safeCast = unsafeCastOnPrototypeName "FormDataEventInit"

export ToJS FormDataEventInit where toJS = believe_me
export FromJS FormDataEventInit where fromJS = safeCast
export data HashChangeEventInit : Type where [external]

export
SafeCast HashChangeEventInit where
  safeCast = unsafeCastOnPrototypeName "HashChangeEventInit"

export ToJS HashChangeEventInit where toJS = believe_me
export FromJS HashChangeEventInit where fromJS = safeCast
export data ImageBitmapOptions : Type where [external]

export
SafeCast ImageBitmapOptions where
  safeCast = unsafeCastOnPrototypeName "ImageBitmapOptions"

export ToJS ImageBitmapOptions where toJS = believe_me
export FromJS ImageBitmapOptions where fromJS = safeCast
export data ImageBitmapRenderingContextSettings : Type where [external]

export
SafeCast ImageBitmapRenderingContextSettings where
  safeCast = unsafeCastOnPrototypeName "ImageBitmapRenderingContextSettings"

export ToJS ImageBitmapRenderingContextSettings where toJS = believe_me
export FromJS ImageBitmapRenderingContextSettings where fromJS = safeCast
export data ImageEncodeOptions : Type where [external]

export
SafeCast ImageEncodeOptions where
  safeCast = unsafeCastOnPrototypeName "ImageEncodeOptions"

export ToJS ImageEncodeOptions where toJS = believe_me
export FromJS ImageEncodeOptions where fromJS = safeCast
export data MessageEventInit : Type where [external]

export
SafeCast MessageEventInit where
  safeCast = unsafeCastOnPrototypeName "MessageEventInit"

export ToJS MessageEventInit where toJS = believe_me
export FromJS MessageEventInit where fromJS = safeCast
export data PageTransitionEventInit : Type where [external]

export
SafeCast PageTransitionEventInit where
  safeCast = unsafeCastOnPrototypeName "PageTransitionEventInit"

export ToJS PageTransitionEventInit where toJS = believe_me
export FromJS PageTransitionEventInit where fromJS = safeCast
export data PopStateEventInit : Type where [external]

export
SafeCast PopStateEventInit where
  safeCast = unsafeCastOnPrototypeName "PopStateEventInit"

export ToJS PopStateEventInit where toJS = believe_me
export FromJS PopStateEventInit where fromJS = safeCast
export data PostMessageOptions : Type where [external]

export
SafeCast PostMessageOptions where
  safeCast = unsafeCastOnPrototypeName "PostMessageOptions"

export ToJS PostMessageOptions where toJS = believe_me
export FromJS PostMessageOptions where fromJS = safeCast
export data PromiseRejectionEventInit : Type where [external]

export
SafeCast PromiseRejectionEventInit where
  safeCast = unsafeCastOnPrototypeName "PromiseRejectionEventInit"

export ToJS PromiseRejectionEventInit where toJS = believe_me
export FromJS PromiseRejectionEventInit where fromJS = safeCast
export data StorageEventInit : Type where [external]

export
SafeCast StorageEventInit where
  safeCast = unsafeCastOnPrototypeName "StorageEventInit"

export ToJS StorageEventInit where toJS = believe_me
export FromJS StorageEventInit where fromJS = safeCast
export data SubmitEventInit : Type where [external]

export
SafeCast SubmitEventInit where
  safeCast = unsafeCastOnPrototypeName "SubmitEventInit"

export ToJS SubmitEventInit where toJS = believe_me
export FromJS SubmitEventInit where fromJS = safeCast
export data TrackEventInit : Type where [external]

export
SafeCast TrackEventInit where
  safeCast = unsafeCastOnPrototypeName "TrackEventInit"

export ToJS TrackEventInit where toJS = believe_me
export FromJS TrackEventInit where fromJS = safeCast
export data ValidityStateFlags : Type where [external]

export
SafeCast ValidityStateFlags where
  safeCast = unsafeCastOnPrototypeName "ValidityStateFlags"

export ToJS ValidityStateFlags where toJS = believe_me
export FromJS ValidityStateFlags where fromJS = safeCast
export data WindowPostMessageOptions : Type where [external]

export
SafeCast WindowPostMessageOptions where
  safeCast = unsafeCastOnPrototypeName "WindowPostMessageOptions"

export ToJS WindowPostMessageOptions where toJS = believe_me
export FromJS WindowPostMessageOptions where fromJS = safeCast
export data WorkerOptions : Type where [external]

export
SafeCast WorkerOptions where
  safeCast = unsafeCastOnPrototypeName "WorkerOptions"

export ToJS WorkerOptions where toJS = believe_me
export FromJS WorkerOptions where fromJS = safeCast
export data WorkletOptions : Type where [external]

export
SafeCast WorkletOptions where
  safeCast = unsafeCastOnPrototypeName "WorkletOptions"

export ToJS WorkletOptions where toJS = believe_me
export FromJS WorkletOptions where fromJS = safeCast