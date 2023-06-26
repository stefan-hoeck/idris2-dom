module Web.Raw.SVGAnimatedPoints

import JS
import Web.Types.SVGAnimatedPoints
import Web.Types.SVGPointList


%default total


export
%foreign "browser:lambda:x=>x.animatedPoints"
prim__animatedPoints : SVGAnimatedPoints -> PrimIO SVGPointList


export
%foreign "browser:lambda:x=>x.points"
prim__points : SVGAnimatedPoints -> PrimIO SVGPointList


export
animatedPoints :
     {auto _ : Cast t1 SVGAnimatedPoints}
  -> (obj : t1)
  -> JSIO SVGPointList
animatedPoints a = primJS $ SVGAnimatedPoints.prim__animatedPoints (cast a)


export
points : {auto _ : Cast t1 SVGAnimatedPoints} -> (obj : t1) -> JSIO SVGPointList
points a = primJS $ SVGAnimatedPoints.prim__points (cast a)
