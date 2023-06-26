module Web.Raw.SVGTests

import JS
import Web.Types.SVGStringList
import Web.Types.SVGTests


%default total


export
%foreign "browser:lambda:x=>x.requiredExtensions"
prim__requiredExtensions : SVGTests -> PrimIO SVGStringList


export
%foreign "browser:lambda:x=>x.systemLanguage"
prim__systemLanguage : SVGTests -> PrimIO SVGStringList


export
requiredExtensions :
     {auto _ : Cast t1 SVGTests}
  -> (obj : t1)
  -> JSIO SVGStringList
requiredExtensions a = primJS $ SVGTests.prim__requiredExtensions (cast a)


export
systemLanguage : {auto _ : Cast t1 SVGTests} -> (obj : t1) -> JSIO SVGStringList
systemLanguage a = primJS $ SVGTests.prim__systemLanguage (cast a)
