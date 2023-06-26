module Web.Raw.TextMetrics

import JS
import Web.Types.TextMetrics


%default total


export
%foreign "browser:lambda:x=>x.actualBoundingBoxAscent"
prim__actualBoundingBoxAscent : TextMetrics -> PrimIO Double


export
%foreign "browser:lambda:x=>x.actualBoundingBoxDescent"
prim__actualBoundingBoxDescent : TextMetrics -> PrimIO Double


export
%foreign "browser:lambda:x=>x.actualBoundingBoxLeft"
prim__actualBoundingBoxLeft : TextMetrics -> PrimIO Double


export
%foreign "browser:lambda:x=>x.actualBoundingBoxRight"
prim__actualBoundingBoxRight : TextMetrics -> PrimIO Double


export
%foreign "browser:lambda:x=>x.alphabeticBaseline"
prim__alphabeticBaseline : TextMetrics -> PrimIO Double


export
%foreign "browser:lambda:x=>x.emHeightAscent"
prim__emHeightAscent : TextMetrics -> PrimIO Double


export
%foreign "browser:lambda:x=>x.emHeightDescent"
prim__emHeightDescent : TextMetrics -> PrimIO Double


export
%foreign "browser:lambda:x=>x.fontBoundingBoxAscent"
prim__fontBoundingBoxAscent : TextMetrics -> PrimIO Double


export
%foreign "browser:lambda:x=>x.fontBoundingBoxDescent"
prim__fontBoundingBoxDescent : TextMetrics -> PrimIO Double


export
%foreign "browser:lambda:x=>x.hangingBaseline"
prim__hangingBaseline : TextMetrics -> PrimIO Double


export
%foreign "browser:lambda:x=>x.ideographicBaseline"
prim__ideographicBaseline : TextMetrics -> PrimIO Double


export
%foreign "browser:lambda:x=>x.width"
prim__width : TextMetrics -> PrimIO Double


export
actualBoundingBoxAscent : (obj : TextMetrics) -> JSIO Double
actualBoundingBoxAscent a = primJS $ TextMetrics.prim__actualBoundingBoxAscent a


export
actualBoundingBoxDescent : (obj : TextMetrics) -> JSIO Double
actualBoundingBoxDescent a = primJS $
  TextMetrics.prim__actualBoundingBoxDescent a


export
actualBoundingBoxLeft : (obj : TextMetrics) -> JSIO Double
actualBoundingBoxLeft a = primJS $ TextMetrics.prim__actualBoundingBoxLeft a


export
actualBoundingBoxRight : (obj : TextMetrics) -> JSIO Double
actualBoundingBoxRight a = primJS $ TextMetrics.prim__actualBoundingBoxRight a


export
alphabeticBaseline : (obj : TextMetrics) -> JSIO Double
alphabeticBaseline a = primJS $ TextMetrics.prim__alphabeticBaseline a


export
emHeightAscent : (obj : TextMetrics) -> JSIO Double
emHeightAscent a = primJS $ TextMetrics.prim__emHeightAscent a


export
emHeightDescent : (obj : TextMetrics) -> JSIO Double
emHeightDescent a = primJS $ TextMetrics.prim__emHeightDescent a


export
fontBoundingBoxAscent : (obj : TextMetrics) -> JSIO Double
fontBoundingBoxAscent a = primJS $ TextMetrics.prim__fontBoundingBoxAscent a


export
fontBoundingBoxDescent : (obj : TextMetrics) -> JSIO Double
fontBoundingBoxDescent a = primJS $ TextMetrics.prim__fontBoundingBoxDescent a


export
hangingBaseline : (obj : TextMetrics) -> JSIO Double
hangingBaseline a = primJS $ TextMetrics.prim__hangingBaseline a


export
ideographicBaseline : (obj : TextMetrics) -> JSIO Double
ideographicBaseline a = primJS $ TextMetrics.prim__ideographicBaseline a


export
width : (obj : TextMetrics) -> JSIO Double
width a = primJS $ TextMetrics.prim__width a

