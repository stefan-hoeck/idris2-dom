module Web.Internal.CssomviewPrim

import JS
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CaretPosition
  
  export
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : CaretPosition -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:x=>x.offsetNode"
  prim__offsetNode : CaretPosition -> PrimIO Node

  
  export
  %foreign "browser:lambda:x=>x.getClientRect()"
  prim__getClientRect : CaretPosition -> PrimIO (Nullable DOMRect)



namespace MediaQueryList
  
  export
  %foreign "browser:lambda:x=>x.matches"
  prim__matches : MediaQueryList -> PrimIO Boolean

  
  export
  %foreign "browser:lambda:x=>x.media"
  prim__media : MediaQueryList -> PrimIO String

  
  export
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : MediaQueryList -> PrimIO (Nullable EventHandlerNonNull)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange :
       MediaQueryList
    -> Nullable EventHandlerNonNull
    -> PrimIO ()


  
  export
  %foreign "browser:lambda:(x,a)=>x.addListener(a)"
  prim__addListener : MediaQueryList -> Nullable EventListener -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a)=>x.removeListener(a)"
  prim__removeListener : MediaQueryList -> Nullable EventListener -> PrimIO ()



namespace MediaQueryListEvent
  
  export
  %foreign "browser:lambda:(a,b)=> new MediaQueryListEvent(a,b)"
  prim__new :
       String
    -> UndefOr MediaQueryListEventInit
    -> PrimIO MediaQueryListEvent

  
  export
  %foreign "browser:lambda:x=>x.matches"
  prim__matches : MediaQueryListEvent -> PrimIO Boolean

  
  export
  %foreign "browser:lambda:x=>x.media"
  prim__media : MediaQueryListEvent -> PrimIO String



namespace Screen
  
  export
  %foreign "browser:lambda:x=>x.availHeight"
  prim__availHeight : Screen -> PrimIO Int32

  
  export
  %foreign "browser:lambda:x=>x.availWidth"
  prim__availWidth : Screen -> PrimIO Int32

  
  export
  %foreign "browser:lambda:x=>x.colorDepth"
  prim__colorDepth : Screen -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : Screen -> PrimIO Int32

  
  export
  %foreign "browser:lambda:x=>x.pixelDepth"
  prim__pixelDepth : Screen -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : Screen -> PrimIO Int32



namespace VisualViewport
  
  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : VisualViewport -> PrimIO Double

  
  export
  %foreign "browser:lambda:x=>x.offsetLeft"
  prim__offsetLeft : VisualViewport -> PrimIO Double

  
  export
  %foreign "browser:lambda:x=>x.offsetTop"
  prim__offsetTop : VisualViewport -> PrimIO Double

  
  export
  %foreign "browser:lambda:x=>x.onresize"
  prim__onresize : VisualViewport -> PrimIO (Nullable EventHandlerNonNull)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.onresize = v}"
  prim__setOnresize :
       VisualViewport
    -> Nullable EventHandlerNonNull
    -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.onscroll"
  prim__onscroll : VisualViewport -> PrimIO (Nullable EventHandlerNonNull)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.onscroll = v}"
  prim__setOnscroll :
       VisualViewport
    -> Nullable EventHandlerNonNull
    -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.onscrollend"
  prim__onscrollend : VisualViewport -> PrimIO (Nullable EventHandlerNonNull)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.onscrollend = v}"
  prim__setOnscrollend :
       VisualViewport
    -> Nullable EventHandlerNonNull
    -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.pageLeft"
  prim__pageLeft : VisualViewport -> PrimIO Double

  
  export
  %foreign "browser:lambda:x=>x.pageTop"
  prim__pageTop : VisualViewport -> PrimIO Double

  
  export
  %foreign "browser:lambda:x=>x.scale"
  prim__scale : VisualViewport -> PrimIO Double

  
  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : VisualViewport -> PrimIO Double




--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace GeometryUtils
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.convertPointFromNode(a,b,c)"
  prim__convertPointFromNode :
       GeometryUtils
    -> DOMPointInit
    -> Union4 Text Element CSSPseudoElement Document
    -> UndefOr ConvertCoordinateOptions
    -> PrimIO DOMPoint

  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.convertQuadFromNode(a,b,c)"
  prim__convertQuadFromNode :
       GeometryUtils
    -> DOMQuadInit
    -> Union4 Text Element CSSPseudoElement Document
    -> UndefOr ConvertCoordinateOptions
    -> PrimIO DOMQuad

  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.convertRectFromNode(a,b,c)"
  prim__convertRectFromNode :
       GeometryUtils
    -> DOMRectReadOnly
    -> Union4 Text Element CSSPseudoElement Document
    -> UndefOr ConvertCoordinateOptions
    -> PrimIO DOMQuad

  
  export
  %foreign "browser:lambda:(x,a)=>x.getBoxQuads(a)"
  prim__getBoxQuads :
       GeometryUtils
    -> UndefOr BoxQuadOptions
    -> PrimIO (Array DOMQuad)




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace BoxQuadOptions
  
  export
  %foreign "browser:lambda:(a,b)=> ({box: a,relativeTo: b})"
  prim__new :
       UndefOr String
    -> UndefOr (Union4 Text Element CSSPseudoElement Document)
    -> PrimIO BoxQuadOptions

  
  export
  %foreign "browser:lambda:x=>x.box"
  prim__box : BoxQuadOptions -> PrimIO (UndefOr String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.box = v}"
  prim__setBox : BoxQuadOptions -> UndefOr String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.relativeTo"
  prim__relativeTo :
       BoxQuadOptions
    -> PrimIO (UndefOr (Union4 Text Element CSSPseudoElement Document))


  
  export
  %foreign "browser:lambda:(x,v)=>{x.relativeTo = v}"
  prim__setRelativeTo :
       BoxQuadOptions
    -> UndefOr (Union4 Text Element CSSPseudoElement Document)
    -> PrimIO ()




namespace CheckVisibilityOptions
  
  export
  %foreign "browser:lambda:(a,b)=> ({checkOpacity: a,checkVisibilityCSS: b})"
  prim__new :
       UndefOr Boolean
    -> UndefOr Boolean
    -> PrimIO CheckVisibilityOptions

  
  export
  %foreign "browser:lambda:x=>x.checkOpacity"
  prim__checkOpacity : CheckVisibilityOptions -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.checkOpacity = v}"
  prim__setCheckOpacity : CheckVisibilityOptions -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.checkVisibilityCSS"
  prim__checkVisibilityCSS : CheckVisibilityOptions -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.checkVisibilityCSS = v}"
  prim__setCheckVisibilityCSS :
       CheckVisibilityOptions
    -> UndefOr Boolean
    -> PrimIO ()




namespace ConvertCoordinateOptions
  
  export
  %foreign "browser:lambda:(a,b)=> ({fromBox: a,toBox: b})"
  prim__new :
       UndefOr String
    -> UndefOr String
    -> PrimIO ConvertCoordinateOptions

  
  export
  %foreign "browser:lambda:x=>x.fromBox"
  prim__fromBox : ConvertCoordinateOptions -> PrimIO (UndefOr String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.fromBox = v}"
  prim__setFromBox : ConvertCoordinateOptions -> UndefOr String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.toBox"
  prim__toBox : ConvertCoordinateOptions -> PrimIO (UndefOr String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.toBox = v}"
  prim__setToBox : ConvertCoordinateOptions -> UndefOr String -> PrimIO ()




namespace MediaQueryListEventInit
  
  export
  %foreign "browser:lambda:(a,b)=> ({media: a,matches: b})"
  prim__new :
       UndefOr String
    -> UndefOr Boolean
    -> PrimIO MediaQueryListEventInit

  
  export
  %foreign "browser:lambda:x=>x.matches"
  prim__matches : MediaQueryListEventInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.matches = v}"
  prim__setMatches : MediaQueryListEventInit -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.media"
  prim__media : MediaQueryListEventInit -> PrimIO (UndefOr String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.media = v}"
  prim__setMedia : MediaQueryListEventInit -> UndefOr String -> PrimIO ()




namespace ScrollIntoViewOptions
  
  export
  %foreign "browser:lambda:(a,b)=> ({block: a,inline: b})"
  prim__new : UndefOr String -> UndefOr String -> PrimIO ScrollIntoViewOptions

  
  export
  %foreign "browser:lambda:x=>x.block"
  prim__block : ScrollIntoViewOptions -> PrimIO (UndefOr String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.block = v}"
  prim__setBlock : ScrollIntoViewOptions -> UndefOr String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.inline"
  prim__inline : ScrollIntoViewOptions -> PrimIO (UndefOr String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.inline = v}"
  prim__setInline : ScrollIntoViewOptions -> UndefOr String -> PrimIO ()




namespace ScrollOptions
  
  export
  %foreign "browser:lambda:(a)=> ({behavior: a})"
  prim__new : UndefOr String -> PrimIO ScrollOptions

  
  export
  %foreign "browser:lambda:x=>x.behavior"
  prim__behavior : ScrollOptions -> PrimIO (UndefOr String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.behavior = v}"
  prim__setBehavior : ScrollOptions -> UndefOr String -> PrimIO ()




namespace ScrollToOptions
  
  export
  %foreign "browser:lambda:(a,b)=> ({left: a,top: b})"
  prim__new : UndefOr Double -> UndefOr Double -> PrimIO ScrollToOptions

  
  export
  %foreign "browser:lambda:x=>x.left"
  prim__left : ScrollToOptions -> PrimIO (UndefOr Double)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.left = v}"
  prim__setLeft : ScrollToOptions -> UndefOr Double -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.top"
  prim__top : ScrollToOptions -> PrimIO (UndefOr Double)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.top = v}"
  prim__setTop : ScrollToOptions -> UndefOr Double -> PrimIO ()




