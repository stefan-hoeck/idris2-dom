module Web.Raw.ConstrainablePattern

import JS
import Web.Types.Capabilities
import Web.Types.ConstrainablePattern
import Web.Types.Constraints
import Web.Types.Settings


%default total


export
%foreign "browser:lambda:(x,a)=>x.applyConstraints(a)"
prim__applyConstraints :
     ConstrainablePattern
  -> UndefOr Constraints
  -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:x=>x.getCapabilities()"
prim__getCapabilities : ConstrainablePattern -> PrimIO Capabilities


export
%foreign "browser:lambda:x=>x.getConstraints()"
prim__getConstraints : ConstrainablePattern -> PrimIO Constraints


export
%foreign "browser:lambda:x=>x.getSettings()"
prim__getSettings : ConstrainablePattern -> PrimIO Settings


export
applyConstraints' :
     {auto _ : Cast t2 Constraints}
  -> (obj : ConstrainablePattern)
  -> (constraints : Optional t2)
  -> JSIO (Promise Undefined)
applyConstraints' a b = primJS $
  ConstrainablePattern.prim__applyConstraints a (optUp b)

export
applyConstraints : (obj : ConstrainablePattern) -> JSIO (Promise Undefined)
applyConstraints a = primJS $
  ConstrainablePattern.prim__applyConstraints a undef


export
getCapabilities : (obj : ConstrainablePattern) -> JSIO Capabilities
getCapabilities a = primJS $ ConstrainablePattern.prim__getCapabilities a


export
getConstraints : (obj : ConstrainablePattern) -> JSIO Constraints
getConstraints a = primJS $ ConstrainablePattern.prim__getConstraints a


export
getSettings : (obj : ConstrainablePattern) -> JSIO Settings
getSettings a = primJS $ ConstrainablePattern.prim__getSettings a
