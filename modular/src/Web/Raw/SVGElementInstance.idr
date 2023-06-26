module Web.Raw.SVGElementInstance

import JS
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGUseElement


%default total


export
%foreign "browser:lambda:x=>x.correspondingElement"
prim__correspondingElement : SVGElementInstance -> PrimIO (Nullable SVGElement)


export
%foreign "browser:lambda:x=>x.correspondingUseElement"
prim__correspondingUseElement :
     SVGElementInstance
  -> PrimIO (Nullable SVGUseElement)


export
correspondingElement :
     {auto _ : Cast t1 SVGElementInstance}
  -> (obj : t1)
  -> JSIO (Maybe SVGElement)
correspondingElement a = tryJS "SVGElementInstance.correspondingElement" $
  SVGElementInstance.prim__correspondingElement (cast a)


export
correspondingUseElement :
     {auto _ : Cast t1 SVGElementInstance}
  -> (obj : t1)
  -> JSIO (Maybe SVGUseElement)
correspondingUseElement a = tryJS "SVGElementInstance.correspondingUseElement" $
  SVGElementInstance.prim__correspondingUseElement (cast a)

