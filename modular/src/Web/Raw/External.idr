module Web.Raw.External

import JS
import Web.Types.External


%default total


export
%foreign "browser:lambda:x=>x.AddSearchProvider()"
prim__AddSearchProvider : External -> PrimIO ()


export
%foreign "browser:lambda:x=>x.IsSearchProviderInstalled()"
prim__IsSearchProviderInstalled : External -> PrimIO ()


export
AddSearchProvider : (obj : External) -> JSIO ()
AddSearchProvider a = primJS $ External.prim__AddSearchProvider a


export
IsSearchProviderInstalled : (obj : External) -> JSIO ()
IsSearchProviderInstalled a = primJS $
  External.prim__IsSearchProviderInstalled a

