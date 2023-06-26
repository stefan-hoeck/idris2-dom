module Web.Raw.WebGLShaderPrecisionFormat

import JS
import Web.Types.WebGLShaderPrecisionFormat


%default total


export
%foreign "browser:lambda:x=>x.precision"
prim__precision : WebGLShaderPrecisionFormat -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.rangeMax"
prim__rangeMax : WebGLShaderPrecisionFormat -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.rangeMin"
prim__rangeMin : WebGLShaderPrecisionFormat -> PrimIO Int32


export
precision : (obj : WebGLShaderPrecisionFormat) -> JSIO Int32
precision a = primJS $ WebGLShaderPrecisionFormat.prim__precision a


export
rangeMax : (obj : WebGLShaderPrecisionFormat) -> JSIO Int32
rangeMax a = primJS $ WebGLShaderPrecisionFormat.prim__rangeMax a


export
rangeMin : (obj : WebGLShaderPrecisionFormat) -> JSIO Int32
rangeMin a = primJS $ WebGLShaderPrecisionFormat.prim__rangeMin a
