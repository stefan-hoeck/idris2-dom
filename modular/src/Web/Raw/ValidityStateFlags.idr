module Web.Raw.ValidityStateFlags

import JS
import Web.Types.ValidityStateFlags


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j)=> ({valueMissing: a,typeMismatch: b,patternMismatch: c,tooLong: d,tooShort: e,rangeUnderflow: f,rangeOverflow: g,stepMismatch: h,badInput: i,customError: j})"
prim__new :
     UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> PrimIO ValidityStateFlags


export
%foreign "browser:lambda:x=>x.badInput"
prim__badInput : ValidityStateFlags -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.badInput = v}"
prim__setBadInput : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.customError"
prim__customError : ValidityStateFlags -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.customError = v}"
prim__setCustomError : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.patternMismatch"
prim__patternMismatch : ValidityStateFlags -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.patternMismatch = v}"
prim__setPatternMismatch : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.rangeOverflow"
prim__rangeOverflow : ValidityStateFlags -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.rangeOverflow = v}"
prim__setRangeOverflow : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.rangeUnderflow"
prim__rangeUnderflow : ValidityStateFlags -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.rangeUnderflow = v}"
prim__setRangeUnderflow : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.stepMismatch"
prim__stepMismatch : ValidityStateFlags -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.stepMismatch = v}"
prim__setStepMismatch : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.tooLong"
prim__tooLong : ValidityStateFlags -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.tooLong = v}"
prim__setTooLong : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.tooShort"
prim__tooShort : ValidityStateFlags -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.tooShort = v}"
prim__setTooShort : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.typeMismatch"
prim__typeMismatch : ValidityStateFlags -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.typeMismatch = v}"
prim__setTypeMismatch : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.valueMissing"
prim__valueMissing : ValidityStateFlags -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.valueMissing = v}"
prim__setValueMissing : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()



export
new' :
     (valueMissing : Optional Bool)
  -> (typeMismatch : Optional Bool)
  -> (patternMismatch : Optional Bool)
  -> (tooLong : Optional Bool)
  -> (tooShort : Optional Bool)
  -> (rangeUnderflow : Optional Bool)
  -> (rangeOverflow : Optional Bool)
  -> (stepMismatch : Optional Bool)
  -> (badInput : Optional Bool)
  -> (customError : Optional Bool)
  -> JSIO ValidityStateFlags
new' a b c d e f g h i j = primJS $
  ValidityStateFlags.prim__new
    (toFFI a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)
    (toFFI g)
    (toFFI h)
    (toFFI i)
    (toFFI j)

export
new : JSIO ValidityStateFlags
new = primJS $
  ValidityStateFlags.prim__new
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef


export
badInput :
     {auto _ : Cast t ValidityStateFlags}
  -> t
  -> Attribute True Optional Bool
badInput v = fromUndefOrPrim
               "ValidityStateFlags.getbadInput"
               prim__badInput
               prim__setBadInput
               False
               (cast {to = ValidityStateFlags} v)


export
customError :
     {auto _ : Cast t ValidityStateFlags}
  -> t
  -> Attribute True Optional Bool
customError v = fromUndefOrPrim
                  "ValidityStateFlags.getcustomError"
                  prim__customError
                  prim__setCustomError
                  False
                  (cast {to = ValidityStateFlags} v)


export
patternMismatch :
     {auto _ : Cast t ValidityStateFlags}
  -> t
  -> Attribute True Optional Bool
patternMismatch v = fromUndefOrPrim
                      "ValidityStateFlags.getpatternMismatch"
                      prim__patternMismatch
                      prim__setPatternMismatch
                      False
                      (cast {to = ValidityStateFlags} v)


export
rangeOverflow :
     {auto _ : Cast t ValidityStateFlags}
  -> t
  -> Attribute True Optional Bool
rangeOverflow v = fromUndefOrPrim
                    "ValidityStateFlags.getrangeOverflow"
                    prim__rangeOverflow
                    prim__setRangeOverflow
                    False
                    (cast {to = ValidityStateFlags} v)


export
rangeUnderflow :
     {auto _ : Cast t ValidityStateFlags}
  -> t
  -> Attribute True Optional Bool
rangeUnderflow v = fromUndefOrPrim
                     "ValidityStateFlags.getrangeUnderflow"
                     prim__rangeUnderflow
                     prim__setRangeUnderflow
                     False
                     (cast {to = ValidityStateFlags} v)


export
stepMismatch :
     {auto _ : Cast t ValidityStateFlags}
  -> t
  -> Attribute True Optional Bool
stepMismatch v = fromUndefOrPrim
                   "ValidityStateFlags.getstepMismatch"
                   prim__stepMismatch
                   prim__setStepMismatch
                   False
                   (cast {to = ValidityStateFlags} v)


export
tooLong :
     {auto _ : Cast t ValidityStateFlags}
  -> t
  -> Attribute True Optional Bool
tooLong v = fromUndefOrPrim
              "ValidityStateFlags.gettooLong"
              prim__tooLong
              prim__setTooLong
              False
              (cast {to = ValidityStateFlags} v)


export
tooShort :
     {auto _ : Cast t ValidityStateFlags}
  -> t
  -> Attribute True Optional Bool
tooShort v = fromUndefOrPrim
               "ValidityStateFlags.gettooShort"
               prim__tooShort
               prim__setTooShort
               False
               (cast {to = ValidityStateFlags} v)


export
typeMismatch :
     {auto _ : Cast t ValidityStateFlags}
  -> t
  -> Attribute True Optional Bool
typeMismatch v = fromUndefOrPrim
                   "ValidityStateFlags.gettypeMismatch"
                   prim__typeMismatch
                   prim__setTypeMismatch
                   False
                   (cast {to = ValidityStateFlags} v)


export
valueMissing :
     {auto _ : Cast t ValidityStateFlags}
  -> t
  -> Attribute True Optional Bool
valueMissing v = fromUndefOrPrim
                   "ValidityStateFlags.getvalueMissing"
                   prim__valueMissing
                   prim__setValueMissing
                   False
                   (cast {to = ValidityStateFlags} v)
