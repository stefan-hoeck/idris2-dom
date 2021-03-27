module Web.HtmlTypes
import JS.Util

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
    fromJS = fromMaybe TextHtml . read . fromJS

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
    fromJS = fromMaybe Loading . read . fromJS

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
    fromJS = fromMaybe Empty . read . fromJS

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
    fromJS = fromMaybe Auto . read . fromJS

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
    fromJS = fromMaybe None . read . fromJS

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
    fromJS = fromMaybe None . read . fromJS

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
    fromJS = fromMaybe None . read . fromJS

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
    fromJS = fromMaybe Pixelated . read . fromJS

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
    fromJS = fromMaybe Nonzero . read . fromJS

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
    fromJS = fromMaybe Low . read . fromJS

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
    fromJS = fromMaybe Butt . read . fromJS

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
    fromJS = fromMaybe Round . read . fromJS

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
    fromJS = fromMaybe Start . read . fromJS

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
    fromJS = fromMaybe Top . read . fromJS

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
    fromJS = fromMaybe Ltr . read . fromJS

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
    fromJS = fromMaybe TwoD . read . fromJS

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
    fromJS = fromMaybe Disabled . read . fromJS

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
    fromJS = fromMaybe Subtitles . read . fromJS

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
    fromJS = fromMaybe Blob . read . fromJS

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
    fromJS = fromMaybe Classic . read . fromJS

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
    fromJS = fromMaybe Select . read . fromJS

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export
data AudioTrack  : Type where [external]

export
ToJS AudioTrack where
  toJS = believe_me

export
FromJS AudioTrack where
  fromJS = believe_me
export
data AudioTrackList  : Type where [external]

export
ToJS AudioTrackList where
  toJS = believe_me

export
FromJS AudioTrackList where
  fromJS = believe_me
export
data BarProp  : Type where [external]

export
ToJS BarProp where
  toJS = believe_me

export
FromJS BarProp where
  fromJS = believe_me
export
data BeforeUnloadEvent  : Type where [external]

export
ToJS BeforeUnloadEvent where
  toJS = believe_me

export
FromJS BeforeUnloadEvent where
  fromJS = believe_me
export
data BroadcastChannel  : Type where [external]

export
ToJS BroadcastChannel where
  toJS = believe_me

export
FromJS BroadcastChannel where
  fromJS = believe_me
export
data CanvasGradient  : Type where [external]

export
ToJS CanvasGradient where
  toJS = believe_me

export
FromJS CanvasGradient where
  fromJS = believe_me
export
data CanvasPattern  : Type where [external]

export
ToJS CanvasPattern where
  toJS = believe_me

export
FromJS CanvasPattern where
  fromJS = believe_me
export
data CanvasRenderingContext2D  : Type where [external]

export
ToJS CanvasRenderingContext2D where
  toJS = believe_me

export
FromJS CanvasRenderingContext2D where
  fromJS = believe_me
export
data CloseEvent  : Type where [external]

export
ToJS CloseEvent where
  toJS = believe_me

export
FromJS CloseEvent where
  fromJS = believe_me
export
data CustomElementRegistry  : Type where [external]

export
ToJS CustomElementRegistry where
  toJS = believe_me

export
FromJS CustomElementRegistry where
  fromJS = believe_me
export
data DOMParser  : Type where [external]

export
ToJS DOMParser where
  toJS = believe_me

export
FromJS DOMParser where
  fromJS = believe_me
export
data DOMStringList  : Type where [external]

export
ToJS DOMStringList where
  toJS = believe_me

export
FromJS DOMStringList where
  fromJS = believe_me
export
data DOMStringMap  : Type where [external]

export
ToJS DOMStringMap where
  toJS = believe_me

export
FromJS DOMStringMap where
  fromJS = believe_me
export
data DataTransfer  : Type where [external]

export
ToJS DataTransfer where
  toJS = believe_me

export
FromJS DataTransfer where
  fromJS = believe_me
export
data DataTransferItem  : Type where [external]

export
ToJS DataTransferItem where
  toJS = believe_me

export
FromJS DataTransferItem where
  fromJS = believe_me
export
data DataTransferItemList  : Type where [external]

export
ToJS DataTransferItemList where
  toJS = believe_me

export
FromJS DataTransferItemList where
  fromJS = believe_me
export
data DedicatedWorkerGlobalScope  : Type where [external]

export
ToJS DedicatedWorkerGlobalScope where
  toJS = believe_me

export
FromJS DedicatedWorkerGlobalScope where
  fromJS = believe_me
export
data DragEvent  : Type where [external]

export
ToJS DragEvent where
  toJS = believe_me

export
FromJS DragEvent where
  fromJS = believe_me
export
data ElementInternals  : Type where [external]

export
ToJS ElementInternals where
  toJS = believe_me

export
FromJS ElementInternals where
  fromJS = believe_me
export
data ErrorEvent  : Type where [external]

export
ToJS ErrorEvent where
  toJS = believe_me

export
FromJS ErrorEvent where
  fromJS = believe_me
export
data EventSource  : Type where [external]

export
ToJS EventSource where
  toJS = believe_me

export
FromJS EventSource where
  fromJS = believe_me
export
data External  : Type where [external]

export
ToJS External where
  toJS = believe_me

export
FromJS External where
  fromJS = believe_me
export
data FormDataEvent  : Type where [external]

export
ToJS FormDataEvent where
  toJS = believe_me

export
FromJS FormDataEvent where
  fromJS = believe_me
export
data HTMLAllCollection  : Type where [external]

export
ToJS HTMLAllCollection where
  toJS = believe_me

export
FromJS HTMLAllCollection where
  fromJS = believe_me
export
data HTMLAnchorElement  : Type where [external]

export
ToJS HTMLAnchorElement where
  toJS = believe_me

export
FromJS HTMLAnchorElement where
  fromJS = believe_me
export
data HTMLAreaElement  : Type where [external]

export
ToJS HTMLAreaElement where
  toJS = believe_me

export
FromJS HTMLAreaElement where
  fromJS = believe_me
export
data HTMLAudioElement  : Type where [external]

export
ToJS HTMLAudioElement where
  toJS = believe_me

export
FromJS HTMLAudioElement where
  fromJS = believe_me
export
data HTMLBRElement  : Type where [external]

export
ToJS HTMLBRElement where
  toJS = believe_me

export
FromJS HTMLBRElement where
  fromJS = believe_me
export
data HTMLBaseElement  : Type where [external]

export
ToJS HTMLBaseElement where
  toJS = believe_me

export
FromJS HTMLBaseElement where
  fromJS = believe_me
export
data HTMLBodyElement  : Type where [external]

export
ToJS HTMLBodyElement where
  toJS = believe_me

export
FromJS HTMLBodyElement where
  fromJS = believe_me
export
data HTMLButtonElement  : Type where [external]

export
ToJS HTMLButtonElement where
  toJS = believe_me

export
FromJS HTMLButtonElement where
  fromJS = believe_me
export
data HTMLCanvasElement  : Type where [external]

export
ToJS HTMLCanvasElement where
  toJS = believe_me

export
FromJS HTMLCanvasElement where
  fromJS = believe_me
export
data HTMLDListElement  : Type where [external]

export
ToJS HTMLDListElement where
  toJS = believe_me

export
FromJS HTMLDListElement where
  fromJS = believe_me
export
data HTMLDataElement  : Type where [external]

export
ToJS HTMLDataElement where
  toJS = believe_me

export
FromJS HTMLDataElement where
  fromJS = believe_me
export
data HTMLDataListElement  : Type where [external]

export
ToJS HTMLDataListElement where
  toJS = believe_me

export
FromJS HTMLDataListElement where
  fromJS = believe_me
export
data HTMLDetailsElement  : Type where [external]

export
ToJS HTMLDetailsElement where
  toJS = believe_me

export
FromJS HTMLDetailsElement where
  fromJS = believe_me
export
data HTMLDialogElement  : Type where [external]

export
ToJS HTMLDialogElement where
  toJS = believe_me

export
FromJS HTMLDialogElement where
  fromJS = believe_me
export
data HTMLDirectoryElement  : Type where [external]

export
ToJS HTMLDirectoryElement where
  toJS = believe_me

export
FromJS HTMLDirectoryElement where
  fromJS = believe_me
export
data HTMLDivElement  : Type where [external]

export
ToJS HTMLDivElement where
  toJS = believe_me

export
FromJS HTMLDivElement where
  fromJS = believe_me
export
data HTMLElement  : Type where [external]

export
ToJS HTMLElement where
  toJS = believe_me

export
FromJS HTMLElement where
  fromJS = believe_me
export
data HTMLEmbedElement  : Type where [external]

export
ToJS HTMLEmbedElement where
  toJS = believe_me

export
FromJS HTMLEmbedElement where
  fromJS = believe_me
export
data HTMLFieldSetElement  : Type where [external]

export
ToJS HTMLFieldSetElement where
  toJS = believe_me

export
FromJS HTMLFieldSetElement where
  fromJS = believe_me
export
data HTMLFontElement  : Type where [external]

export
ToJS HTMLFontElement where
  toJS = believe_me

export
FromJS HTMLFontElement where
  fromJS = believe_me
export
data HTMLFormControlsCollection  : Type where [external]

export
ToJS HTMLFormControlsCollection where
  toJS = believe_me

export
FromJS HTMLFormControlsCollection where
  fromJS = believe_me
export
data HTMLFormElement  : Type where [external]

export
ToJS HTMLFormElement where
  toJS = believe_me

export
FromJS HTMLFormElement where
  fromJS = believe_me
export
data HTMLFrameElement  : Type where [external]

export
ToJS HTMLFrameElement where
  toJS = believe_me

export
FromJS HTMLFrameElement where
  fromJS = believe_me
export
data HTMLFrameSetElement  : Type where [external]

export
ToJS HTMLFrameSetElement where
  toJS = believe_me

export
FromJS HTMLFrameSetElement where
  fromJS = believe_me
export
data HTMLHRElement  : Type where [external]

export
ToJS HTMLHRElement where
  toJS = believe_me

export
FromJS HTMLHRElement where
  fromJS = believe_me
export
data HTMLHeadElement  : Type where [external]

export
ToJS HTMLHeadElement where
  toJS = believe_me

export
FromJS HTMLHeadElement where
  fromJS = believe_me
export
data HTMLHeadingElement  : Type where [external]

export
ToJS HTMLHeadingElement where
  toJS = believe_me

export
FromJS HTMLHeadingElement where
  fromJS = believe_me
export
data HTMLHtmlElement  : Type where [external]

export
ToJS HTMLHtmlElement where
  toJS = believe_me

export
FromJS HTMLHtmlElement where
  fromJS = believe_me
export
data HTMLIFrameElement  : Type where [external]

export
ToJS HTMLIFrameElement where
  toJS = believe_me

export
FromJS HTMLIFrameElement where
  fromJS = believe_me
export
data HTMLImageElement  : Type where [external]

export
ToJS HTMLImageElement where
  toJS = believe_me

export
FromJS HTMLImageElement where
  fromJS = believe_me
export
data HTMLInputElement  : Type where [external]

export
ToJS HTMLInputElement where
  toJS = believe_me

export
FromJS HTMLInputElement where
  fromJS = believe_me
export
data HTMLLIElement  : Type where [external]

export
ToJS HTMLLIElement where
  toJS = believe_me

export
FromJS HTMLLIElement where
  fromJS = believe_me
export
data HTMLLabelElement  : Type where [external]

export
ToJS HTMLLabelElement where
  toJS = believe_me

export
FromJS HTMLLabelElement where
  fromJS = believe_me
export
data HTMLLegendElement  : Type where [external]

export
ToJS HTMLLegendElement where
  toJS = believe_me

export
FromJS HTMLLegendElement where
  fromJS = believe_me
export
data HTMLLinkElement  : Type where [external]

export
ToJS HTMLLinkElement where
  toJS = believe_me

export
FromJS HTMLLinkElement where
  fromJS = believe_me
export
data HTMLMapElement  : Type where [external]

export
ToJS HTMLMapElement where
  toJS = believe_me

export
FromJS HTMLMapElement where
  fromJS = believe_me
export
data HTMLMarqueeElement  : Type where [external]

export
ToJS HTMLMarqueeElement where
  toJS = believe_me

export
FromJS HTMLMarqueeElement where
  fromJS = believe_me
export
data HTMLMediaElement  : Type where [external]

export
ToJS HTMLMediaElement where
  toJS = believe_me

export
FromJS HTMLMediaElement where
  fromJS = believe_me
export
data HTMLMenuElement  : Type where [external]

export
ToJS HTMLMenuElement where
  toJS = believe_me

export
FromJS HTMLMenuElement where
  fromJS = believe_me
export
data HTMLMetaElement  : Type where [external]

export
ToJS HTMLMetaElement where
  toJS = believe_me

export
FromJS HTMLMetaElement where
  fromJS = believe_me
export
data HTMLMeterElement  : Type where [external]

export
ToJS HTMLMeterElement where
  toJS = believe_me

export
FromJS HTMLMeterElement where
  fromJS = believe_me
export
data HTMLModElement  : Type where [external]

export
ToJS HTMLModElement where
  toJS = believe_me

export
FromJS HTMLModElement where
  fromJS = believe_me
export
data HTMLOListElement  : Type where [external]

export
ToJS HTMLOListElement where
  toJS = believe_me

export
FromJS HTMLOListElement where
  fromJS = believe_me
export
data HTMLObjectElement  : Type where [external]

export
ToJS HTMLObjectElement where
  toJS = believe_me

export
FromJS HTMLObjectElement where
  fromJS = believe_me
export
data HTMLOptGroupElement  : Type where [external]

export
ToJS HTMLOptGroupElement where
  toJS = believe_me

export
FromJS HTMLOptGroupElement where
  fromJS = believe_me
export
data HTMLOptionElement  : Type where [external]

export
ToJS HTMLOptionElement where
  toJS = believe_me

export
FromJS HTMLOptionElement where
  fromJS = believe_me
export
data HTMLOptionsCollection  : Type where [external]

export
ToJS HTMLOptionsCollection where
  toJS = believe_me

export
FromJS HTMLOptionsCollection where
  fromJS = believe_me
export
data HTMLOutputElement  : Type where [external]

export
ToJS HTMLOutputElement where
  toJS = believe_me

export
FromJS HTMLOutputElement where
  fromJS = believe_me
export
data HTMLParagraphElement  : Type where [external]

export
ToJS HTMLParagraphElement where
  toJS = believe_me

export
FromJS HTMLParagraphElement where
  fromJS = believe_me
export
data HTMLParamElement  : Type where [external]

export
ToJS HTMLParamElement where
  toJS = believe_me

export
FromJS HTMLParamElement where
  fromJS = believe_me
export
data HTMLPictureElement  : Type where [external]

export
ToJS HTMLPictureElement where
  toJS = believe_me

export
FromJS HTMLPictureElement where
  fromJS = believe_me
export
data HTMLPreElement  : Type where [external]

export
ToJS HTMLPreElement where
  toJS = believe_me

export
FromJS HTMLPreElement where
  fromJS = believe_me
export
data HTMLProgressElement  : Type where [external]

export
ToJS HTMLProgressElement where
  toJS = believe_me

export
FromJS HTMLProgressElement where
  fromJS = believe_me
export
data HTMLQuoteElement  : Type where [external]

export
ToJS HTMLQuoteElement where
  toJS = believe_me

export
FromJS HTMLQuoteElement where
  fromJS = believe_me
export
data HTMLScriptElement  : Type where [external]

export
ToJS HTMLScriptElement where
  toJS = believe_me

export
FromJS HTMLScriptElement where
  fromJS = believe_me
export
data HTMLSelectElement  : Type where [external]

export
ToJS HTMLSelectElement where
  toJS = believe_me

export
FromJS HTMLSelectElement where
  fromJS = believe_me
export
data HTMLSlotElement  : Type where [external]

export
ToJS HTMLSlotElement where
  toJS = believe_me

export
FromJS HTMLSlotElement where
  fromJS = believe_me
export
data HTMLSourceElement  : Type where [external]

export
ToJS HTMLSourceElement where
  toJS = believe_me

export
FromJS HTMLSourceElement where
  fromJS = believe_me
export
data HTMLSpanElement  : Type where [external]

export
ToJS HTMLSpanElement where
  toJS = believe_me

export
FromJS HTMLSpanElement where
  fromJS = believe_me
export
data HTMLStyleElement  : Type where [external]

export
ToJS HTMLStyleElement where
  toJS = believe_me

export
FromJS HTMLStyleElement where
  fromJS = believe_me
export
data HTMLTableCaptionElement  : Type where [external]

export
ToJS HTMLTableCaptionElement where
  toJS = believe_me

export
FromJS HTMLTableCaptionElement where
  fromJS = believe_me
export
data HTMLTableCellElement  : Type where [external]

export
ToJS HTMLTableCellElement where
  toJS = believe_me

export
FromJS HTMLTableCellElement where
  fromJS = believe_me
export
data HTMLTableColElement  : Type where [external]

export
ToJS HTMLTableColElement where
  toJS = believe_me

export
FromJS HTMLTableColElement where
  fromJS = believe_me
export
data HTMLTableElement  : Type where [external]

export
ToJS HTMLTableElement where
  toJS = believe_me

export
FromJS HTMLTableElement where
  fromJS = believe_me
export
data HTMLTableRowElement  : Type where [external]

export
ToJS HTMLTableRowElement where
  toJS = believe_me

export
FromJS HTMLTableRowElement where
  fromJS = believe_me
export
data HTMLTableSectionElement  : Type where [external]

export
ToJS HTMLTableSectionElement where
  toJS = believe_me

export
FromJS HTMLTableSectionElement where
  fromJS = believe_me
export
data HTMLTemplateElement  : Type where [external]

export
ToJS HTMLTemplateElement where
  toJS = believe_me

export
FromJS HTMLTemplateElement where
  fromJS = believe_me
export
data HTMLTextAreaElement  : Type where [external]

export
ToJS HTMLTextAreaElement where
  toJS = believe_me

export
FromJS HTMLTextAreaElement where
  fromJS = believe_me
export
data HTMLTimeElement  : Type where [external]

export
ToJS HTMLTimeElement where
  toJS = believe_me

export
FromJS HTMLTimeElement where
  fromJS = believe_me
export
data HTMLTitleElement  : Type where [external]

export
ToJS HTMLTitleElement where
  toJS = believe_me

export
FromJS HTMLTitleElement where
  fromJS = believe_me
export
data HTMLTrackElement  : Type where [external]

export
ToJS HTMLTrackElement where
  toJS = believe_me

export
FromJS HTMLTrackElement where
  fromJS = believe_me
export
data HTMLUListElement  : Type where [external]

export
ToJS HTMLUListElement where
  toJS = believe_me

export
FromJS HTMLUListElement where
  fromJS = believe_me
export
data HTMLUnknownElement  : Type where [external]

export
ToJS HTMLUnknownElement where
  toJS = believe_me

export
FromJS HTMLUnknownElement where
  fromJS = believe_me
export
data HTMLVideoElement  : Type where [external]

export
ToJS HTMLVideoElement where
  toJS = believe_me

export
FromJS HTMLVideoElement where
  fromJS = believe_me
export
data HashChangeEvent  : Type where [external]

export
ToJS HashChangeEvent where
  toJS = believe_me

export
FromJS HashChangeEvent where
  fromJS = believe_me
export
data History  : Type where [external]

export
ToJS History where
  toJS = believe_me

export
FromJS History where
  fromJS = believe_me
export
data ImageBitmap  : Type where [external]

export
ToJS ImageBitmap where
  toJS = believe_me

export
FromJS ImageBitmap where
  fromJS = believe_me
export
data ImageBitmapRenderingContext  : Type where [external]

export
ToJS ImageBitmapRenderingContext where
  toJS = believe_me

export
FromJS ImageBitmapRenderingContext where
  fromJS = believe_me
export
data ImageData  : Type where [external]

export
ToJS ImageData where
  toJS = believe_me

export
FromJS ImageData where
  fromJS = believe_me
export
data Location  : Type where [external]

export
ToJS Location where
  toJS = believe_me

export
FromJS Location where
  fromJS = believe_me
export
data MediaError  : Type where [external]

export
ToJS MediaError where
  toJS = believe_me

export
FromJS MediaError where
  fromJS = believe_me
export
data MessageChannel  : Type where [external]

export
ToJS MessageChannel where
  toJS = believe_me

export
FromJS MessageChannel where
  fromJS = believe_me
export
data MessageEvent  : Type where [external]

export
ToJS MessageEvent where
  toJS = believe_me

export
FromJS MessageEvent where
  fromJS = believe_me
export
data MessagePort  : Type where [external]

export
ToJS MessagePort where
  toJS = believe_me

export
FromJS MessagePort where
  fromJS = believe_me
export
data MimeType  : Type where [external]

export
ToJS MimeType where
  toJS = believe_me

export
FromJS MimeType where
  fromJS = believe_me
export
data MimeTypeArray  : Type where [external]

export
ToJS MimeTypeArray where
  toJS = believe_me

export
FromJS MimeTypeArray where
  fromJS = believe_me
export
data Navigator  : Type where [external]

export
ToJS Navigator where
  toJS = believe_me

export
FromJS Navigator where
  fromJS = believe_me
export
data OffscreenCanvas  : Type where [external]

export
ToJS OffscreenCanvas where
  toJS = believe_me

export
FromJS OffscreenCanvas where
  fromJS = believe_me
export
data OffscreenCanvasRenderingContext2D  : Type where [external]

export
ToJS OffscreenCanvasRenderingContext2D where
  toJS = believe_me

export
FromJS OffscreenCanvasRenderingContext2D where
  fromJS = believe_me
export
data PageTransitionEvent  : Type where [external]

export
ToJS PageTransitionEvent where
  toJS = believe_me

export
FromJS PageTransitionEvent where
  fromJS = believe_me
export
data Path2D  : Type where [external]

export
ToJS Path2D where
  toJS = believe_me

export
FromJS Path2D where
  fromJS = believe_me
export
data Plugin  : Type where [external]

export
ToJS Plugin where
  toJS = believe_me

export
FromJS Plugin where
  fromJS = believe_me
export
data PluginArray  : Type where [external]

export
ToJS PluginArray where
  toJS = believe_me

export
FromJS PluginArray where
  fromJS = believe_me
export
data PopStateEvent  : Type where [external]

export
ToJS PopStateEvent where
  toJS = believe_me

export
FromJS PopStateEvent where
  fromJS = believe_me
export
data PromiseRejectionEvent  : Type where [external]

export
ToJS PromiseRejectionEvent where
  toJS = believe_me

export
FromJS PromiseRejectionEvent where
  fromJS = believe_me
export
data RadioNodeList  : Type where [external]

export
ToJS RadioNodeList where
  toJS = believe_me

export
FromJS RadioNodeList where
  fromJS = believe_me
export
data SharedWorker  : Type where [external]

export
ToJS SharedWorker where
  toJS = believe_me

export
FromJS SharedWorker where
  fromJS = believe_me
export
data SharedWorkerGlobalScope  : Type where [external]

export
ToJS SharedWorkerGlobalScope where
  toJS = believe_me

export
FromJS SharedWorkerGlobalScope where
  fromJS = believe_me
export
data Storage  : Type where [external]

export
ToJS Storage where
  toJS = believe_me

export
FromJS Storage where
  fromJS = believe_me
export
data StorageEvent  : Type where [external]

export
ToJS StorageEvent where
  toJS = believe_me

export
FromJS StorageEvent where
  fromJS = believe_me
export
data SubmitEvent  : Type where [external]

export
ToJS SubmitEvent where
  toJS = believe_me

export
FromJS SubmitEvent where
  fromJS = believe_me
export
data TextMetrics  : Type where [external]

export
ToJS TextMetrics where
  toJS = believe_me

export
FromJS TextMetrics where
  fromJS = believe_me
export
data TextTrack  : Type where [external]

export
ToJS TextTrack where
  toJS = believe_me

export
FromJS TextTrack where
  fromJS = believe_me
export
data TextTrackCue  : Type where [external]

export
ToJS TextTrackCue where
  toJS = believe_me

export
FromJS TextTrackCue where
  fromJS = believe_me
export
data TextTrackCueList  : Type where [external]

export
ToJS TextTrackCueList where
  toJS = believe_me

export
FromJS TextTrackCueList where
  fromJS = believe_me
export
data TextTrackList  : Type where [external]

export
ToJS TextTrackList where
  toJS = believe_me

export
FromJS TextTrackList where
  fromJS = believe_me
export
data TimeRanges  : Type where [external]

export
ToJS TimeRanges where
  toJS = believe_me

export
FromJS TimeRanges where
  fromJS = believe_me
export
data TrackEvent  : Type where [external]

export
ToJS TrackEvent where
  toJS = believe_me

export
FromJS TrackEvent where
  fromJS = believe_me
export
data ValidityState  : Type where [external]

export
ToJS ValidityState where
  toJS = believe_me

export
FromJS ValidityState where
  fromJS = believe_me
export
data VideoTrack  : Type where [external]

export
ToJS VideoTrack where
  toJS = believe_me

export
FromJS VideoTrack where
  fromJS = believe_me
export
data VideoTrackList  : Type where [external]

export
ToJS VideoTrackList where
  toJS = believe_me

export
FromJS VideoTrackList where
  fromJS = believe_me
export
data WebSocket  : Type where [external]

export
ToJS WebSocket where
  toJS = believe_me

export
FromJS WebSocket where
  fromJS = believe_me
export
data Window  : Type where [external]

export
ToJS Window where
  toJS = believe_me

export
FromJS Window where
  fromJS = believe_me
export
data Worker  : Type where [external]

export
ToJS Worker where
  toJS = believe_me

export
FromJS Worker where
  fromJS = believe_me
export
data WorkerGlobalScope  : Type where [external]

export
ToJS WorkerGlobalScope where
  toJS = believe_me

export
FromJS WorkerGlobalScope where
  fromJS = believe_me
export
data WorkerLocation  : Type where [external]

export
ToJS WorkerLocation where
  toJS = believe_me

export
FromJS WorkerLocation where
  fromJS = believe_me
export
data WorkerNavigator  : Type where [external]

export
ToJS WorkerNavigator where
  toJS = believe_me

export
FromJS WorkerNavigator where
  fromJS = believe_me
export
data Worklet  : Type where [external]

export
ToJS Worklet where
  toJS = believe_me

export
FromJS Worklet where
  fromJS = believe_me
export
data WorkletGlobalScope  : Type where [external]

export
ToJS WorkletGlobalScope where
  toJS = believe_me

export
FromJS WorkletGlobalScope where
  fromJS = believe_me

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------
export
data ARIAMixin  : Type where [external]

export
ToJS ARIAMixin where
  toJS = believe_me

export
FromJS ARIAMixin where
  fromJS = believe_me
export
data AbstractWorker  : Type where [external]

export
ToJS AbstractWorker where
  toJS = believe_me

export
FromJS AbstractWorker where
  fromJS = believe_me
export
data CanvasCompositing  : Type where [external]

export
ToJS CanvasCompositing where
  toJS = believe_me

export
FromJS CanvasCompositing where
  fromJS = believe_me
export
data CanvasDrawImage  : Type where [external]

export
ToJS CanvasDrawImage where
  toJS = believe_me

export
FromJS CanvasDrawImage where
  fromJS = believe_me
export
data CanvasDrawPath  : Type where [external]

export
ToJS CanvasDrawPath where
  toJS = believe_me

export
FromJS CanvasDrawPath where
  fromJS = believe_me
export
data CanvasFillStrokeStyles  : Type where [external]

export
ToJS CanvasFillStrokeStyles where
  toJS = believe_me

export
FromJS CanvasFillStrokeStyles where
  fromJS = believe_me
export
data CanvasFilters  : Type where [external]

export
ToJS CanvasFilters where
  toJS = believe_me

export
FromJS CanvasFilters where
  fromJS = believe_me
export
data CanvasImageData  : Type where [external]

export
ToJS CanvasImageData where
  toJS = believe_me

export
FromJS CanvasImageData where
  fromJS = believe_me
export
data CanvasImageSmoothing  : Type where [external]

export
ToJS CanvasImageSmoothing where
  toJS = believe_me

export
FromJS CanvasImageSmoothing where
  fromJS = believe_me
export
data CanvasPath  : Type where [external]

export
ToJS CanvasPath where
  toJS = believe_me

export
FromJS CanvasPath where
  fromJS = believe_me
export
data CanvasPathDrawingStyles  : Type where [external]

export
ToJS CanvasPathDrawingStyles where
  toJS = believe_me

export
FromJS CanvasPathDrawingStyles where
  fromJS = believe_me
export
data CanvasRect  : Type where [external]

export
ToJS CanvasRect where
  toJS = believe_me

export
FromJS CanvasRect where
  fromJS = believe_me
export
data CanvasShadowStyles  : Type where [external]

export
ToJS CanvasShadowStyles where
  toJS = believe_me

export
FromJS CanvasShadowStyles where
  fromJS = believe_me
export
data CanvasState  : Type where [external]

export
ToJS CanvasState where
  toJS = believe_me

export
FromJS CanvasState where
  fromJS = believe_me
export
data CanvasText  : Type where [external]

export
ToJS CanvasText where
  toJS = believe_me

export
FromJS CanvasText where
  fromJS = believe_me
export
data CanvasTextDrawingStyles  : Type where [external]

export
ToJS CanvasTextDrawingStyles where
  toJS = believe_me

export
FromJS CanvasTextDrawingStyles where
  fromJS = believe_me
export
data CanvasTransform  : Type where [external]

export
ToJS CanvasTransform where
  toJS = believe_me

export
FromJS CanvasTransform where
  fromJS = believe_me
export
data CanvasUserInterface  : Type where [external]

export
ToJS CanvasUserInterface where
  toJS = believe_me

export
FromJS CanvasUserInterface where
  fromJS = believe_me
export
data DocumentAndElementEventHandlers  : Type where [external]

export
ToJS DocumentAndElementEventHandlers where
  toJS = believe_me

export
FromJS DocumentAndElementEventHandlers where
  fromJS = believe_me
export
data ElementContentEditable  : Type where [external]

export
ToJS ElementContentEditable where
  toJS = believe_me

export
FromJS ElementContentEditable where
  fromJS = believe_me
export
data GlobalEventHandlers  : Type where [external]

export
ToJS GlobalEventHandlers where
  toJS = believe_me

export
FromJS GlobalEventHandlers where
  fromJS = believe_me
export
data HTMLHyperlinkElementUtils  : Type where [external]

export
ToJS HTMLHyperlinkElementUtils where
  toJS = believe_me

export
FromJS HTMLHyperlinkElementUtils where
  fromJS = believe_me
export
data HTMLOrSVGElement  : Type where [external]

export
ToJS HTMLOrSVGElement where
  toJS = believe_me

export
FromJS HTMLOrSVGElement where
  fromJS = believe_me
export
data NavigatorConcurrentHardware  : Type where [external]

export
ToJS NavigatorConcurrentHardware where
  toJS = believe_me

export
FromJS NavigatorConcurrentHardware where
  fromJS = believe_me
export
data NavigatorContentUtils  : Type where [external]

export
ToJS NavigatorContentUtils where
  toJS = believe_me

export
FromJS NavigatorContentUtils where
  fromJS = believe_me
export
data NavigatorCookies  : Type where [external]

export
ToJS NavigatorCookies where
  toJS = believe_me

export
FromJS NavigatorCookies where
  fromJS = believe_me
export
data NavigatorID  : Type where [external]

export
ToJS NavigatorID where
  toJS = believe_me

export
FromJS NavigatorID where
  fromJS = believe_me
export
data NavigatorLanguage  : Type where [external]

export
ToJS NavigatorLanguage where
  toJS = believe_me

export
FromJS NavigatorLanguage where
  fromJS = believe_me
export
data NavigatorOnLine  : Type where [external]

export
ToJS NavigatorOnLine where
  toJS = believe_me

export
FromJS NavigatorOnLine where
  fromJS = believe_me
export
data NavigatorPlugins  : Type where [external]

export
ToJS NavigatorPlugins where
  toJS = believe_me

export
FromJS NavigatorPlugins where
  fromJS = believe_me
export
data WindowEventHandlers  : Type where [external]

export
ToJS WindowEventHandlers where
  toJS = believe_me

export
FromJS WindowEventHandlers where
  fromJS = believe_me

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------
export
data AssignedNodesOptions  : Type where [external]

export
ToJS AssignedNodesOptions where
  toJS = believe_me

export
FromJS AssignedNodesOptions where
  fromJS = believe_me
export
data CanvasRenderingContext2DSettings  : Type where [external]

export
ToJS CanvasRenderingContext2DSettings where
  toJS = believe_me

export
FromJS CanvasRenderingContext2DSettings where
  fromJS = believe_me
export
data CloseEventInit  : Type where [external]

export
ToJS CloseEventInit where
  toJS = believe_me

export
FromJS CloseEventInit where
  fromJS = believe_me
export
data DragEventInit  : Type where [external]

export
ToJS DragEventInit where
  toJS = believe_me

export
FromJS DragEventInit where
  fromJS = believe_me
export
data ElementDefinitionOptions  : Type where [external]

export
ToJS ElementDefinitionOptions where
  toJS = believe_me

export
FromJS ElementDefinitionOptions where
  fromJS = believe_me
export
data ErrorEventInit  : Type where [external]

export
ToJS ErrorEventInit where
  toJS = believe_me

export
FromJS ErrorEventInit where
  fromJS = believe_me
export
data EventSourceInit  : Type where [external]

export
ToJS EventSourceInit where
  toJS = believe_me

export
FromJS EventSourceInit where
  fromJS = believe_me
export
data FocusOptions  : Type where [external]

export
ToJS FocusOptions where
  toJS = believe_me

export
FromJS FocusOptions where
  fromJS = believe_me
export
data FormDataEventInit  : Type where [external]

export
ToJS FormDataEventInit where
  toJS = believe_me

export
FromJS FormDataEventInit where
  fromJS = believe_me
export
data HashChangeEventInit  : Type where [external]

export
ToJS HashChangeEventInit where
  toJS = believe_me

export
FromJS HashChangeEventInit where
  fromJS = believe_me
export
data ImageBitmapOptions  : Type where [external]

export
ToJS ImageBitmapOptions where
  toJS = believe_me

export
FromJS ImageBitmapOptions where
  fromJS = believe_me
export
data ImageBitmapRenderingContextSettings  : Type where [external]

export
ToJS ImageBitmapRenderingContextSettings where
  toJS = believe_me

export
FromJS ImageBitmapRenderingContextSettings where
  fromJS = believe_me
export
data ImageEncodeOptions  : Type where [external]

export
ToJS ImageEncodeOptions where
  toJS = believe_me

export
FromJS ImageEncodeOptions where
  fromJS = believe_me
export
data MessageEventInit  : Type where [external]

export
ToJS MessageEventInit where
  toJS = believe_me

export
FromJS MessageEventInit where
  fromJS = believe_me
export
data PageTransitionEventInit  : Type where [external]

export
ToJS PageTransitionEventInit where
  toJS = believe_me

export
FromJS PageTransitionEventInit where
  fromJS = believe_me
export
data PopStateEventInit  : Type where [external]

export
ToJS PopStateEventInit where
  toJS = believe_me

export
FromJS PopStateEventInit where
  fromJS = believe_me
export
data PostMessageOptions  : Type where [external]

export
ToJS PostMessageOptions where
  toJS = believe_me

export
FromJS PostMessageOptions where
  fromJS = believe_me
export
data PromiseRejectionEventInit  : Type where [external]

export
ToJS PromiseRejectionEventInit where
  toJS = believe_me

export
FromJS PromiseRejectionEventInit where
  fromJS = believe_me
export
data StorageEventInit  : Type where [external]

export
ToJS StorageEventInit where
  toJS = believe_me

export
FromJS StorageEventInit where
  fromJS = believe_me
export
data SubmitEventInit  : Type where [external]

export
ToJS SubmitEventInit where
  toJS = believe_me

export
FromJS SubmitEventInit where
  fromJS = believe_me
export
data TrackEventInit  : Type where [external]

export
ToJS TrackEventInit where
  toJS = believe_me

export
FromJS TrackEventInit where
  fromJS = believe_me
export
data ValidityStateFlags  : Type where [external]

export
ToJS ValidityStateFlags where
  toJS = believe_me

export
FromJS ValidityStateFlags where
  fromJS = believe_me
export
data WindowPostMessageOptions  : Type where [external]

export
ToJS WindowPostMessageOptions where
  toJS = believe_me

export
FromJS WindowPostMessageOptions where
  fromJS = believe_me
export
data WorkerOptions  : Type where [external]

export
ToJS WorkerOptions where
  toJS = believe_me

export
FromJS WorkerOptions where
  fromJS = believe_me
export
data WorkletOptions  : Type where [external]

export
ToJS WorkletOptions where
  toJS = believe_me

export
FromJS WorkletOptions where
  fromJS = believe_me