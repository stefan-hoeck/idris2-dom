module Web.Raw.CanvasUserInterface

import JS
import Web.Types.CanvasUserInterface
import Web.Types.Element
import Web.Types.Path2D


%default total


export
%foreign "browser:lambda:(x,a)=>x.drawFocusIfNeeded(a)"
prim__drawFocusIfNeeded : CanvasUserInterface -> Element -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.drawFocusIfNeeded(a,b)"
prim__drawFocusIfNeeded1 : CanvasUserInterface -> Path2D -> Element -> PrimIO ()


export
%foreign "browser:lambda:x=>x.scrollPathIntoView()"
prim__scrollPathIntoView : CanvasUserInterface -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.scrollPathIntoView(a)"
prim__scrollPathIntoView1 : CanvasUserInterface -> Path2D -> PrimIO ()


export
drawFocusIfNeeded :
     {auto _ : Cast t1 CanvasUserInterface}
  -> {auto _ : Cast t2 Element}
  -> (obj : t1)
  -> (element : t2)
  -> JSIO ()
drawFocusIfNeeded a b = primJS $
  CanvasUserInterface.prim__drawFocusIfNeeded (cast a) (cast b)


export
drawFocusIfNeeded1 :
     {auto _ : Cast t1 CanvasUserInterface}
  -> {auto _ : Cast t3 Element}
  -> (obj : t1)
  -> (path : Path2D)
  -> (element : t3)
  -> JSIO ()
drawFocusIfNeeded1 a b c = primJS $
  CanvasUserInterface.prim__drawFocusIfNeeded1 (cast a) b (cast c)


export
scrollPathIntoView :
     {auto _ : Cast t1 CanvasUserInterface}
  -> (obj : t1)
  -> JSIO ()
scrollPathIntoView a = primJS $
  CanvasUserInterface.prim__scrollPathIntoView (cast a)


export
scrollPathIntoView1 :
     {auto _ : Cast t1 CanvasUserInterface}
  -> (obj : t1)
  -> (path : Path2D)
  -> JSIO ()
scrollPathIntoView1 a b = primJS $
  CanvasUserInterface.prim__scrollPathIntoView1 (cast a) b

