module Web.Raw.SVGLength

import JS
import Web.Types.SVGLength


%default total


export
SVG_LENGTHTYPE_CM : Bits16
SVG_LENGTHTYPE_CM = 6


export
SVG_LENGTHTYPE_EMS : Bits16
SVG_LENGTHTYPE_EMS = 3


export
SVG_LENGTHTYPE_EXS : Bits16
SVG_LENGTHTYPE_EXS = 4


export
SVG_LENGTHTYPE_IN : Bits16
SVG_LENGTHTYPE_IN = 8


export
SVG_LENGTHTYPE_MM : Bits16
SVG_LENGTHTYPE_MM = 7


export
SVG_LENGTHTYPE_NUMBER : Bits16
SVG_LENGTHTYPE_NUMBER = 1


export
SVG_LENGTHTYPE_PC : Bits16
SVG_LENGTHTYPE_PC = 10


export
SVG_LENGTHTYPE_PERCENTAGE : Bits16
SVG_LENGTHTYPE_PERCENTAGE = 2


export
SVG_LENGTHTYPE_PT : Bits16
SVG_LENGTHTYPE_PT = 9


export
SVG_LENGTHTYPE_PX : Bits16
SVG_LENGTHTYPE_PX = 5


export
SVG_LENGTHTYPE_UNKNOWN : Bits16
SVG_LENGTHTYPE_UNKNOWN = 0


export
%foreign "browser:lambda:x=>x.unitType"
prim__unitType : SVGLength -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.value"
prim__value : SVGLength -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : SVGLength -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.valueAsString"
prim__valueAsString : SVGLength -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.valueAsString = v}"
prim__setValueAsString : SVGLength -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
prim__valueInSpecifiedUnits : SVGLength -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits = v}"
prim__setValueInSpecifiedUnits : SVGLength -> Double -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.convertToSpecifiedUnits(a)"
prim__convertToSpecifiedUnits : SVGLength -> Bits16 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.newValueSpecifiedUnits(a,b)"
prim__newValueSpecifiedUnits : SVGLength -> Bits16 -> Double -> PrimIO ()


export
unitType : (obj : SVGLength) -> JSIO Bits16
unitType a = primJS $ SVGLength.prim__unitType a


export
value : SVGLength -> Attribute True Prelude.id Double
value v = fromPrim "SVGLength.getvalue" prim__value prim__setValue v


export
valueAsString : SVGLength -> Attribute True Prelude.id String
valueAsString v = fromPrim
                    "SVGLength.getvalueAsString"
                    prim__valueAsString
                    prim__setValueAsString
                    v


export
valueInSpecifiedUnits : SVGLength -> Attribute True Prelude.id Double
valueInSpecifiedUnits v = fromPrim
                            "SVGLength.getvalueInSpecifiedUnits"
                            prim__valueInSpecifiedUnits
                            prim__setValueInSpecifiedUnits
                            v


export
convertToSpecifiedUnits : (obj : SVGLength) -> (unitType : Bits16) -> JSIO ()
convertToSpecifiedUnits a b = primJS $
  SVGLength.prim__convertToSpecifiedUnits a b


export
newValueSpecifiedUnits :
     (obj : SVGLength)
  -> (unitType : Bits16)
  -> (valueInSpecifiedUnits : Double)
  -> JSIO ()
newValueSpecifiedUnits a b c = primJS $
  SVGLength.prim__newValueSpecifiedUnits a b c

