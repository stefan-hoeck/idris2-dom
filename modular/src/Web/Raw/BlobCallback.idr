module Web.Raw.BlobCallback

import JS
import Web.Types.Blob
import Web.Types.BlobCallback


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toBlobCallback : (Nullable Blob -> IO ()) -> PrimIO BlobCallback


export
toBlobCallback : (Nullable Blob -> IO ()) -> JSIO BlobCallback
toBlobCallback cb = primJS $ prim__toBlobCallback cb

