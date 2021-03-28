module Web.Clipboard
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Clipboard
  
  public export
  JSType Clipboard where
    parents =  [ EventTarget , JSObject ]

    mixins =  []

namespace ClipboardEvent
  
  public export
  JSType ClipboardEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.clipboardData"
  prim__clipboardData : AnyPtr -> PrimIO AnyPtr

  export
  clipboardData : (obj : ClipboardEvent) -> IO (Maybe DataTransfer)

namespace ClipboardItem
  
  public export
  JSType ClipboardItem where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.delayed"
  prim__delayed : AnyPtr -> PrimIO AnyPtr

  export
  delayed : (obj : ClipboardItem) -> IO Bool
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr

  export
  lastModified : (obj : ClipboardItem) -> IO Int64
  
  %foreign "browser:lambda:x=>x.presentationStyle"
  prim__presentationStyle : AnyPtr -> PrimIO AnyPtr

  export
  presentationStyle : (obj : ClipboardItem) -> IO PresentationStyle
  
  %foreign "browser:lambda:x=>x.types"
  prim__types : AnyPtr -> PrimIO AnyPtr

  export
  types : (obj : ClipboardItem) -> IO (JSArray String)


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ClipboardEventInit
  
  public export
  JSType ClipboardEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.clipboardData"
  prim__clipboardData : AnyPtr -> PrimIO AnyPtr

  export
  clipboardData : (obj : ClipboardEventInit) -> IO (Maybe DataTransfer)

  %foreign "browser:lambda:(x,v)=>{x.clipboardData  = v}"
  prim__setClipboardData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClipboardData :  (obj : ClipboardEventInit)
                   -> (v : Maybe DataTransfer)
                   -> IO ()

namespace ClipboardItemOptions
  
  public export
  JSType ClipboardItemOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.presentationStyle"
  prim__presentationStyle : AnyPtr -> PrimIO AnyPtr

  export
  presentationStyle : (obj : ClipboardItemOptions) -> IO PresentationStyle

  %foreign "browser:lambda:(x,v)=>{x.presentationStyle  = v}"
  prim__setPresentationStyle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPresentationStyle :  (obj : ClipboardItemOptions)
                       -> (v : PresentationStyle)
                       -> IO ()

namespace ClipboardPermissionDescriptor
  
  public export
  JSType ClipboardPermissionDescriptor where
    parents =  [ PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.allowWithoutGesture"
  prim__allowWithoutGesture : AnyPtr -> PrimIO AnyPtr

  export
  allowWithoutGesture : (obj : ClipboardPermissionDescriptor) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.allowWithoutGesture  = v}"
  prim__setAllowWithoutGesture : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAllowWithoutGesture :  (obj : ClipboardPermissionDescriptor)
                         -> (v : Bool)
                         -> IO ()

