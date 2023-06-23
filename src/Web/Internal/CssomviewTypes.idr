module Web.Internal.CssomviewTypes

import JS

%default total


--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace ScrollBehavior

  public export
  data ScrollBehavior = Auto | Instant | Smooth

  export
  Show ScrollBehavior where
    show Auto = "auto"
    show Instant = "instant"
    show Smooth = "smooth"

  export
  Eq ScrollBehavior where
    (==) = (==) `on` show

  export
  Ord ScrollBehavior where
    compare = compare `on` show

  export
  read : String -> Maybe ScrollBehavior
  read "auto" = Just Auto
  read "instant" = Just Instant
  read "smooth" = Just Smooth
  read _ = Nothing

  export
  ToFFI ScrollBehavior String where
    toFFI = show

  export
  FromFFI ScrollBehavior String where
    fromFFI = read


namespace ScrollLogicalPosition

  public export
  data ScrollLogicalPosition = Start | Center | End | Nearest

  export
  Show ScrollLogicalPosition where
    show Start = "start"
    show Center = "center"
    show End = "end"
    show Nearest = "nearest"

  export
  Eq ScrollLogicalPosition where
    (==) = (==) `on` show

  export
  Ord ScrollLogicalPosition where
    compare = compare `on` show

  export
  read : String -> Maybe ScrollLogicalPosition
  read "start" = Just Start
  read "center" = Just Center
  read "end" = Just End
  read "nearest" = Just Nearest
  read _ = Nothing

  export
  ToFFI ScrollLogicalPosition String where
    toFFI = show

  export
  FromFFI ScrollLogicalPosition String where
    fromFFI = read


namespace CSSBoxType

  public export
  data CSSBoxType = Margin | Border | Padding | Content

  export
  Show CSSBoxType where
    show Margin = "margin"
    show Border = "border"
    show Padding = "padding"
    show Content = "content"

  export
  Eq CSSBoxType where
    (==) = (==) `on` show

  export
  Ord CSSBoxType where
    compare = compare `on` show

  export
  read : String -> Maybe CSSBoxType
  read "margin" = Just Margin
  read "border" = Just Border
  read "padding" = Just Padding
  read "content" = Just Content
  read _ = Nothing

  export
  ToFFI CSSBoxType String where
    toFFI = show

  export
  FromFFI CSSBoxType String where
    fromFFI = read



--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data CaretPosition : Type where [external]

export
ToFFI CaretPosition CaretPosition where toFFI = id

export
FromFFI CaretPosition CaretPosition where fromFFI = Just

export
SafeCast CaretPosition where
  safeCast = unsafeCastOnPrototypeName "CaretPosition"

export data MediaQueryList : Type where [external]

export
ToFFI MediaQueryList MediaQueryList where toFFI = id

export
FromFFI MediaQueryList MediaQueryList where fromFFI = Just

export
SafeCast MediaQueryList where
  safeCast = unsafeCastOnPrototypeName "MediaQueryList"

export data MediaQueryListEvent : Type where [external]

export
ToFFI MediaQueryListEvent MediaQueryListEvent where toFFI = id

export
FromFFI MediaQueryListEvent MediaQueryListEvent where fromFFI = Just

export
SafeCast MediaQueryListEvent where
  safeCast = unsafeCastOnPrototypeName "MediaQueryListEvent"

export data Screen : Type where [external]

export
ToFFI Screen Screen where toFFI = id

export
FromFFI Screen Screen where fromFFI = Just

export
SafeCast Screen where
  safeCast = unsafeCastOnPrototypeName "Screen"

export data VisualViewport : Type where [external]

export
ToFFI VisualViewport VisualViewport where toFFI = id

export
FromFFI VisualViewport VisualViewport where fromFFI = Just

export
SafeCast VisualViewport where
  safeCast = unsafeCastOnPrototypeName "VisualViewport"


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data BoxQuadOptions : Type where [external]

export
ToFFI BoxQuadOptions BoxQuadOptions where toFFI = id

export
FromFFI BoxQuadOptions BoxQuadOptions where fromFFI = Just

export data CheckVisibilityOptions : Type where [external]

export
ToFFI CheckVisibilityOptions CheckVisibilityOptions where toFFI = id

export
FromFFI CheckVisibilityOptions CheckVisibilityOptions where fromFFI = Just

export data ConvertCoordinateOptions : Type where [external]

export
ToFFI ConvertCoordinateOptions ConvertCoordinateOptions where toFFI = id

export
FromFFI ConvertCoordinateOptions ConvertCoordinateOptions where fromFFI = Just

export data MediaQueryListEventInit : Type where [external]

export
ToFFI MediaQueryListEventInit MediaQueryListEventInit where toFFI = id

export
FromFFI MediaQueryListEventInit MediaQueryListEventInit where fromFFI = Just

export data ScrollIntoViewOptions : Type where [external]

export
ToFFI ScrollIntoViewOptions ScrollIntoViewOptions where toFFI = id

export
FromFFI ScrollIntoViewOptions ScrollIntoViewOptions where fromFFI = Just

export data ScrollOptions : Type where [external]

export
ToFFI ScrollOptions ScrollOptions where toFFI = id

export
FromFFI ScrollOptions ScrollOptions where fromFFI = Just

export data ScrollToOptions : Type where [external]

export
ToFFI ScrollToOptions ScrollToOptions where toFFI = id

export
FromFFI ScrollToOptions ScrollToOptions where fromFFI = Just


--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data GeometryUtils : Type where [external]

export
ToFFI GeometryUtils GeometryUtils where toFFI = id

export
FromFFI GeometryUtils GeometryUtils where fromFFI = Just
