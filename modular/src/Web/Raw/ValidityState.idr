module Web.Raw.ValidityState

import JS
import Web.Types.ValidityState


%default total


export
%foreign "browser:lambda:x=>x.badInput"
prim__badInput : ValidityState -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.customError"
prim__customError : ValidityState -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.patternMismatch"
prim__patternMismatch : ValidityState -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.rangeOverflow"
prim__rangeOverflow : ValidityState -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.rangeUnderflow"
prim__rangeUnderflow : ValidityState -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.stepMismatch"
prim__stepMismatch : ValidityState -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.tooLong"
prim__tooLong : ValidityState -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.tooShort"
prim__tooShort : ValidityState -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.typeMismatch"
prim__typeMismatch : ValidityState -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.valid"
prim__valid : ValidityState -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.valueMissing"
prim__valueMissing : ValidityState -> PrimIO Boolean


export
badInput : (obj : ValidityState) -> JSIO Bool
badInput a = tryJS "ValidityState.badInput" $ ValidityState.prim__badInput a


export
customError : (obj : ValidityState) -> JSIO Bool
customError a = tryJS "ValidityState.customError" $
  ValidityState.prim__customError a


export
patternMismatch : (obj : ValidityState) -> JSIO Bool
patternMismatch a = tryJS "ValidityState.patternMismatch" $
  ValidityState.prim__patternMismatch a


export
rangeOverflow : (obj : ValidityState) -> JSIO Bool
rangeOverflow a = tryJS "ValidityState.rangeOverflow" $
  ValidityState.prim__rangeOverflow a


export
rangeUnderflow : (obj : ValidityState) -> JSIO Bool
rangeUnderflow a = tryJS "ValidityState.rangeUnderflow" $
  ValidityState.prim__rangeUnderflow a


export
stepMismatch : (obj : ValidityState) -> JSIO Bool
stepMismatch a = tryJS "ValidityState.stepMismatch" $
  ValidityState.prim__stepMismatch a


export
tooLong : (obj : ValidityState) -> JSIO Bool
tooLong a = tryJS "ValidityState.tooLong" $ ValidityState.prim__tooLong a


export
tooShort : (obj : ValidityState) -> JSIO Bool
tooShort a = tryJS "ValidityState.tooShort" $ ValidityState.prim__tooShort a


export
typeMismatch : (obj : ValidityState) -> JSIO Bool
typeMismatch a = tryJS "ValidityState.typeMismatch" $
  ValidityState.prim__typeMismatch a


export
valid : (obj : ValidityState) -> JSIO Bool
valid a = tryJS "ValidityState.valid" $ ValidityState.prim__valid a


export
valueMissing : (obj : ValidityState) -> JSIO Bool
valueMissing a = tryJS "ValidityState.valueMissing" $
  ValidityState.prim__valueMissing a

