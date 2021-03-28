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
  clipboardData : (obj : ClipboardEvent) -> JSIO (Maybe DataTransfer)

namespace ClipboardItem
  
  public export
  JSType ClipboardItem where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.delayed"
  prim__delayed : AnyPtr -> PrimIO AnyPtr

  export
  delayed : (obj : ClipboardItem) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr

  export
  lastModified : (obj : ClipboardItem) -> JSIO Int64
  
  %foreign "browser:lambda:x=>x.presentationStyle"
  prim__presentationStyle : AnyPtr -> PrimIO AnyPtr

  export
  presentationStyle : (obj : ClipboardItem) -> JSIO PresentationStyle
  
  %foreign "browser:lambda:x=>x.types"
  prim__types : AnyPtr -> PrimIO AnyPtr

  export
  types : (obj : ClipboardItem) -> JSIO (JSArray String)


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
  clipboardData : (obj : ClipboardEventInit) -> JSIO (Maybe DataTransfer)

  %foreign "browser:lambda:(x,v)=>{x.clipboardData  = v}"
  prim__setClipboardData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClipboardData :  (obj : ClipboardEventInit)
                   -> (v : Maybe DataTransfer)
                   -> JSIO ()

namespace ClipboardItemOptions
  
  public export
  JSType ClipboardItemOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.presentationStyle"
  prim__presentationStyle : AnyPtr -> PrimIO AnyPtr

  export
  presentationStyle : (obj : ClipboardItemOptions) -> JSIO PresentationStyle

  %foreign "browser:lambda:(x,v)=>{x.presentationStyle  = v}"
  prim__setPresentationStyle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPresentationStyle :  (obj : ClipboardItemOptions)
                       -> (v : PresentationStyle)
                       -> JSIO ()

namespace ClipboardPermissionDescriptor
  
  public export
  JSType ClipboardPermissionDescriptor where
    parents =  [ PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.allowWithoutGesture"
  prim__allowWithoutGesture : AnyPtr -> PrimIO AnyPtr

  export
  allowWithoutGesture : (obj : ClipboardPermissionDescriptor) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.allowWithoutGesture  = v}"
  prim__setAllowWithoutGesture : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAllowWithoutGesture :  (obj : ClipboardPermissionDescriptor)
                         -> (v : Bool)
                         -> JSIO ()

