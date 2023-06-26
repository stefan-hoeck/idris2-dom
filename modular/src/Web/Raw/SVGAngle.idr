module Web.Raw.SVGAngle

import JS
import Web.Types.SVGAngle


%default total


export
SVG_ANGLETYPE_DEG : Bits16
SVG_ANGLETYPE_DEG = 2


export
SVG_ANGLETYPE_GRAD : Bits16
SVG_ANGLETYPE_GRAD = 4


export
SVG_ANGLETYPE_RAD : Bits16
SVG_ANGLETYPE_RAD = 3


export
SVG_ANGLETYPE_UNKNOWN : Bits16
SVG_ANGLETYPE_UNKNOWN = 0


export
SVG_ANGLETYPE_UNSPECIFIED : Bits16
SVG_ANGLETYPE_UNSPECIFIED = 1


export
%foreign "browser:lambda:x=>x.unitType"
prim__unitType : SVGAngle -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.value"
prim__value : SVGAngle -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : SVGAngle -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.valueAsString"
prim__valueAsString : SVGAngle -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.valueAsString = v}"
prim__setValueAsString : SVGAngle -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
prim__valueInSpecifiedUnits : SVGAngle -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits = v}"
prim__setValueInSpecifiedUnits : SVGAngle -> Double -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.convertToSpecifiedUnits(a)"
prim__convertToSpecifiedUnits : SVGAngle -> Bits16 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.newValueSpecifiedUnits(a,b)"
prim__newValueSpecifiedUnits : SVGAngle -> Bits16 -> Double -> PrimIO ()


export
unitType : (obj : SVGAngle) -> JSIO Bits16
unitType a = primJS $ SVGAngle.prim__unitType a


export
value : SVGAngle -> Attribute True Prelude.id Double
value v = fromPrim "SVGAngle.getvalue" prim__value prim__setValue v


export
valueAsString : SVGAngle -> Attribute True Prelude.id String
valueAsString v = fromPrim
                    "SVGAngle.getvalueAsString"
                    prim__valueAsString
                    prim__setValueAsString
                    v


export
valueInSpecifiedUnits : SVGAngle -> Attribute True Prelude.id Double
valueInSpecifiedUnits v = fromPrim
                            "SVGAngle.getvalueInSpecifiedUnits"
                            prim__valueInSpecifiedUnits
                            prim__setValueInSpecifiedUnits
                            v


export
convertToSpecifiedUnits : (obj : SVGAngle) -> (unitType : Bits16) -> JSIO ()
convertToSpecifiedUnits a b = primJS $
  SVGAngle.prim__convertToSpecifiedUnits a b


export
newValueSpecifiedUnits :
     (obj : SVGAngle)
  -> (unitType : Bits16)
  -> (valueInSpecifiedUnits : Double)
  -> JSIO ()
newValueSpecifiedUnits a b c = primJS $
  SVGAngle.prim__newValueSpecifiedUnits a b c
