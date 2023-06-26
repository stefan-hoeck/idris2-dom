module Web.Raw.ClipboardItemDelayedCallback

import JS
import Web.Types.Blob
import Web.Types.ClipboardItemDelayedCallback


%default total


export
%foreign "browser:lambda:x=>()=>x()()"
prim__toClipboardItemDelayedCallback :
     (() -> IO (Promise (Union2 String Blob)))
  -> PrimIO ClipboardItemDelayedCallback


export
toClipboardItemDelayedCallback :
     (() -> IO (Promise (Union2 String Blob)))
  -> JSIO ClipboardItemDelayedCallback
toClipboardItemDelayedCallback cb = primJS $ prim__toClipboardItemDelayedCallback cb
