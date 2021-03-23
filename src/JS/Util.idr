||| Javascript utilities. If these prove to be useful in
||| applications, they should eventually go into their
||| own package.
module JS.Util

--------------------------------------------------------------------------------
--          JS Primitives
--------------------------------------------------------------------------------

export
data JSAny : Type where [external]

export
data JSObject : Type where [external]

export
data Undefined : Type where [external]

export
data JSULong : Type where [external]

export
data JSLong : Type where [external]

export
data JSUInt : Type where [external]

export
data JSInt : Type where [external]

export
data JSArray : Type -> Type where [external]

export
data Float32Array : Type where [external]

export
data Float64Array : Type where [external]

export
data JSPromise : Type -> Type where [external]

export
data JSRecord : Type -> Type -> Type where [external]

--------------------------------------------------------------------------------
--          Aliases
--------------------------------------------------------------------------------

||| A String alias used in some CSS functions.
public export
0 CSSOMString : Type
CSSOMString = String

--------------------------------------------------------------------------------
--          Dummies
--------------------------------------------------------------------------------

-- The dummies below are types that appear in a DOM function or
-- type alias but are either not yet in the specification (my fault)
-- or need proper implementation and bindings here (my todo).

export
data CustomElementConstructor : Type where [external]

export
data WebGL2RenderingContext : Type where [external]

export
data WebGLRenderingContext : Type where [external]

export
data ServiceWorker : Type where [external]

export
data WindowProxy : Type where [external]

export
data MediaSource : Type where [external]

export
data MediaStream : Type where [external]

export
data FocusOptions : Type where [external]

export
data OnBeforeUnloadEventHandler : Type where [external]

export
data OnErrorEventHandler : Type where [external]

export
data WorkerNavigator : Type where [external]

export
data ArrayBufferView : Type where [external]

export
data ArrayBuffer : Type where [external]

export
data Uint8ClampedArray : Type where [external]

export
data SelectionMode : Type where [external]

export
data FunctionStringCallback : Type where [external]

export
data BufferSource : Type where [external]

export
data DOMException : Type where [external]

export
data ReadableStream : Type where [external]

export
data XPathNSResolver : Type where [external]

export
data NodeFilter : Type where [external]

export
data DOMHighResTimeStamp : Type where [external]

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export
data BlobCallback : Type where [external]

export
data ClipboardItemDelayedCallback : Type where [external]

export
data EventListener : Type where [external]

export
data MutationCallback : Type where [external]

export
data EventHandler : Type where [external]
