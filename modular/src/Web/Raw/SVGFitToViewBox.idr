module Web.Raw.SVGFitToViewBox

import JS
import Web.Types.SVGAnimatedPreserveAspectRatio
import Web.Types.SVGAnimatedRect
import Web.Types.SVGFitToViewBox


%default total


export
%foreign "browser:lambda:x=>x.preserveAspectRatio"
prim__preserveAspectRatio :
     SVGFitToViewBox
  -> PrimIO SVGAnimatedPreserveAspectRatio


export
%foreign "browser:lambda:x=>x.viewBox"
prim__viewBox : SVGFitToViewBox -> PrimIO SVGAnimatedRect


export
preserveAspectRatio :
     {auto _ : Cast t1 SVGFitToViewBox}
  -> (obj : t1)
  -> JSIO SVGAnimatedPreserveAspectRatio
preserveAspectRatio a = primJS $
  SVGFitToViewBox.prim__preserveAspectRatio (cast a)


export
viewBox :
     {auto _ : Cast t1 SVGFitToViewBox}
  -> (obj : t1)
  -> JSIO SVGAnimatedRect
viewBox a = primJS $ SVGFitToViewBox.prim__viewBox (cast a)

