module Web.Internal.HtmlTypes

import JS

%default total


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
  ToFFI DOMParserSupportedType String where
    toFFI = show

  export
  FromFFI DOMParserSupportedType String where
    fromFFI = read

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
  ToFFI DocumentReadyState String where
    toFFI = show

  export
  FromFFI DocumentReadyState String where
    fromFFI = read

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
  ToFFI CanPlayTypeResult String where
    toFFI = show

  export
  FromFFI CanPlayTypeResult String where
    fromFFI = read

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
  ToFFI ScrollRestoration String where
    toFFI = show

  export
  FromFFI ScrollRestoration String where
    fromFFI = read

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
  ToFFI ImageOrientation String where
    toFFI = show

  export
  FromFFI ImageOrientation String where
    fromFFI = read

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
  ToFFI PremultiplyAlpha String where
    toFFI = show

  export
  FromFFI PremultiplyAlpha String where
    fromFFI = read

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
  ToFFI ColorSpaceConversion String where
    toFFI = show

  export
  FromFFI ColorSpaceConversion String where
    fromFFI = read

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
  ToFFI ResizeQuality String where
    toFFI = show

  export
  FromFFI ResizeQuality String where
    fromFFI = read

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
  ToFFI CanvasFillRule String where
    toFFI = show

  export
  FromFFI CanvasFillRule String where
    fromFFI = read

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
  ToFFI ImageSmoothingQuality String where
    toFFI = show

  export
  FromFFI ImageSmoothingQuality String where
    fromFFI = read

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
  ToFFI CanvasLineCap String where
    toFFI = show

  export
  FromFFI CanvasLineCap String where
    fromFFI = read

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
  ToFFI CanvasLineJoin String where
    toFFI = show

  export
  FromFFI CanvasLineJoin String where
    fromFFI = read

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
  ToFFI CanvasTextAlign String where
    toFFI = show

  export
  FromFFI CanvasTextAlign String where
    fromFFI = read

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
  ToFFI CanvasTextBaseline String where
    toFFI = show

  export
  FromFFI CanvasTextBaseline String where
    fromFFI = read

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
  ToFFI CanvasDirection String where
    toFFI = show

  export
  FromFFI CanvasDirection String where
    fromFFI = read

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
  ToFFI OffscreenRenderingContextId String where
    toFFI = show

  export
  FromFFI OffscreenRenderingContextId String where
    fromFFI = read

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
  ToFFI TextTrackMode String where
    toFFI = show

  export
  FromFFI TextTrackMode String where
    fromFFI = read

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
  ToFFI TextTrackKind String where
    toFFI = show

  export
  FromFFI TextTrackKind String where
    fromFFI = read

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
  ToFFI BinaryType String where
    toFFI = show

  export
  FromFFI BinaryType String where
    fromFFI = read

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
  ToFFI WorkerType String where
    toFFI = show

  export
  FromFFI WorkerType String where
    fromFFI = read

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
  ToFFI SelectionMode String where
    toFFI = show

  export
  FromFFI SelectionMode String where
    fromFFI = read


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data AudioTrack : Type where [external]

export
ToFFI AudioTrack AudioTrack where toFFI = id

export
FromFFI AudioTrack AudioTrack where fromFFI = Just

export
SafeCast AudioTrack where
  safeCast = unsafeCastOnPrototypeName "AudioTrack"

export data AudioTrackList : Type where [external]

export
ToFFI AudioTrackList AudioTrackList where toFFI = id

export
FromFFI AudioTrackList AudioTrackList where fromFFI = Just

export
SafeCast AudioTrackList where
  safeCast = unsafeCastOnPrototypeName "AudioTrackList"

export data BarProp : Type where [external]

export
ToFFI BarProp BarProp where toFFI = id

export
FromFFI BarProp BarProp where fromFFI = Just

export
SafeCast BarProp where
  safeCast = unsafeCastOnPrototypeName "BarProp"

export data BeforeUnloadEvent : Type where [external]

export
ToFFI BeforeUnloadEvent BeforeUnloadEvent where toFFI = id

export
FromFFI BeforeUnloadEvent BeforeUnloadEvent where fromFFI = Just

export
SafeCast BeforeUnloadEvent where
  safeCast = unsafeCastOnPrototypeName "BeforeUnloadEvent"

export data BroadcastChannel : Type where [external]

export
ToFFI BroadcastChannel BroadcastChannel where toFFI = id

export
FromFFI BroadcastChannel BroadcastChannel where fromFFI = Just

export
SafeCast BroadcastChannel where
  safeCast = unsafeCastOnPrototypeName "BroadcastChannel"

export data CanvasGradient : Type where [external]

export
ToFFI CanvasGradient CanvasGradient where toFFI = id

export
FromFFI CanvasGradient CanvasGradient where fromFFI = Just

export
SafeCast CanvasGradient where
  safeCast = unsafeCastOnPrototypeName "CanvasGradient"

export data CanvasPattern : Type where [external]

export
ToFFI CanvasPattern CanvasPattern where toFFI = id

export
FromFFI CanvasPattern CanvasPattern where fromFFI = Just

export
SafeCast CanvasPattern where
  safeCast = unsafeCastOnPrototypeName "CanvasPattern"

export data CanvasRenderingContext2D : Type where [external]

export
ToFFI CanvasRenderingContext2D CanvasRenderingContext2D where toFFI = id

export
FromFFI CanvasRenderingContext2D CanvasRenderingContext2D where fromFFI = Just

export
SafeCast CanvasRenderingContext2D where
  safeCast = unsafeCastOnPrototypeName "CanvasRenderingContext2D"

export data CloseEvent : Type where [external]

export
ToFFI CloseEvent CloseEvent where toFFI = id

export
FromFFI CloseEvent CloseEvent where fromFFI = Just

export
SafeCast CloseEvent where
  safeCast = unsafeCastOnPrototypeName "CloseEvent"

export data CustomElementRegistry : Type where [external]

export
ToFFI CustomElementRegistry CustomElementRegistry where toFFI = id

export
FromFFI CustomElementRegistry CustomElementRegistry where fromFFI = Just

export
SafeCast CustomElementRegistry where
  safeCast = unsafeCastOnPrototypeName "CustomElementRegistry"

export data DOMParser : Type where [external]

export
ToFFI DOMParser DOMParser where toFFI = id

export
FromFFI DOMParser DOMParser where fromFFI = Just

export
SafeCast DOMParser where
  safeCast = unsafeCastOnPrototypeName "DOMParser"

export data DOMStringList : Type where [external]

export
ToFFI DOMStringList DOMStringList where toFFI = id

export
FromFFI DOMStringList DOMStringList where fromFFI = Just

export
SafeCast DOMStringList where
  safeCast = unsafeCastOnPrototypeName "DOMStringList"

export data DOMStringMap : Type where [external]

export
ToFFI DOMStringMap DOMStringMap where toFFI = id

export
FromFFI DOMStringMap DOMStringMap where fromFFI = Just

export
SafeCast DOMStringMap where
  safeCast = unsafeCastOnPrototypeName "DOMStringMap"

export data DataTransfer : Type where [external]

export
ToFFI DataTransfer DataTransfer where toFFI = id

export
FromFFI DataTransfer DataTransfer where fromFFI = Just

export
SafeCast DataTransfer where
  safeCast = unsafeCastOnPrototypeName "DataTransfer"

export data DataTransferItem : Type where [external]

export
ToFFI DataTransferItem DataTransferItem where toFFI = id

export
FromFFI DataTransferItem DataTransferItem where fromFFI = Just

export
SafeCast DataTransferItem where
  safeCast = unsafeCastOnPrototypeName "DataTransferItem"

export data DataTransferItemList : Type where [external]

export
ToFFI DataTransferItemList DataTransferItemList where toFFI = id

export
FromFFI DataTransferItemList DataTransferItemList where fromFFI = Just

export
SafeCast DataTransferItemList where
  safeCast = unsafeCastOnPrototypeName "DataTransferItemList"

export data DedicatedWorkerGlobalScope : Type where [external]

export
ToFFI DedicatedWorkerGlobalScope DedicatedWorkerGlobalScope where toFFI = id

export
FromFFI DedicatedWorkerGlobalScope DedicatedWorkerGlobalScope where fromFFI = Just

export
SafeCast DedicatedWorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "DedicatedWorkerGlobalScope"

export data DragEvent : Type where [external]

export
ToFFI DragEvent DragEvent where toFFI = id

export
FromFFI DragEvent DragEvent where fromFFI = Just

export
SafeCast DragEvent where
  safeCast = unsafeCastOnPrototypeName "DragEvent"

export data ElementInternals : Type where [external]

export
ToFFI ElementInternals ElementInternals where toFFI = id

export
FromFFI ElementInternals ElementInternals where fromFFI = Just

export
SafeCast ElementInternals where
  safeCast = unsafeCastOnPrototypeName "ElementInternals"

export data ErrorEvent : Type where [external]

export
ToFFI ErrorEvent ErrorEvent where toFFI = id

export
FromFFI ErrorEvent ErrorEvent where fromFFI = Just

export
SafeCast ErrorEvent where
  safeCast = unsafeCastOnPrototypeName "ErrorEvent"

export data EventSource : Type where [external]

export
ToFFI EventSource EventSource where toFFI = id

export
FromFFI EventSource EventSource where fromFFI = Just

export
SafeCast EventSource where
  safeCast = unsafeCastOnPrototypeName "EventSource"

export data External : Type where [external]

export
ToFFI External External where toFFI = id

export
FromFFI External External where fromFFI = Just

export
SafeCast External where
  safeCast = unsafeCastOnPrototypeName "External"

export data FormDataEvent : Type where [external]

export
ToFFI FormDataEvent FormDataEvent where toFFI = id

export
FromFFI FormDataEvent FormDataEvent where fromFFI = Just

export
SafeCast FormDataEvent where
  safeCast = unsafeCastOnPrototypeName "FormDataEvent"

export data HTMLAllCollection : Type where [external]

export
ToFFI HTMLAllCollection HTMLAllCollection where toFFI = id

export
FromFFI HTMLAllCollection HTMLAllCollection where fromFFI = Just

export
SafeCast HTMLAllCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLAllCollection"

export data HTMLAnchorElement : Type where [external]

export
ToFFI HTMLAnchorElement HTMLAnchorElement where toFFI = id

export
FromFFI HTMLAnchorElement HTMLAnchorElement where fromFFI = Just

export
SafeCast HTMLAnchorElement where
  safeCast = unsafeCastOnPrototypeName "HTMLAnchorElement"

export data HTMLAreaElement : Type where [external]

export
ToFFI HTMLAreaElement HTMLAreaElement where toFFI = id

export
FromFFI HTMLAreaElement HTMLAreaElement where fromFFI = Just

export
SafeCast HTMLAreaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLAreaElement"

export data HTMLAudioElement : Type where [external]

export
ToFFI HTMLAudioElement HTMLAudioElement where toFFI = id

export
FromFFI HTMLAudioElement HTMLAudioElement where fromFFI = Just

export
SafeCast HTMLAudioElement where
  safeCast = unsafeCastOnPrototypeName "HTMLAudioElement"

export data HTMLBRElement : Type where [external]

export
ToFFI HTMLBRElement HTMLBRElement where toFFI = id

export
FromFFI HTMLBRElement HTMLBRElement where fromFFI = Just

export
SafeCast HTMLBRElement where
  safeCast = unsafeCastOnPrototypeName "HTMLBRElement"

export data HTMLBaseElement : Type where [external]

export
ToFFI HTMLBaseElement HTMLBaseElement where toFFI = id

export
FromFFI HTMLBaseElement HTMLBaseElement where fromFFI = Just

export
SafeCast HTMLBaseElement where
  safeCast = unsafeCastOnPrototypeName "HTMLBaseElement"

export data HTMLBodyElement : Type where [external]

export
ToFFI HTMLBodyElement HTMLBodyElement where toFFI = id

export
FromFFI HTMLBodyElement HTMLBodyElement where fromFFI = Just

export
SafeCast HTMLBodyElement where
  safeCast = unsafeCastOnPrototypeName "HTMLBodyElement"

export data HTMLButtonElement : Type where [external]

export
ToFFI HTMLButtonElement HTMLButtonElement where toFFI = id

export
FromFFI HTMLButtonElement HTMLButtonElement where fromFFI = Just

export
SafeCast HTMLButtonElement where
  safeCast = unsafeCastOnPrototypeName "HTMLButtonElement"

export data HTMLCanvasElement : Type where [external]

export
ToFFI HTMLCanvasElement HTMLCanvasElement where toFFI = id

export
FromFFI HTMLCanvasElement HTMLCanvasElement where fromFFI = Just

export
SafeCast HTMLCanvasElement where
  safeCast = unsafeCastOnPrototypeName "HTMLCanvasElement"

export data HTMLDListElement : Type where [external]

export
ToFFI HTMLDListElement HTMLDListElement where toFFI = id

export
FromFFI HTMLDListElement HTMLDListElement where fromFFI = Just

export
SafeCast HTMLDListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDListElement"

export data HTMLDataElement : Type where [external]

export
ToFFI HTMLDataElement HTMLDataElement where toFFI = id

export
FromFFI HTMLDataElement HTMLDataElement where fromFFI = Just

export
SafeCast HTMLDataElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDataElement"

export data HTMLDataListElement : Type where [external]

export
ToFFI HTMLDataListElement HTMLDataListElement where toFFI = id

export
FromFFI HTMLDataListElement HTMLDataListElement where fromFFI = Just

export
SafeCast HTMLDataListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDataListElement"

export data HTMLDetailsElement : Type where [external]

export
ToFFI HTMLDetailsElement HTMLDetailsElement where toFFI = id

export
FromFFI HTMLDetailsElement HTMLDetailsElement where fromFFI = Just

export
SafeCast HTMLDetailsElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDetailsElement"

export data HTMLDialogElement : Type where [external]

export
ToFFI HTMLDialogElement HTMLDialogElement where toFFI = id

export
FromFFI HTMLDialogElement HTMLDialogElement where fromFFI = Just

export
SafeCast HTMLDialogElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDialogElement"

export data HTMLDirectoryElement : Type where [external]

export
ToFFI HTMLDirectoryElement HTMLDirectoryElement where toFFI = id

export
FromFFI HTMLDirectoryElement HTMLDirectoryElement where fromFFI = Just

export
SafeCast HTMLDirectoryElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDirectoryElement"

export data HTMLDivElement : Type where [external]

export
ToFFI HTMLDivElement HTMLDivElement where toFFI = id

export
FromFFI HTMLDivElement HTMLDivElement where fromFFI = Just

export
SafeCast HTMLDivElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDivElement"

export data HTMLElement : Type where [external]

export
ToFFI HTMLElement HTMLElement where toFFI = id

export
FromFFI HTMLElement HTMLElement where fromFFI = Just

export
SafeCast HTMLElement where
  safeCast = unsafeCastOnPrototypeName "HTMLElement"

export data HTMLEmbedElement : Type where [external]

export
ToFFI HTMLEmbedElement HTMLEmbedElement where toFFI = id

export
FromFFI HTMLEmbedElement HTMLEmbedElement where fromFFI = Just

export
SafeCast HTMLEmbedElement where
  safeCast = unsafeCastOnPrototypeName "HTMLEmbedElement"

export data HTMLFieldSetElement : Type where [external]

export
ToFFI HTMLFieldSetElement HTMLFieldSetElement where toFFI = id

export
FromFFI HTMLFieldSetElement HTMLFieldSetElement where fromFFI = Just

export
SafeCast HTMLFieldSetElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFieldSetElement"

export data HTMLFontElement : Type where [external]

export
ToFFI HTMLFontElement HTMLFontElement where toFFI = id

export
FromFFI HTMLFontElement HTMLFontElement where fromFFI = Just

export
SafeCast HTMLFontElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFontElement"

export data HTMLFormControlsCollection : Type where [external]

export
ToFFI HTMLFormControlsCollection HTMLFormControlsCollection where toFFI = id

export
FromFFI HTMLFormControlsCollection HTMLFormControlsCollection where fromFFI = Just

export
SafeCast HTMLFormControlsCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLFormControlsCollection"

export data HTMLFormElement : Type where [external]

export
ToFFI HTMLFormElement HTMLFormElement where toFFI = id

export
FromFFI HTMLFormElement HTMLFormElement where fromFFI = Just

export
SafeCast HTMLFormElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFormElement"

export data HTMLFrameElement : Type where [external]

export
ToFFI HTMLFrameElement HTMLFrameElement where toFFI = id

export
FromFFI HTMLFrameElement HTMLFrameElement where fromFFI = Just

export
SafeCast HTMLFrameElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFrameElement"

export data HTMLFrameSetElement : Type where [external]

export
ToFFI HTMLFrameSetElement HTMLFrameSetElement where toFFI = id

export
FromFFI HTMLFrameSetElement HTMLFrameSetElement where fromFFI = Just

export
SafeCast HTMLFrameSetElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFrameSetElement"

export data HTMLHRElement : Type where [external]

export
ToFFI HTMLHRElement HTMLHRElement where toFFI = id

export
FromFFI HTMLHRElement HTMLHRElement where fromFFI = Just

export
SafeCast HTMLHRElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHRElement"

export data HTMLHeadElement : Type where [external]

export
ToFFI HTMLHeadElement HTMLHeadElement where toFFI = id

export
FromFFI HTMLHeadElement HTMLHeadElement where fromFFI = Just

export
SafeCast HTMLHeadElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHeadElement"

export data HTMLHeadingElement : Type where [external]

export
ToFFI HTMLHeadingElement HTMLHeadingElement where toFFI = id

export
FromFFI HTMLHeadingElement HTMLHeadingElement where fromFFI = Just

export
SafeCast HTMLHeadingElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHeadingElement"

export data HTMLHtmlElement : Type where [external]

export
ToFFI HTMLHtmlElement HTMLHtmlElement where toFFI = id

export
FromFFI HTMLHtmlElement HTMLHtmlElement where fromFFI = Just

export
SafeCast HTMLHtmlElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHtmlElement"

export data HTMLIFrameElement : Type where [external]

export
ToFFI HTMLIFrameElement HTMLIFrameElement where toFFI = id

export
FromFFI HTMLIFrameElement HTMLIFrameElement where fromFFI = Just

export
SafeCast HTMLIFrameElement where
  safeCast = unsafeCastOnPrototypeName "HTMLIFrameElement"

export data HTMLImageElement : Type where [external]

export
ToFFI HTMLImageElement HTMLImageElement where toFFI = id

export
FromFFI HTMLImageElement HTMLImageElement where fromFFI = Just

export
SafeCast HTMLImageElement where
  safeCast = unsafeCastOnPrototypeName "HTMLImageElement"

export data HTMLInputElement : Type where [external]

export
ToFFI HTMLInputElement HTMLInputElement where toFFI = id

export
FromFFI HTMLInputElement HTMLInputElement where fromFFI = Just

export
SafeCast HTMLInputElement where
  safeCast = unsafeCastOnPrototypeName "HTMLInputElement"

export data HTMLLIElement : Type where [external]

export
ToFFI HTMLLIElement HTMLLIElement where toFFI = id

export
FromFFI HTMLLIElement HTMLLIElement where fromFFI = Just

export
SafeCast HTMLLIElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLIElement"

export data HTMLLabelElement : Type where [external]

export
ToFFI HTMLLabelElement HTMLLabelElement where toFFI = id

export
FromFFI HTMLLabelElement HTMLLabelElement where fromFFI = Just

export
SafeCast HTMLLabelElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLabelElement"

export data HTMLLegendElement : Type where [external]

export
ToFFI HTMLLegendElement HTMLLegendElement where toFFI = id

export
FromFFI HTMLLegendElement HTMLLegendElement where fromFFI = Just

export
SafeCast HTMLLegendElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLegendElement"

export data HTMLLinkElement : Type where [external]

export
ToFFI HTMLLinkElement HTMLLinkElement where toFFI = id

export
FromFFI HTMLLinkElement HTMLLinkElement where fromFFI = Just

export
SafeCast HTMLLinkElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLinkElement"

export data HTMLMapElement : Type where [external]

export
ToFFI HTMLMapElement HTMLMapElement where toFFI = id

export
FromFFI HTMLMapElement HTMLMapElement where fromFFI = Just

export
SafeCast HTMLMapElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMapElement"

export data HTMLMarqueeElement : Type where [external]

export
ToFFI HTMLMarqueeElement HTMLMarqueeElement where toFFI = id

export
FromFFI HTMLMarqueeElement HTMLMarqueeElement where fromFFI = Just

export
SafeCast HTMLMarqueeElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMarqueeElement"

export data HTMLMediaElement : Type where [external]

export
ToFFI HTMLMediaElement HTMLMediaElement where toFFI = id

export
FromFFI HTMLMediaElement HTMLMediaElement where fromFFI = Just

export
SafeCast HTMLMediaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMediaElement"

export data HTMLMenuElement : Type where [external]

export
ToFFI HTMLMenuElement HTMLMenuElement where toFFI = id

export
FromFFI HTMLMenuElement HTMLMenuElement where fromFFI = Just

export
SafeCast HTMLMenuElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMenuElement"

export data HTMLMetaElement : Type where [external]

export
ToFFI HTMLMetaElement HTMLMetaElement where toFFI = id

export
FromFFI HTMLMetaElement HTMLMetaElement where fromFFI = Just

export
SafeCast HTMLMetaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMetaElement"

export data HTMLMeterElement : Type where [external]

export
ToFFI HTMLMeterElement HTMLMeterElement where toFFI = id

export
FromFFI HTMLMeterElement HTMLMeterElement where fromFFI = Just

export
SafeCast HTMLMeterElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMeterElement"

export data HTMLModElement : Type where [external]

export
ToFFI HTMLModElement HTMLModElement where toFFI = id

export
FromFFI HTMLModElement HTMLModElement where fromFFI = Just

export
SafeCast HTMLModElement where
  safeCast = unsafeCastOnPrototypeName "HTMLModElement"

export data HTMLOListElement : Type where [external]

export
ToFFI HTMLOListElement HTMLOListElement where toFFI = id

export
FromFFI HTMLOListElement HTMLOListElement where fromFFI = Just

export
SafeCast HTMLOListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOListElement"

export data HTMLObjectElement : Type where [external]

export
ToFFI HTMLObjectElement HTMLObjectElement where toFFI = id

export
FromFFI HTMLObjectElement HTMLObjectElement where fromFFI = Just

export
SafeCast HTMLObjectElement where
  safeCast = unsafeCastOnPrototypeName "HTMLObjectElement"

export data HTMLOptGroupElement : Type where [external]

export
ToFFI HTMLOptGroupElement HTMLOptGroupElement where toFFI = id

export
FromFFI HTMLOptGroupElement HTMLOptGroupElement where fromFFI = Just

export
SafeCast HTMLOptGroupElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOptGroupElement"

export data HTMLOptionElement : Type where [external]

export
ToFFI HTMLOptionElement HTMLOptionElement where toFFI = id

export
FromFFI HTMLOptionElement HTMLOptionElement where fromFFI = Just

export
SafeCast HTMLOptionElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOptionElement"

export data HTMLOptionsCollection : Type where [external]

export
ToFFI HTMLOptionsCollection HTMLOptionsCollection where toFFI = id

export
FromFFI HTMLOptionsCollection HTMLOptionsCollection where fromFFI = Just

export
SafeCast HTMLOptionsCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLOptionsCollection"

export data HTMLOutputElement : Type where [external]

export
ToFFI HTMLOutputElement HTMLOutputElement where toFFI = id

export
FromFFI HTMLOutputElement HTMLOutputElement where fromFFI = Just

export
SafeCast HTMLOutputElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOutputElement"

export data HTMLParagraphElement : Type where [external]

export
ToFFI HTMLParagraphElement HTMLParagraphElement where toFFI = id

export
FromFFI HTMLParagraphElement HTMLParagraphElement where fromFFI = Just

export
SafeCast HTMLParagraphElement where
  safeCast = unsafeCastOnPrototypeName "HTMLParagraphElement"

export data HTMLParamElement : Type where [external]

export
ToFFI HTMLParamElement HTMLParamElement where toFFI = id

export
FromFFI HTMLParamElement HTMLParamElement where fromFFI = Just

export
SafeCast HTMLParamElement where
  safeCast = unsafeCastOnPrototypeName "HTMLParamElement"

export data HTMLPictureElement : Type where [external]

export
ToFFI HTMLPictureElement HTMLPictureElement where toFFI = id

export
FromFFI HTMLPictureElement HTMLPictureElement where fromFFI = Just

export
SafeCast HTMLPictureElement where
  safeCast = unsafeCastOnPrototypeName "HTMLPictureElement"

export data HTMLPreElement : Type where [external]

export
ToFFI HTMLPreElement HTMLPreElement where toFFI = id

export
FromFFI HTMLPreElement HTMLPreElement where fromFFI = Just

export
SafeCast HTMLPreElement where
  safeCast = unsafeCastOnPrototypeName "HTMLPreElement"

export data HTMLProgressElement : Type where [external]

export
ToFFI HTMLProgressElement HTMLProgressElement where toFFI = id

export
FromFFI HTMLProgressElement HTMLProgressElement where fromFFI = Just

export
SafeCast HTMLProgressElement where
  safeCast = unsafeCastOnPrototypeName "HTMLProgressElement"

export data HTMLQuoteElement : Type where [external]

export
ToFFI HTMLQuoteElement HTMLQuoteElement where toFFI = id

export
FromFFI HTMLQuoteElement HTMLQuoteElement where fromFFI = Just

export
SafeCast HTMLQuoteElement where
  safeCast = unsafeCastOnPrototypeName "HTMLQuoteElement"

export data HTMLScriptElement : Type where [external]

export
ToFFI HTMLScriptElement HTMLScriptElement where toFFI = id

export
FromFFI HTMLScriptElement HTMLScriptElement where fromFFI = Just

export
SafeCast HTMLScriptElement where
  safeCast = unsafeCastOnPrototypeName "HTMLScriptElement"

export data HTMLSelectElement : Type where [external]

export
ToFFI HTMLSelectElement HTMLSelectElement where toFFI = id

export
FromFFI HTMLSelectElement HTMLSelectElement where fromFFI = Just

export
SafeCast HTMLSelectElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSelectElement"

export data HTMLSlotElement : Type where [external]

export
ToFFI HTMLSlotElement HTMLSlotElement where toFFI = id

export
FromFFI HTMLSlotElement HTMLSlotElement where fromFFI = Just

export
SafeCast HTMLSlotElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSlotElement"

export data HTMLSourceElement : Type where [external]

export
ToFFI HTMLSourceElement HTMLSourceElement where toFFI = id

export
FromFFI HTMLSourceElement HTMLSourceElement where fromFFI = Just

export
SafeCast HTMLSourceElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSourceElement"

export data HTMLSpanElement : Type where [external]

export
ToFFI HTMLSpanElement HTMLSpanElement where toFFI = id

export
FromFFI HTMLSpanElement HTMLSpanElement where fromFFI = Just

export
SafeCast HTMLSpanElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSpanElement"

export data HTMLStyleElement : Type where [external]

export
ToFFI HTMLStyleElement HTMLStyleElement where toFFI = id

export
FromFFI HTMLStyleElement HTMLStyleElement where fromFFI = Just

export
SafeCast HTMLStyleElement where
  safeCast = unsafeCastOnPrototypeName "HTMLStyleElement"

export data HTMLTableCaptionElement : Type where [external]

export
ToFFI HTMLTableCaptionElement HTMLTableCaptionElement where toFFI = id

export
FromFFI HTMLTableCaptionElement HTMLTableCaptionElement where fromFFI = Just

export
SafeCast HTMLTableCaptionElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableCaptionElement"

export data HTMLTableCellElement : Type where [external]

export
ToFFI HTMLTableCellElement HTMLTableCellElement where toFFI = id

export
FromFFI HTMLTableCellElement HTMLTableCellElement where fromFFI = Just

export
SafeCast HTMLTableCellElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableCellElement"

export data HTMLTableColElement : Type where [external]

export
ToFFI HTMLTableColElement HTMLTableColElement where toFFI = id

export
FromFFI HTMLTableColElement HTMLTableColElement where fromFFI = Just

export
SafeCast HTMLTableColElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableColElement"

export data HTMLTableElement : Type where [external]

export
ToFFI HTMLTableElement HTMLTableElement where toFFI = id

export
FromFFI HTMLTableElement HTMLTableElement where fromFFI = Just

export
SafeCast HTMLTableElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableElement"

export data HTMLTableRowElement : Type where [external]

export
ToFFI HTMLTableRowElement HTMLTableRowElement where toFFI = id

export
FromFFI HTMLTableRowElement HTMLTableRowElement where fromFFI = Just

export
SafeCast HTMLTableRowElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableRowElement"

export data HTMLTableSectionElement : Type where [external]

export
ToFFI HTMLTableSectionElement HTMLTableSectionElement where toFFI = id

export
FromFFI HTMLTableSectionElement HTMLTableSectionElement where fromFFI = Just

export
SafeCast HTMLTableSectionElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableSectionElement"

export data HTMLTemplateElement : Type where [external]

export
ToFFI HTMLTemplateElement HTMLTemplateElement where toFFI = id

export
FromFFI HTMLTemplateElement HTMLTemplateElement where fromFFI = Just

export
SafeCast HTMLTemplateElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTemplateElement"

export data HTMLTextAreaElement : Type where [external]

export
ToFFI HTMLTextAreaElement HTMLTextAreaElement where toFFI = id

export
FromFFI HTMLTextAreaElement HTMLTextAreaElement where fromFFI = Just

export
SafeCast HTMLTextAreaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTextAreaElement"

export data HTMLTimeElement : Type where [external]

export
ToFFI HTMLTimeElement HTMLTimeElement where toFFI = id

export
FromFFI HTMLTimeElement HTMLTimeElement where fromFFI = Just

export
SafeCast HTMLTimeElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTimeElement"

export data HTMLTitleElement : Type where [external]

export
ToFFI HTMLTitleElement HTMLTitleElement where toFFI = id

export
FromFFI HTMLTitleElement HTMLTitleElement where fromFFI = Just

export
SafeCast HTMLTitleElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTitleElement"

export data HTMLTrackElement : Type where [external]

export
ToFFI HTMLTrackElement HTMLTrackElement where toFFI = id

export
FromFFI HTMLTrackElement HTMLTrackElement where fromFFI = Just

export
SafeCast HTMLTrackElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTrackElement"

export data HTMLUListElement : Type where [external]

export
ToFFI HTMLUListElement HTMLUListElement where toFFI = id

export
FromFFI HTMLUListElement HTMLUListElement where fromFFI = Just

export
SafeCast HTMLUListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLUListElement"

export data HTMLUnknownElement : Type where [external]

export
ToFFI HTMLUnknownElement HTMLUnknownElement where toFFI = id

export
FromFFI HTMLUnknownElement HTMLUnknownElement where fromFFI = Just

export
SafeCast HTMLUnknownElement where
  safeCast = unsafeCastOnPrototypeName "HTMLUnknownElement"

export data HTMLVideoElement : Type where [external]

export
ToFFI HTMLVideoElement HTMLVideoElement where toFFI = id

export
FromFFI HTMLVideoElement HTMLVideoElement where fromFFI = Just

export
SafeCast HTMLVideoElement where
  safeCast = unsafeCastOnPrototypeName "HTMLVideoElement"

export data HashChangeEvent : Type where [external]

export
ToFFI HashChangeEvent HashChangeEvent where toFFI = id

export
FromFFI HashChangeEvent HashChangeEvent where fromFFI = Just

export
SafeCast HashChangeEvent where
  safeCast = unsafeCastOnPrototypeName "HashChangeEvent"

export data History : Type where [external]

export
ToFFI History History where toFFI = id

export
FromFFI History History where fromFFI = Just

export
SafeCast History where
  safeCast = unsafeCastOnPrototypeName "History"

export data ImageBitmap : Type where [external]

export
ToFFI ImageBitmap ImageBitmap where toFFI = id

export
FromFFI ImageBitmap ImageBitmap where fromFFI = Just

export
SafeCast ImageBitmap where
  safeCast = unsafeCastOnPrototypeName "ImageBitmap"

export data ImageBitmapRenderingContext : Type where [external]

export
ToFFI ImageBitmapRenderingContext ImageBitmapRenderingContext where toFFI = id

export
FromFFI ImageBitmapRenderingContext ImageBitmapRenderingContext where fromFFI = Just

export
SafeCast ImageBitmapRenderingContext where
  safeCast = unsafeCastOnPrototypeName "ImageBitmapRenderingContext"

export data ImageData : Type where [external]

export
ToFFI ImageData ImageData where toFFI = id

export
FromFFI ImageData ImageData where fromFFI = Just

export
SafeCast ImageData where
  safeCast = unsafeCastOnPrototypeName "ImageData"

export data Location : Type where [external]

export
ToFFI Location Location where toFFI = id

export
FromFFI Location Location where fromFFI = Just

export
SafeCast Location where
  safeCast = unsafeCastOnPrototypeName "Location"

export data MediaError : Type where [external]

export
ToFFI MediaError MediaError where toFFI = id

export
FromFFI MediaError MediaError where fromFFI = Just

export
SafeCast MediaError where
  safeCast = unsafeCastOnPrototypeName "MediaError"

export data MessageChannel : Type where [external]

export
ToFFI MessageChannel MessageChannel where toFFI = id

export
FromFFI MessageChannel MessageChannel where fromFFI = Just

export
SafeCast MessageChannel where
  safeCast = unsafeCastOnPrototypeName "MessageChannel"

export data MessageEvent : Type where [external]

export
ToFFI MessageEvent MessageEvent where toFFI = id

export
FromFFI MessageEvent MessageEvent where fromFFI = Just

export
SafeCast MessageEvent where
  safeCast = unsafeCastOnPrototypeName "MessageEvent"

export data MessagePort : Type where [external]

export
ToFFI MessagePort MessagePort where toFFI = id

export
FromFFI MessagePort MessagePort where fromFFI = Just

export
SafeCast MessagePort where
  safeCast = unsafeCastOnPrototypeName "MessagePort"

export data MimeType : Type where [external]

export
ToFFI MimeType MimeType where toFFI = id

export
FromFFI MimeType MimeType where fromFFI = Just

export
SafeCast MimeType where
  safeCast = unsafeCastOnPrototypeName "MimeType"

export data MimeTypeArray : Type where [external]

export
ToFFI MimeTypeArray MimeTypeArray where toFFI = id

export
FromFFI MimeTypeArray MimeTypeArray where fromFFI = Just

export
SafeCast MimeTypeArray where
  safeCast = unsafeCastOnPrototypeName "MimeTypeArray"

export data Navigator : Type where [external]

export
ToFFI Navigator Navigator where toFFI = id

export
FromFFI Navigator Navigator where fromFFI = Just

export
SafeCast Navigator where
  safeCast = unsafeCastOnPrototypeName "Navigator"

export data OffscreenCanvas : Type where [external]

export
ToFFI OffscreenCanvas OffscreenCanvas where toFFI = id

export
FromFFI OffscreenCanvas OffscreenCanvas where fromFFI = Just

export
SafeCast OffscreenCanvas where
  safeCast = unsafeCastOnPrototypeName "OffscreenCanvas"

export data OffscreenCanvasRenderingContext2D : Type where [external]

export
ToFFI OffscreenCanvasRenderingContext2D OffscreenCanvasRenderingContext2D where toFFI = id

export
FromFFI OffscreenCanvasRenderingContext2D OffscreenCanvasRenderingContext2D where fromFFI = Just

export
SafeCast OffscreenCanvasRenderingContext2D where
  safeCast = unsafeCastOnPrototypeName "OffscreenCanvasRenderingContext2D"

export data PageTransitionEvent : Type where [external]

export
ToFFI PageTransitionEvent PageTransitionEvent where toFFI = id

export
FromFFI PageTransitionEvent PageTransitionEvent where fromFFI = Just

export
SafeCast PageTransitionEvent where
  safeCast = unsafeCastOnPrototypeName "PageTransitionEvent"

export data Path2D : Type where [external]

export
ToFFI Path2D Path2D where toFFI = id

export
FromFFI Path2D Path2D where fromFFI = Just

export
SafeCast Path2D where
  safeCast = unsafeCastOnPrototypeName "Path2D"

export data Plugin : Type where [external]

export
ToFFI Plugin Plugin where toFFI = id

export
FromFFI Plugin Plugin where fromFFI = Just

export
SafeCast Plugin where
  safeCast = unsafeCastOnPrototypeName "Plugin"

export data PluginArray : Type where [external]

export
ToFFI PluginArray PluginArray where toFFI = id

export
FromFFI PluginArray PluginArray where fromFFI = Just

export
SafeCast PluginArray where
  safeCast = unsafeCastOnPrototypeName "PluginArray"

export data PopStateEvent : Type where [external]

export
ToFFI PopStateEvent PopStateEvent where toFFI = id

export
FromFFI PopStateEvent PopStateEvent where fromFFI = Just

export
SafeCast PopStateEvent where
  safeCast = unsafeCastOnPrototypeName "PopStateEvent"

export data PromiseRejectionEvent : Type where [external]

export
ToFFI PromiseRejectionEvent PromiseRejectionEvent where toFFI = id

export
FromFFI PromiseRejectionEvent PromiseRejectionEvent where fromFFI = Just

export
SafeCast PromiseRejectionEvent where
  safeCast = unsafeCastOnPrototypeName "PromiseRejectionEvent"

export data RadioNodeList : Type where [external]

export
ToFFI RadioNodeList RadioNodeList where toFFI = id

export
FromFFI RadioNodeList RadioNodeList where fromFFI = Just

export
SafeCast RadioNodeList where
  safeCast = unsafeCastOnPrototypeName "RadioNodeList"

export data SharedWorker : Type where [external]

export
ToFFI SharedWorker SharedWorker where toFFI = id

export
FromFFI SharedWorker SharedWorker where fromFFI = Just

export
SafeCast SharedWorker where
  safeCast = unsafeCastOnPrototypeName "SharedWorker"

export data SharedWorkerGlobalScope : Type where [external]

export
ToFFI SharedWorkerGlobalScope SharedWorkerGlobalScope where toFFI = id

export
FromFFI SharedWorkerGlobalScope SharedWorkerGlobalScope where fromFFI = Just

export
SafeCast SharedWorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "SharedWorkerGlobalScope"

export data Storage : Type where [external]

export
ToFFI Storage Storage where toFFI = id

export
FromFFI Storage Storage where fromFFI = Just

export
SafeCast Storage where
  safeCast = unsafeCastOnPrototypeName "Storage"

export data StorageEvent : Type where [external]

export
ToFFI StorageEvent StorageEvent where toFFI = id

export
FromFFI StorageEvent StorageEvent where fromFFI = Just

export
SafeCast StorageEvent where
  safeCast = unsafeCastOnPrototypeName "StorageEvent"

export data SubmitEvent : Type where [external]

export
ToFFI SubmitEvent SubmitEvent where toFFI = id

export
FromFFI SubmitEvent SubmitEvent where fromFFI = Just

export
SafeCast SubmitEvent where
  safeCast = unsafeCastOnPrototypeName "SubmitEvent"

export data TextMetrics : Type where [external]

export
ToFFI TextMetrics TextMetrics where toFFI = id

export
FromFFI TextMetrics TextMetrics where fromFFI = Just

export
SafeCast TextMetrics where
  safeCast = unsafeCastOnPrototypeName "TextMetrics"

export data TextTrack : Type where [external]

export
ToFFI TextTrack TextTrack where toFFI = id

export
FromFFI TextTrack TextTrack where fromFFI = Just

export
SafeCast TextTrack where
  safeCast = unsafeCastOnPrototypeName "TextTrack"

export data TextTrackCue : Type where [external]

export
ToFFI TextTrackCue TextTrackCue where toFFI = id

export
FromFFI TextTrackCue TextTrackCue where fromFFI = Just

export
SafeCast TextTrackCue where
  safeCast = unsafeCastOnPrototypeName "TextTrackCue"

export data TextTrackCueList : Type where [external]

export
ToFFI TextTrackCueList TextTrackCueList where toFFI = id

export
FromFFI TextTrackCueList TextTrackCueList where fromFFI = Just

export
SafeCast TextTrackCueList where
  safeCast = unsafeCastOnPrototypeName "TextTrackCueList"

export data TextTrackList : Type where [external]

export
ToFFI TextTrackList TextTrackList where toFFI = id

export
FromFFI TextTrackList TextTrackList where fromFFI = Just

export
SafeCast TextTrackList where
  safeCast = unsafeCastOnPrototypeName "TextTrackList"

export data TimeRanges : Type where [external]

export
ToFFI TimeRanges TimeRanges where toFFI = id

export
FromFFI TimeRanges TimeRanges where fromFFI = Just

export
SafeCast TimeRanges where
  safeCast = unsafeCastOnPrototypeName "TimeRanges"

export data TrackEvent : Type where [external]

export
ToFFI TrackEvent TrackEvent where toFFI = id

export
FromFFI TrackEvent TrackEvent where fromFFI = Just

export
SafeCast TrackEvent where
  safeCast = unsafeCastOnPrototypeName "TrackEvent"

export data ValidityState : Type where [external]

export
ToFFI ValidityState ValidityState where toFFI = id

export
FromFFI ValidityState ValidityState where fromFFI = Just

export
SafeCast ValidityState where
  safeCast = unsafeCastOnPrototypeName "ValidityState"

export data VideoTrack : Type where [external]

export
ToFFI VideoTrack VideoTrack where toFFI = id

export
FromFFI VideoTrack VideoTrack where fromFFI = Just

export
SafeCast VideoTrack where
  safeCast = unsafeCastOnPrototypeName "VideoTrack"

export data VideoTrackList : Type where [external]

export
ToFFI VideoTrackList VideoTrackList where toFFI = id

export
FromFFI VideoTrackList VideoTrackList where fromFFI = Just

export
SafeCast VideoTrackList where
  safeCast = unsafeCastOnPrototypeName "VideoTrackList"

export data WebSocket : Type where [external]

export
ToFFI WebSocket WebSocket where toFFI = id

export
FromFFI WebSocket WebSocket where fromFFI = Just

export
SafeCast WebSocket where
  safeCast = unsafeCastOnPrototypeName "WebSocket"

export data Window : Type where [external]

export
ToFFI Window Window where toFFI = id

export
FromFFI Window Window where fromFFI = Just

export
SafeCast Window where
  safeCast = unsafeCastOnPrototypeName "Window"

export data Worker : Type where [external]

export
ToFFI Worker Worker where toFFI = id

export
FromFFI Worker Worker where fromFFI = Just

export
SafeCast Worker where
  safeCast = unsafeCastOnPrototypeName "Worker"

export data WorkerGlobalScope : Type where [external]

export
ToFFI WorkerGlobalScope WorkerGlobalScope where toFFI = id

export
FromFFI WorkerGlobalScope WorkerGlobalScope where fromFFI = Just

export
SafeCast WorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "WorkerGlobalScope"

export data WorkerLocation : Type where [external]

export
ToFFI WorkerLocation WorkerLocation where toFFI = id

export
FromFFI WorkerLocation WorkerLocation where fromFFI = Just

export
SafeCast WorkerLocation where
  safeCast = unsafeCastOnPrototypeName "WorkerLocation"

export data WorkerNavigator : Type where [external]

export
ToFFI WorkerNavigator WorkerNavigator where toFFI = id

export
FromFFI WorkerNavigator WorkerNavigator where fromFFI = Just

export
SafeCast WorkerNavigator where
  safeCast = unsafeCastOnPrototypeName "WorkerNavigator"

export data Worklet : Type where [external]

export
ToFFI Worklet Worklet where toFFI = id

export
FromFFI Worklet Worklet where fromFFI = Just

export
SafeCast Worklet where
  safeCast = unsafeCastOnPrototypeName "Worklet"

export data WorkletGlobalScope : Type where [external]

export
ToFFI WorkletGlobalScope WorkletGlobalScope where toFFI = id

export
FromFFI WorkletGlobalScope WorkletGlobalScope where fromFFI = Just

export
SafeCast WorkletGlobalScope where
  safeCast = unsafeCastOnPrototypeName "WorkletGlobalScope"


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data AssignedNodesOptions : Type where [external]

export
ToFFI AssignedNodesOptions AssignedNodesOptions where toFFI = id

export
FromFFI AssignedNodesOptions AssignedNodesOptions where fromFFI = Just

export data CanvasRenderingContext2DSettings : Type where [external]

export
ToFFI CanvasRenderingContext2DSettings CanvasRenderingContext2DSettings where toFFI = id

export
FromFFI CanvasRenderingContext2DSettings CanvasRenderingContext2DSettings where fromFFI = Just

export data CloseEventInit : Type where [external]

export
ToFFI CloseEventInit CloseEventInit where toFFI = id

export
FromFFI CloseEventInit CloseEventInit where fromFFI = Just

export data DragEventInit : Type where [external]

export
ToFFI DragEventInit DragEventInit where toFFI = id

export
FromFFI DragEventInit DragEventInit where fromFFI = Just

export data ElementDefinitionOptions : Type where [external]

export
ToFFI ElementDefinitionOptions ElementDefinitionOptions where toFFI = id

export
FromFFI ElementDefinitionOptions ElementDefinitionOptions where fromFFI = Just

export data ErrorEventInit : Type where [external]

export
ToFFI ErrorEventInit ErrorEventInit where toFFI = id

export
FromFFI ErrorEventInit ErrorEventInit where fromFFI = Just

export data EventSourceInit : Type where [external]

export
ToFFI EventSourceInit EventSourceInit where toFFI = id

export
FromFFI EventSourceInit EventSourceInit where fromFFI = Just

export data FocusOptions : Type where [external]

export
ToFFI FocusOptions FocusOptions where toFFI = id

export
FromFFI FocusOptions FocusOptions where fromFFI = Just

export data FormDataEventInit : Type where [external]

export
ToFFI FormDataEventInit FormDataEventInit where toFFI = id

export
FromFFI FormDataEventInit FormDataEventInit where fromFFI = Just

export data HashChangeEventInit : Type where [external]

export
ToFFI HashChangeEventInit HashChangeEventInit where toFFI = id

export
FromFFI HashChangeEventInit HashChangeEventInit where fromFFI = Just

export data ImageBitmapOptions : Type where [external]

export
ToFFI ImageBitmapOptions ImageBitmapOptions where toFFI = id

export
FromFFI ImageBitmapOptions ImageBitmapOptions where fromFFI = Just

export data ImageBitmapRenderingContextSettings : Type where [external]

export
ToFFI ImageBitmapRenderingContextSettings ImageBitmapRenderingContextSettings where toFFI = id

export
FromFFI ImageBitmapRenderingContextSettings ImageBitmapRenderingContextSettings where fromFFI = Just

export data ImageEncodeOptions : Type where [external]

export
ToFFI ImageEncodeOptions ImageEncodeOptions where toFFI = id

export
FromFFI ImageEncodeOptions ImageEncodeOptions where fromFFI = Just

export data MessageEventInit : Type where [external]

export
ToFFI MessageEventInit MessageEventInit where toFFI = id

export
FromFFI MessageEventInit MessageEventInit where fromFFI = Just

export data PageTransitionEventInit : Type where [external]

export
ToFFI PageTransitionEventInit PageTransitionEventInit where toFFI = id

export
FromFFI PageTransitionEventInit PageTransitionEventInit where fromFFI = Just

export data PopStateEventInit : Type where [external]

export
ToFFI PopStateEventInit PopStateEventInit where toFFI = id

export
FromFFI PopStateEventInit PopStateEventInit where fromFFI = Just

export data PostMessageOptions : Type where [external]

export
ToFFI PostMessageOptions PostMessageOptions where toFFI = id

export
FromFFI PostMessageOptions PostMessageOptions where fromFFI = Just

export data PromiseRejectionEventInit : Type where [external]

export
ToFFI PromiseRejectionEventInit PromiseRejectionEventInit where toFFI = id

export
FromFFI PromiseRejectionEventInit PromiseRejectionEventInit where fromFFI = Just

export data StorageEventInit : Type where [external]

export
ToFFI StorageEventInit StorageEventInit where toFFI = id

export
FromFFI StorageEventInit StorageEventInit where fromFFI = Just

export data SubmitEventInit : Type where [external]

export
ToFFI SubmitEventInit SubmitEventInit where toFFI = id

export
FromFFI SubmitEventInit SubmitEventInit where fromFFI = Just

export data TrackEventInit : Type where [external]

export
ToFFI TrackEventInit TrackEventInit where toFFI = id

export
FromFFI TrackEventInit TrackEventInit where fromFFI = Just

export data ValidityStateFlags : Type where [external]

export
ToFFI ValidityStateFlags ValidityStateFlags where toFFI = id

export
FromFFI ValidityStateFlags ValidityStateFlags where fromFFI = Just

export data WindowPostMessageOptions : Type where [external]

export
ToFFI WindowPostMessageOptions WindowPostMessageOptions where toFFI = id

export
FromFFI WindowPostMessageOptions WindowPostMessageOptions where fromFFI = Just

export data WorkerOptions : Type where [external]

export
ToFFI WorkerOptions WorkerOptions where toFFI = id

export
FromFFI WorkerOptions WorkerOptions where fromFFI = Just

export data WorkletOptions : Type where [external]

export
ToFFI WorkletOptions WorkletOptions where toFFI = id

export
FromFFI WorkletOptions WorkletOptions where fromFFI = Just


--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data ARIAMixin : Type where [external]

export
ToFFI ARIAMixin ARIAMixin where toFFI = id

export
FromFFI ARIAMixin ARIAMixin where fromFFI = Just

export data AbstractWorker : Type where [external]

export
ToFFI AbstractWorker AbstractWorker where toFFI = id

export
FromFFI AbstractWorker AbstractWorker where fromFFI = Just

export data CanvasCompositing : Type where [external]

export
ToFFI CanvasCompositing CanvasCompositing where toFFI = id

export
FromFFI CanvasCompositing CanvasCompositing where fromFFI = Just

export data CanvasDrawImage : Type where [external]

export
ToFFI CanvasDrawImage CanvasDrawImage where toFFI = id

export
FromFFI CanvasDrawImage CanvasDrawImage where fromFFI = Just

export data CanvasDrawPath : Type where [external]

export
ToFFI CanvasDrawPath CanvasDrawPath where toFFI = id

export
FromFFI CanvasDrawPath CanvasDrawPath where fromFFI = Just

export data CanvasFillStrokeStyles : Type where [external]

export
ToFFI CanvasFillStrokeStyles CanvasFillStrokeStyles where toFFI = id

export
FromFFI CanvasFillStrokeStyles CanvasFillStrokeStyles where fromFFI = Just

export data CanvasFilters : Type where [external]

export
ToFFI CanvasFilters CanvasFilters where toFFI = id

export
FromFFI CanvasFilters CanvasFilters where fromFFI = Just

export data CanvasImageData : Type where [external]

export
ToFFI CanvasImageData CanvasImageData where toFFI = id

export
FromFFI CanvasImageData CanvasImageData where fromFFI = Just

export data CanvasImageSmoothing : Type where [external]

export
ToFFI CanvasImageSmoothing CanvasImageSmoothing where toFFI = id

export
FromFFI CanvasImageSmoothing CanvasImageSmoothing where fromFFI = Just

export data CanvasPath : Type where [external]

export
ToFFI CanvasPath CanvasPath where toFFI = id

export
FromFFI CanvasPath CanvasPath where fromFFI = Just

export data CanvasPathDrawingStyles : Type where [external]

export
ToFFI CanvasPathDrawingStyles CanvasPathDrawingStyles where toFFI = id

export
FromFFI CanvasPathDrawingStyles CanvasPathDrawingStyles where fromFFI = Just

export data CanvasRect : Type where [external]

export
ToFFI CanvasRect CanvasRect where toFFI = id

export
FromFFI CanvasRect CanvasRect where fromFFI = Just

export data CanvasShadowStyles : Type where [external]

export
ToFFI CanvasShadowStyles CanvasShadowStyles where toFFI = id

export
FromFFI CanvasShadowStyles CanvasShadowStyles where fromFFI = Just

export data CanvasState : Type where [external]

export
ToFFI CanvasState CanvasState where toFFI = id

export
FromFFI CanvasState CanvasState where fromFFI = Just

export data CanvasText : Type where [external]

export
ToFFI CanvasText CanvasText where toFFI = id

export
FromFFI CanvasText CanvasText where fromFFI = Just

export data CanvasTextDrawingStyles : Type where [external]

export
ToFFI CanvasTextDrawingStyles CanvasTextDrawingStyles where toFFI = id

export
FromFFI CanvasTextDrawingStyles CanvasTextDrawingStyles where fromFFI = Just

export data CanvasTransform : Type where [external]

export
ToFFI CanvasTransform CanvasTransform where toFFI = id

export
FromFFI CanvasTransform CanvasTransform where fromFFI = Just

export data CanvasUserInterface : Type where [external]

export
ToFFI CanvasUserInterface CanvasUserInterface where toFFI = id

export
FromFFI CanvasUserInterface CanvasUserInterface where fromFFI = Just

export data DocumentAndElementEventHandlers : Type where [external]

export
ToFFI DocumentAndElementEventHandlers DocumentAndElementEventHandlers where toFFI = id

export
FromFFI DocumentAndElementEventHandlers DocumentAndElementEventHandlers where fromFFI = Just

export data ElementContentEditable : Type where [external]

export
ToFFI ElementContentEditable ElementContentEditable where toFFI = id

export
FromFFI ElementContentEditable ElementContentEditable where fromFFI = Just

export data GlobalEventHandlers : Type where [external]

export
ToFFI GlobalEventHandlers GlobalEventHandlers where toFFI = id

export
FromFFI GlobalEventHandlers GlobalEventHandlers where fromFFI = Just

export data HTMLHyperlinkElementUtils : Type where [external]

export
ToFFI HTMLHyperlinkElementUtils HTMLHyperlinkElementUtils where toFFI = id

export
FromFFI HTMLHyperlinkElementUtils HTMLHyperlinkElementUtils where fromFFI = Just

export data HTMLOrSVGElement : Type where [external]

export
ToFFI HTMLOrSVGElement HTMLOrSVGElement where toFFI = id

export
FromFFI HTMLOrSVGElement HTMLOrSVGElement where fromFFI = Just

export data NavigatorConcurrentHardware : Type where [external]

export
ToFFI NavigatorConcurrentHardware NavigatorConcurrentHardware where toFFI = id

export
FromFFI NavigatorConcurrentHardware NavigatorConcurrentHardware where fromFFI = Just

export data NavigatorContentUtils : Type where [external]

export
ToFFI NavigatorContentUtils NavigatorContentUtils where toFFI = id

export
FromFFI NavigatorContentUtils NavigatorContentUtils where fromFFI = Just

export data NavigatorCookies : Type where [external]

export
ToFFI NavigatorCookies NavigatorCookies where toFFI = id

export
FromFFI NavigatorCookies NavigatorCookies where fromFFI = Just

export data NavigatorID : Type where [external]

export
ToFFI NavigatorID NavigatorID where toFFI = id

export
FromFFI NavigatorID NavigatorID where fromFFI = Just

export data NavigatorLanguage : Type where [external]

export
ToFFI NavigatorLanguage NavigatorLanguage where toFFI = id

export
FromFFI NavigatorLanguage NavigatorLanguage where fromFFI = Just

export data NavigatorOnLine : Type where [external]

export
ToFFI NavigatorOnLine NavigatorOnLine where toFFI = id

export
FromFFI NavigatorOnLine NavigatorOnLine where fromFFI = Just

export data NavigatorPlugins : Type where [external]

export
ToFFI NavigatorPlugins NavigatorPlugins where toFFI = id

export
FromFFI NavigatorPlugins NavigatorPlugins where fromFFI = Just

export data WindowEventHandlers : Type where [external]

export
ToFFI WindowEventHandlers WindowEventHandlers where toFFI = id

export
FromFFI WindowEventHandlers WindowEventHandlers where fromFFI = Just

export data WindowLocalStorage : Type where [external]

export
ToFFI WindowLocalStorage WindowLocalStorage where toFFI = id

export
FromFFI WindowLocalStorage WindowLocalStorage where fromFFI = Just


--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export data BlobCallback : Type where [external]

export
ToFFI BlobCallback BlobCallback where toFFI = id

export
FromFFI BlobCallback BlobCallback where fromFFI = Just

export data CompositionEventHandler : Type where [external]

export
ToFFI CompositionEventHandler CompositionEventHandler where toFFI = id

export
FromFFI CompositionEventHandler CompositionEventHandler where fromFFI = Just

export data CustomElementConstructor : Type where [external]

export
ToFFI CustomElementConstructor CustomElementConstructor where toFFI = id

export
FromFFI CustomElementConstructor CustomElementConstructor where fromFFI = Just

export data EventHandlerNonNull : Type where [external]

export
ToFFI EventHandlerNonNull EventHandlerNonNull where toFFI = id

export
FromFFI EventHandlerNonNull EventHandlerNonNull where fromFFI = Just

export data FocusEventHandler : Type where [external]

export
ToFFI FocusEventHandler FocusEventHandler where toFFI = id

export
FromFFI FocusEventHandler FocusEventHandler where fromFFI = Just

export data FunctionStringCallback : Type where [external]

export
ToFFI FunctionStringCallback FunctionStringCallback where toFFI = id

export
FromFFI FunctionStringCallback FunctionStringCallback where fromFFI = Just

export data InputEventHandler : Type where [external]

export
ToFFI InputEventHandler InputEventHandler where toFFI = id

export
FromFFI InputEventHandler InputEventHandler where fromFFI = Just

export data KeyboardEventHandler : Type where [external]

export
ToFFI KeyboardEventHandler KeyboardEventHandler where toFFI = id

export
FromFFI KeyboardEventHandler KeyboardEventHandler where fromFFI = Just

export data MouseEventHandler : Type where [external]

export
ToFFI MouseEventHandler MouseEventHandler where toFFI = id

export
FromFFI MouseEventHandler MouseEventHandler where fromFFI = Just

export data OnBeforeUnloadEventHandlerNonNull : Type where [external]

export
ToFFI OnBeforeUnloadEventHandlerNonNull OnBeforeUnloadEventHandlerNonNull where toFFI = id

export
FromFFI OnBeforeUnloadEventHandlerNonNull OnBeforeUnloadEventHandlerNonNull where fromFFI = Just

export data OnErrorEventHandlerNonNull : Type where [external]

export
ToFFI OnErrorEventHandlerNonNull OnErrorEventHandlerNonNull where toFFI = id

export
FromFFI OnErrorEventHandlerNonNull OnErrorEventHandlerNonNull where fromFFI = Just

export data UIEventHandler : Type where [external]

export
ToFFI UIEventHandler UIEventHandler where toFFI = id

export
FromFFI UIEventHandler UIEventHandler where fromFFI = Just

export data WheelEventHandler : Type where [external]

export
ToFFI WheelEventHandler WheelEventHandler where toFFI = id

export
FromFFI WheelEventHandler WheelEventHandler where fromFFI = Just
