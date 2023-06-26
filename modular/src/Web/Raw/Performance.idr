module Web.Raw.Performance

import JS
import Web.Types.EventTarget
import Web.Types.Performance


%default total


export
%foreign "browser:lambda:x=>x.timeOrigin"
prim__timeOrigin : Performance -> PrimIO Double


export
%foreign "browser:lambda:x=>x.now()"
prim__now : Performance -> PrimIO Double


export
%foreign "browser:lambda:x=>x.toJSON()"
prim__toJSON : Performance -> PrimIO Object


export
timeOrigin : (obj : Performance) -> JSIO Double
timeOrigin a = primJS $ Performance.prim__timeOrigin a


export
now : (obj : Performance) -> JSIO Double
now a = primJS $ Performance.prim__now a


export
toJSON : (obj : Performance) -> JSIO Object
toJSON a = primJS $ Performance.prim__toJSON a

