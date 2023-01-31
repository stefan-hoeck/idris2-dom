module JS.Buffer

import JS.Marshall

%default total

export
data ArrayBuffer : Type where [external]

export
ToFFI ArrayBuffer ArrayBuffer where toFFI = id

export
FromFFI ArrayBuffer ArrayBuffer where fromFFI = Just


export
data UInt8ClampedArray : Type where [external]

export
ToFFI UInt8ClampedArray UInt8ClampedArray where toFFI = id

export
FromFFI UInt8ClampedArray UInt8ClampedArray where fromFFI = Just

%foreign "javascript:lambda:x => new Uint8ClampedArray(x)"
prim__toUint8ClampedArray : ArrayBuffer -> UInt8ClampedArray

export
Cast ArrayBuffer UInt8ClampedArray where
  cast = prim__toUint8ClampedArray


export
data UInt8Array : Type where [external]

export
ToFFI UInt8Array UInt8Array where toFFI = id

export
FromFFI UInt8Array UInt8Array where fromFFI = Just

%foreign "javascript:lambda:x => new Uint8Array(x)"
prim__toUint8Array : ArrayBuffer -> UInt8Array

export
Cast ArrayBuffer UInt8Array where
  cast = prim__toUint8Array


export
data UInt16Array : Type where [external]

export
ToFFI UInt16Array UInt16Array where toFFI = id

export
FromFFI UInt16Array UInt16Array where fromFFI = Just

%foreign "javascript:lambda:x => new Uint16Array(x)"
prim__toUint16Array : ArrayBuffer -> UInt16Array

export
Cast ArrayBuffer UInt16Array where
  cast = prim__toUint16Array


export
data UInt32Array : Type where [external]

export
ToFFI UInt32Array UInt32Array where toFFI = id

export
FromFFI UInt32Array UInt32Array where fromFFI = Just

%foreign "javascript:lambda:x => new Uint32Array(x)"
prim__toUint32Array : ArrayBuffer -> UInt32Array

export
Cast ArrayBuffer UInt32Array where
  cast = prim__toUint32Array


export
data Int8Array : Type where [external]

export
ToFFI Int8Array Int8Array where toFFI = id

export
FromFFI Int8Array Int8Array where fromFFI = Just

%foreign "javascript:lambda:x => new Int8Array(x)"
prim__toInt8Array : ArrayBuffer -> Int8Array

export
Cast ArrayBuffer Int8Array where
  cast = prim__toInt8Array


export
data Int16Array : Type where [external]

export
ToFFI Int16Array Int16Array where toFFI = id

export
FromFFI Int16Array Int16Array where fromFFI = Just

%foreign "javascript:lambda:x => new Int16Array(x)"
prim__toInt16Array : ArrayBuffer -> Int16Array

export
Cast ArrayBuffer Int16Array where
  cast = prim__toInt16Array


export
data Int32Array : Type where [external]

export
ToFFI Int32Array Int32Array where toFFI = id

export
FromFFI Int32Array Int32Array where fromFFI = Just

%foreign "javascript:lambda:x => new Int32Array(x)"
prim__toInt32Array : ArrayBuffer -> Int32Array

export
Cast ArrayBuffer Int32Array where
  cast = prim__toInt32Array


export
data Float32Array : Type where [external]

export
ToFFI Float32Array Float32Array where toFFI = id

export
FromFFI Float32Array Float32Array where fromFFI = Just

%foreign "javascript:lambda:x => new Float32Array(x)"
prim__toFloat32Array : ArrayBuffer -> Float32Array

export
Cast ArrayBuffer Float32Array where
  cast = prim__toFloat32Array


export
data Float64Array : Type where [external]

export
ToFFI Float64Array Float64Array where toFFI = id

export
FromFFI Float64Array Float64Array where fromFFI = Just

%foreign "javascript:lambda:x => new Float64Array(x)"
prim__toFloat64Array : ArrayBuffer -> Float64Array

export
Cast ArrayBuffer Float64Array where
  cast = prim__toFloat64Array


export
data DataView : Type where [external]

export
ToFFI DataView DataView where toFFI = id

export
FromFFI DataView DataView where fromFFI = Just
