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
  clipboardData a =   primToJSIO "clipboardData" $ prim__clipboardData (toJS a)

namespace ClipboardItem
  
  public export
  JSType ClipboardItem where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.delayed"
  prim__delayed : AnyPtr -> PrimIO AnyPtr

  export
  delayed : (obj : ClipboardItem) -> JSIO Bool
  delayed a =   primToJSIO "delayed" $ prim__delayed (toJS a)
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr

  export
  lastModified : (obj : ClipboardItem) -> JSIO Int64
  lastModified a =   primToJSIO "lastModified" $ prim__lastModified (toJS a)
  
  %foreign "browser:lambda:x=>x.presentationStyle"
  prim__presentationStyle : AnyPtr -> PrimIO AnyPtr

  export
  presentationStyle : (obj : ClipboardItem) -> JSIO PresentationStyle
  presentationStyle a =
    primToJSIO "presentationStyle" $ prim__presentationStyle (toJS a)
  
  %foreign "browser:lambda:x=>x.types"
  prim__types : AnyPtr -> PrimIO AnyPtr

  export
  types : (obj : ClipboardItem) -> JSIO (JSArray String)
  types a =   primToJSIO "types" $ prim__types (toJS a)


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
  clipboardData a =   primToJSIO "clipboardData" $ prim__clipboardData (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.clipboardData  = v}"
  prim__setClipboardData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClipboardData :  (obj : ClipboardEventInit)
                   -> (v : Maybe DataTransfer)
                   -> JSIO ()
  setClipboardData a b =
    primToJSIO "setClipboardData" $ prim__setClipboardData (toJS a) (toJS b)

namespace ClipboardItemOptions
  
  public export
  JSType ClipboardItemOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.presentationStyle"
  prim__presentationStyle : AnyPtr -> PrimIO AnyPtr

  export
  presentationStyle : (obj : ClipboardItemOptions) -> JSIO PresentationStyle
  presentationStyle a =
    primToJSIO "presentationStyle" $ prim__presentationStyle (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.presentationStyle  = v}"
  prim__setPresentationStyle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPresentationStyle :  (obj : ClipboardItemOptions)
                       -> (v : PresentationStyle)
                       -> JSIO ()
  setPresentationStyle a b =
    primToJSIO "setPresentationStyle" $ prim__setPresentationStyle (toJS a)
                                                                   (toJS b)

namespace ClipboardPermissionDescriptor
  
  public export
  JSType ClipboardPermissionDescriptor where
    parents =  [ PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.allowWithoutGesture"
  prim__allowWithoutGesture : AnyPtr -> PrimIO AnyPtr

  export
  allowWithoutGesture : (obj : ClipboardPermissionDescriptor) -> JSIO Bool
  allowWithoutGesture a =
    primToJSIO "allowWithoutGesture" $ prim__allowWithoutGesture (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.allowWithoutGesture  = v}"
  prim__setAllowWithoutGesture : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAllowWithoutGesture :  (obj : ClipboardPermissionDescriptor)
                         -> (v : Bool)
                         -> JSIO ()
  setAllowWithoutGesture a b =
    primToJSIO "setAllowWithoutGesture" $ prim__setAllowWithoutGesture (toJS a)
                                                                       (toJS b)

