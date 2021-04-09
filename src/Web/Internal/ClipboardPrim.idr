module Web.Internal.ClipboardPrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Clipboard
  
  export
  %foreign "browser:lambda:(x,a)=>x.read(a)"
  prim__read : Clipboard -> PrimIO (Promise ClipboardItems)
  
  export
  %foreign "browser:lambda:(x,a)=>x.readText(a)"
  prim__readText : Clipboard -> PrimIO (Promise String)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.write(a b)"
  prim__write : Clipboard -> ClipboardItems -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.writeText(a b)"
  prim__writeText : Clipboard -> String -> PrimIO (Promise Undefined)

namespace ClipboardEvent
  
  export
  %foreign "browser:lambda:(a,b)=> new ClipboardEvent(a b)"
  prim__new : String -> UndefOr ClipboardEventInit -> PrimIO ClipboardEvent
  
  export
  %foreign "browser:lambda:x=>x.clipboardData"
  prim__clipboardData : ClipboardEvent -> PrimIO (Nullable DataTransfer)

namespace ClipboardItem
  
  export
  %foreign "browser:lambda:(a,b)=> new ClipboardItem(a b)"
  prim__new :  Record String ClipboardItemData
            -> UndefOr ClipboardItemOptions
            -> PrimIO ClipboardItem
  
  export
  %foreign "browser:lambda:(a,b)=>ClipboardItem.createDelayed(a b)"
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
  prim__presentationStyle : ClipboardItem -> PrimIO PresentationStyle
  
  export
  %foreign "browser:lambda:x=>x.types"
  prim__types : ClipboardItem -> PrimIO (Array String)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getType(a b)"
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
                      -> PrimIO (UndefOr (Nullable DataTransfer))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.clipboardData = v}"
  prim__setClipboardData :  ClipboardEventInit
                         -> UndefOr (Nullable DataTransfer)
                         -> PrimIO ()

namespace ClipboardItemOptions
  
  export
  %foreign "browser:lambda:(a)=> {presentationStyle: a}"
  prim__new : UndefOr PresentationStyle -> PrimIO ClipboardItemOptions
  
  export
  %foreign "browser:lambda:x=>x.presentationStyle"
  prim__presentationStyle :  ClipboardItemOptions
                          -> PrimIO (UndefOr PresentationStyle)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.presentationStyle = v}"
  prim__setPresentationStyle :  ClipboardItemOptions
                             -> UndefOr PresentationStyle
                             -> PrimIO ()

namespace ClipboardPermissionDescriptor
  
  export
  %foreign "browser:lambda:(a)=> {allowWithoutGesture: a}"
  prim__new : UndefOr Boolean -> PrimIO ClipboardPermissionDescriptor
  
  export
  %foreign "browser:lambda:x=>x.allowWithoutGesture"
  prim__allowWithoutGesture :  ClipboardPermissionDescriptor
                            -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.allowWithoutGesture = v}"
  prim__setAllowWithoutGesture :  ClipboardPermissionDescriptor
                               -> UndefOr Boolean
                               -> PrimIO ()