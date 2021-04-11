module JS.Buffer

import JS.Marshall

export
data UInt8ClampedArray : Type where [external]

export
ToFFI UInt8ClampedArray UInt8ClampedArray where toFFI = id

export
FromFFI UInt8ClampedArray UInt8ClampedArray where fromFFI = Just


export
data UInt8Array : Type where [external]

export
ToFFI UInt8Array UInt8Array where toFFI = id

export
FromFFI UInt8Array UInt8Array where fromFFI = Just


export
data UInt16Array : Type where [external]

export
ToFFI UInt16Array UInt16Array where toFFI = id

export
FromFFI UInt16Array UInt16Array where fromFFI = Just


export
data UInt32Array : Type where [external]

export
ToFFI UInt32Array UInt32Array where toFFI = id

export
FromFFI UInt32Array UInt32Array where fromFFI = Just


export
data Int8Array : Type where [external]

export
ToFFI Int8Array Int8Array where toFFI = id

export
FromFFI Int8Array Int8Array where fromFFI = Just


export
data Int16Array : Type where [external]

export
ToFFI Int16Array Int16Array where toFFI = id

export
FromFFI Int16Array Int16Array where fromFFI = Just


export
data Int32Array : Type where [external]

export
ToFFI Int32Array Int32Array where toFFI = id

export
FromFFI Int32Array Int32Array where fromFFI = Just


export
data Float32Array : Type where [external]

export
ToFFI Float32Array Float32Array where toFFI = id

export
FromFFI Float32Array Float32Array where fromFFI = Just


export
data Float64Array : Type where [external]

export
ToFFI Float64Array Float64Array where toFFI = id

export
FromFFI Float64Array Float64Array where fromFFI = Just


export
data DataView : Type where [external]

export
ToFFI DataView DataView where toFFI = id

export
FromFFI DataView DataView where fromFFI = Just


export
data ArrayBuffer : Type where [external]

export
ToFFI ArrayBuffer ArrayBuffer where toFFI = id

export
FromFFI ArrayBuffer ArrayBuffer where fromFFI = Just
