module Web.Internal.ClipboardPrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Clipboard
  
  export
  %foreign "browser:lambda:x=>x.read()"
  prim__read : Clipboard -> PrimIO (Promise (Array ClipboardItem))
  
  export
  %foreign "browser:lambda:x=>x.readText()"
  prim__readText : Clipboard -> PrimIO (Promise String)
  
  export
  %foreign "browser:lambda:(x,a)=>x.write(a)"
  prim__write : Clipboard -> Array ClipboardItem -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:(x,a)=>x.writeText(a)"
  prim__writeText : Clipboard -> String -> PrimIO (Promise Undefined)

namespace ClipboardEvent
  
  export
  %foreign "browser:lambda:(a,b)=> new ClipboardEvent(a,b)"
  prim__new : String -> UndefOr ClipboardEventInit -> PrimIO ClipboardEvent
  
  export
  %foreign "browser:lambda:x=>x.clipboardData"
  prim__clipboardData : ClipboardEvent -> PrimIO (Nullable DataTransfer)

namespace ClipboardItem
  
  export
  %foreign "browser:lambda:(a,b)=> new ClipboardItem(a,b)"
  prim__new :  Record String (Promise (Union2 String Blob))
            -> UndefOr ClipboardItemOptions
            -> PrimIO ClipboardItem
  
  export
  %foreign "browser:lambda:(a,b)=>ClipboardItem.createDelayed(a,b)"
  prim__createDelayed :  Record String ClipboardItemDelayedCallback
                      -> UndefOr ClipboardItemOptions
                      -> PrimIO ClipboardItem
  
  export
  %foreign "browser:lambda:x=>x.delayed"
  prim__delayed : ClipboardItem -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : ClipboardItem -> PrimIO Int64
  
  export
  %foreign "browser:lambda:x=>x.presentationStyle"
  prim__presentationStyle : ClipboardItem -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.types"
  prim__types : ClipboardItem -> PrimIO (Array String)
  
  export
  %foreign "browser:lambda:(x,a)=>x.getType(a)"
  prim__getType : ClipboardItem -> String -> PrimIO (Promise Blob)


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ClipboardEventInit
  
  export
  %foreign "browser:lambda:(a)=> {clipboardData: a}"
  prim__new : UndefOr (Nullable DataTransfer) -> PrimIO ClipboardEventInit
  
  export
  %foreign "browser:lambda:x=>x.clipboardData"
  prim__clipboardData :  ClipboardEventInit
                      -> PrimIO $ UndefOr (Nullable DataTransfer)

  
  export
  %foreign "browser:lambda:(x,v)=>{x.clipboardData = v}"
  prim__setClipboardData :  ClipboardEventInit
                         -> UndefOr (Nullable DataTransfer)
                         -> PrimIO ()

namespace ClipboardItemOptions
  
  export
  %foreign "browser:lambda:(a)=> {presentationStyle: a}"
  prim__new : UndefOr String -> PrimIO ClipboardItemOptions
  
  export
  %foreign "browser:lambda:x=>x.presentationStyle"
  prim__presentationStyle : ClipboardItemOptions -> PrimIO $ UndefOr String

  
  export
  %foreign "browser:lambda:(x,v)=>{x.presentationStyle = v}"
  prim__setPresentationStyle :  ClipboardItemOptions
                             -> UndefOr String
                             -> PrimIO ()

namespace ClipboardPermissionDescriptor
  
  export
  %foreign "browser:lambda:(a)=> {allowWithoutGesture: a}"
  prim__new : UndefOr Boolean -> PrimIO ClipboardPermissionDescriptor
  
  export
  %foreign "browser:lambda:x=>x.allowWithoutGesture"
  prim__allowWithoutGesture :  ClipboardPermissionDescriptor
                            -> PrimIO $ UndefOr Boolean

  
  export
  %foreign "browser:lambda:(x,v)=>{x.allowWithoutGesture = v}"
  prim__setAllowWithoutGesture :  ClipboardPermissionDescriptor
                               -> UndefOr Boolean
                               -> PrimIO ()

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace ClipboardItemDelayedCallback
  
  export
  %foreign "browser:lambda:x=>()=>x()()"
  prim__toClipboardItemDelayedCallback :  (() -> IO (Promise (Union2 String
                                                                     Blob)))
                                       -> PrimIO ClipboardItemDelayedCallback