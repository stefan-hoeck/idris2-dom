module JS.DOM.Raw.Html

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