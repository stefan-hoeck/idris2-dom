module Web.Raw.Cssomview

import JS
import Web.Internal.CssomviewPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CaretPosition

  export
  offset : (obj : CaretPosition) -> JSIO Bits32
  offset a = primJS $ CaretPosition.prim__offset a


  export
  offsetNode : (obj : CaretPosition) -> JSIO Node
  offsetNode a = primJS $ CaretPosition.prim__offsetNode a


  export
  getClientRect : (obj : CaretPosition) -> JSIO (Maybe DOMRect)
  getClientRect a = tryJS "CaretPosition.getClientRect" $
    CaretPosition.prim__getClientRect a



namespace MediaQueryList

  export
  matches : (obj : MediaQueryList) -> JSIO Bool
  matches a = tryJS "MediaQueryList.matches" $ MediaQueryList.prim__matches a


  export
  media : (obj : MediaQueryList) -> JSIO String
  media a = primJS $ MediaQueryList.prim__media a


  export
  onchange : MediaQueryList -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim
                 "MediaQueryList.getonchange"
                 prim__onchange
                 prim__setOnchange
                 v


  export
  addListener :
       (obj : MediaQueryList)
    -> (callback : Maybe EventListener)
    -> JSIO ()
  addListener a b = primJS $ MediaQueryList.prim__addListener a (toFFI b)


  export
  removeListener :
       (obj : MediaQueryList)
    -> (callback : Maybe EventListener)
    -> JSIO ()
  removeListener a b = primJS $ MediaQueryList.prim__removeListener a (toFFI b)



namespace MediaQueryListEvent

  export
  new :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem MediaQueryListEventInit (Types t2)}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO MediaQueryListEvent
  new a b = primJS $ MediaQueryListEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO MediaQueryListEvent
  new' a = primJS $ MediaQueryListEvent.prim__new a undef


  export
  matches : (obj : MediaQueryListEvent) -> JSIO Bool
  matches a = tryJS "MediaQueryListEvent.matches" $
    MediaQueryListEvent.prim__matches a


  export
  media : (obj : MediaQueryListEvent) -> JSIO String
  media a = primJS $ MediaQueryListEvent.prim__media a



namespace Screen

  export
  availHeight : (obj : Screen) -> JSIO Int32
  availHeight a = primJS $ Screen.prim__availHeight a


  export
  availWidth : (obj : Screen) -> JSIO Int32
  availWidth a = primJS $ Screen.prim__availWidth a


  export
  colorDepth : (obj : Screen) -> JSIO Bits32
  colorDepth a = primJS $ Screen.prim__colorDepth a


  export
  height : (obj : Screen) -> JSIO Int32
  height a = primJS $ Screen.prim__height a


  export
  pixelDepth : (obj : Screen) -> JSIO Bits32
  pixelDepth a = primJS $ Screen.prim__pixelDepth a


  export
  width : (obj : Screen) -> JSIO Int32
  width a = primJS $ Screen.prim__width a



namespace VisualViewport

  export
  height : (obj : VisualViewport) -> JSIO Double
  height a = primJS $ VisualViewport.prim__height a


  export
  offsetLeft : (obj : VisualViewport) -> JSIO Double
  offsetLeft a = primJS $ VisualViewport.prim__offsetLeft a


  export
  offsetTop : (obj : VisualViewport) -> JSIO Double
  offsetTop a = primJS $ VisualViewport.prim__offsetTop a


  export
  onresize : VisualViewport -> Attribute False Maybe EventHandlerNonNull
  onresize v = fromNullablePrim
                 "VisualViewport.getonresize"
                 prim__onresize
                 prim__setOnresize
                 v


  export
  onscroll : VisualViewport -> Attribute False Maybe EventHandlerNonNull
  onscroll v = fromNullablePrim
                 "VisualViewport.getonscroll"
                 prim__onscroll
                 prim__setOnscroll
                 v


  export
  onscrollend : VisualViewport -> Attribute False Maybe EventHandlerNonNull
  onscrollend v = fromNullablePrim
                    "VisualViewport.getonscrollend"
                    prim__onscrollend
                    prim__setOnscrollend
                    v


  export
  pageLeft : (obj : VisualViewport) -> JSIO Double
  pageLeft a = primJS $ VisualViewport.prim__pageLeft a


  export
  pageTop : (obj : VisualViewport) -> JSIO Double
  pageTop a = primJS $ VisualViewport.prim__pageTop a


  export
  scale : (obj : VisualViewport) -> JSIO Double
  scale a = primJS $ VisualViewport.prim__scale a


  export
  width : (obj : VisualViewport) -> JSIO Double
  width a = primJS $ VisualViewport.prim__width a




--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace GeometryUtils

  export
  convertPointFromNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : JSType t4}
    -> {auto 0 _ : Elem GeometryUtils (Types t1)}
    -> {auto 0 _ : Elem DOMPointInit (Types t2)}
    -> {auto 0 _ : Elem ConvertCoordinateOptions (Types t4)}
    -> (obj : t1)
    -> (point : t2)
    -> (from : NS I [Text, Element, CSSPseudoElement, Document])
    -> (options : Optional t4)
    -> JSIO DOMPoint
  convertPointFromNode a b c d = primJS $
    GeometryUtils.prim__convertPointFromNode (up a) (up b) (toFFI c) (optUp d)

  export
  convertPointFromNode' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem GeometryUtils (Types t1)}
    -> {auto 0 _ : Elem DOMPointInit (Types t2)}
    -> (obj : t1)
    -> (point : t2)
    -> (from : NS I [Text, Element, CSSPseudoElement, Document])
    -> JSIO DOMPoint
  convertPointFromNode' a b c = primJS $
    GeometryUtils.prim__convertPointFromNode (up a) (up b) (toFFI c) undef


  export
  convertQuadFromNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : JSType t4}
    -> {auto 0 _ : Elem GeometryUtils (Types t1)}
    -> {auto 0 _ : Elem DOMQuadInit (Types t2)}
    -> {auto 0 _ : Elem ConvertCoordinateOptions (Types t4)}
    -> (obj : t1)
    -> (quad : t2)
    -> (from : NS I [Text, Element, CSSPseudoElement, Document])
    -> (options : Optional t4)
    -> JSIO DOMQuad
  convertQuadFromNode a b c d = primJS $
    GeometryUtils.prim__convertQuadFromNode (up a) (up b) (toFFI c) (optUp d)

  export
  convertQuadFromNode' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem GeometryUtils (Types t1)}
    -> {auto 0 _ : Elem DOMQuadInit (Types t2)}
    -> (obj : t1)
    -> (quad : t2)
    -> (from : NS I [Text, Element, CSSPseudoElement, Document])
    -> JSIO DOMQuad
  convertQuadFromNode' a b c = primJS $
    GeometryUtils.prim__convertQuadFromNode (up a) (up b) (toFFI c) undef


  export
  convertRectFromNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : JSType t4}
    -> {auto 0 _ : Elem GeometryUtils (Types t1)}
    -> {auto 0 _ : Elem DOMRectReadOnly (Types t2)}
    -> {auto 0 _ : Elem ConvertCoordinateOptions (Types t4)}
    -> (obj : t1)
    -> (rect : t2)
    -> (from : NS I [Text, Element, CSSPseudoElement, Document])
    -> (options : Optional t4)
    -> JSIO DOMQuad
  convertRectFromNode a b c d = primJS $
    GeometryUtils.prim__convertRectFromNode (up a) (up b) (toFFI c) (optUp d)

  export
  convertRectFromNode' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem GeometryUtils (Types t1)}
    -> {auto 0 _ : Elem DOMRectReadOnly (Types t2)}
    -> (obj : t1)
    -> (rect : t2)
    -> (from : NS I [Text, Element, CSSPseudoElement, Document])
    -> JSIO DOMQuad
  convertRectFromNode' a b c = primJS $
    GeometryUtils.prim__convertRectFromNode (up a) (up b) (toFFI c) undef


  export
  getBoxQuads :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem GeometryUtils (Types t1)}
    -> {auto 0 _ : Elem BoxQuadOptions (Types t2)}
    -> (obj : t1)
    -> (options : Optional t2)
    -> JSIO (Array DOMQuad)
  getBoxQuads a b = primJS $ GeometryUtils.prim__getBoxQuads (up a) (optUp b)

  export
  getBoxQuads' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem GeometryUtils (Types t1)}
    -> (obj : t1)
    -> JSIO (Array DOMQuad)
  getBoxQuads' a = primJS $ GeometryUtils.prim__getBoxQuads (up a) undef




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace BoxQuadOptions

  export
  new :
       (box : Optional CSSBoxType)
    -> (relativeTo : Optional
                       (NS I [Text, Element, CSSPseudoElement, Document]))
    -> JSIO BoxQuadOptions
  new a b = primJS $ BoxQuadOptions.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO BoxQuadOptions
  new' = primJS $ BoxQuadOptions.prim__new undef undef


  export
  box :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem BoxQuadOptions (Types t)}
    -> t
    -> Attribute False Optional CSSBoxType
  box v = fromUndefOrPrimNoDefault
            "BoxQuadOptions.getbox"
            prim__box
            prim__setBox
            (v :> BoxQuadOptions)


  export
  relativeTo :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem BoxQuadOptions (Types t)}
    -> t
    -> Attribute False Optional (NS I
                                   [Text, Element, CSSPseudoElement, Document])
  relativeTo v = fromUndefOrPrimNoDefault
                   "BoxQuadOptions.getrelativeTo"
                   prim__relativeTo
                   prim__setRelativeTo
                   (v :> BoxQuadOptions)



namespace CheckVisibilityOptions

  export
  new :
       (checkOpacity : Optional Bool)
    -> (checkVisibilityCSS : Optional Bool)
    -> JSIO CheckVisibilityOptions
  new a b = primJS $ CheckVisibilityOptions.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO CheckVisibilityOptions
  new' = primJS $ CheckVisibilityOptions.prim__new undef undef


  export
  checkOpacity :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem CheckVisibilityOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  checkOpacity v = fromUndefOrPrim
                     "CheckVisibilityOptions.getcheckOpacity"
                     prim__checkOpacity
                     prim__setCheckOpacity
                     False
                     (v :> CheckVisibilityOptions)


  export
  checkVisibilityCSS :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem CheckVisibilityOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  checkVisibilityCSS v = fromUndefOrPrim
                           "CheckVisibilityOptions.getcheckVisibilityCSS"
                           prim__checkVisibilityCSS
                           prim__setCheckVisibilityCSS
                           False
                           (v :> CheckVisibilityOptions)



namespace ConvertCoordinateOptions

  export
  new :
       (fromBox : Optional CSSBoxType)
    -> (toBox : Optional CSSBoxType)
    -> JSIO ConvertCoordinateOptions
  new a b = primJS $ ConvertCoordinateOptions.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ConvertCoordinateOptions
  new' = primJS $ ConvertCoordinateOptions.prim__new undef undef


  export
  fromBox :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ConvertCoordinateOptions (Types t)}
    -> t
    -> Attribute False Optional CSSBoxType
  fromBox v = fromUndefOrPrimNoDefault
                "ConvertCoordinateOptions.getfromBox"
                prim__fromBox
                prim__setFromBox
                (v :> ConvertCoordinateOptions)


  export
  toBox :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ConvertCoordinateOptions (Types t)}
    -> t
    -> Attribute False Optional CSSBoxType
  toBox v = fromUndefOrPrimNoDefault
              "ConvertCoordinateOptions.gettoBox"
              prim__toBox
              prim__setToBox
              (v :> ConvertCoordinateOptions)



namespace MediaQueryListEventInit

  export
  new :
       (media : Optional String)
    -> (matches : Optional Bool)
    -> JSIO MediaQueryListEventInit
  new a b = primJS $ MediaQueryListEventInit.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO MediaQueryListEventInit
  new' = primJS $ MediaQueryListEventInit.prim__new undef undef


  export
  matches :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaQueryListEventInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  matches v = fromUndefOrPrim
                "MediaQueryListEventInit.getmatches"
                prim__matches
                prim__setMatches
                False
                (v :> MediaQueryListEventInit)


  export
  media :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaQueryListEventInit (Types t)}
    -> t
    -> Attribute True Optional String
  media v = fromUndefOrPrim
              "MediaQueryListEventInit.getmedia"
              prim__media
              prim__setMedia
              ""
              (v :> MediaQueryListEventInit)



namespace ScrollIntoViewOptions

  export
  new :
       (block : Optional ScrollLogicalPosition)
    -> (inline : Optional ScrollLogicalPosition)
    -> JSIO ScrollIntoViewOptions
  new a b = primJS $ ScrollIntoViewOptions.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ScrollIntoViewOptions
  new' = primJS $ ScrollIntoViewOptions.prim__new undef undef


  export
  block :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ScrollIntoViewOptions (Types t)}
    -> t
    -> Attribute False Optional ScrollLogicalPosition
  block v = fromUndefOrPrimNoDefault
              "ScrollIntoViewOptions.getblock"
              prim__block
              prim__setBlock
              (v :> ScrollIntoViewOptions)


  export
  inline :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ScrollIntoViewOptions (Types t)}
    -> t
    -> Attribute False Optional ScrollLogicalPosition
  inline v = fromUndefOrPrimNoDefault
               "ScrollIntoViewOptions.getinline"
               prim__inline
               prim__setInline
               (v :> ScrollIntoViewOptions)



namespace ScrollOptions

  export
  new : (behavior : Optional ScrollBehavior) -> JSIO ScrollOptions
  new a = primJS $ ScrollOptions.prim__new (toFFI a)

  export
  new' : JSIO ScrollOptions
  new' = primJS $ ScrollOptions.prim__new undef


  export
  behavior :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ScrollOptions (Types t)}
    -> t
    -> Attribute False Optional ScrollBehavior
  behavior v = fromUndefOrPrimNoDefault
                 "ScrollOptions.getbehavior"
                 prim__behavior
                 prim__setBehavior
                 (v :> ScrollOptions)



namespace ScrollToOptions

  export
  new :
       (left : Optional Double)
    -> (top : Optional Double)
    -> JSIO ScrollToOptions
  new a b = primJS $ ScrollToOptions.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ScrollToOptions
  new' = primJS $ ScrollToOptions.prim__new undef undef


  export
  left :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ScrollToOptions (Types t)}
    -> t
    -> Attribute False Optional Double
  left v = fromUndefOrPrimNoDefault
             "ScrollToOptions.getleft"
             prim__left
             prim__setLeft
             (v :> ScrollToOptions)


  export
  top :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ScrollToOptions (Types t)}
    -> t
    -> Attribute False Optional Double
  top v = fromUndefOrPrimNoDefault
            "ScrollToOptions.gettop"
            prim__top
            prim__setTop
            (v :> ScrollToOptions)
