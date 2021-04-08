module Web.Clipboard
 
import JS
import Web.Internal.ClipboardPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Clipboard
  
  public export
  JSType Clipboard where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  read : (obj : Clipboard) -> JSIO (Promise ClipboardItems)
  read a = primJS $ Clipboard.prim__read a
  
  export
  readText : (obj : Clipboard) -> JSIO (Promise String)
  readText a = primJS $ Clipboard.prim__readText a
  
  export
  write :  (obj : Clipboard)
        -> (data_ : ClipboardItems)
        -> JSIO (Promise Undefined)
  write a b = primJS $ Clipboard.prim__write a b
  
  export
  writeText : (obj : Clipboard) -> (data_ : String) -> JSIO (Promise Undefined)
  writeText a b = primJS $ Clipboard.prim__writeText a b

namespace ClipboardEvent
  
  public export
  JSType ClipboardEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr ClipboardEventInit)
      -> JSIO ClipboardEvent
  new a b = primJS $ ClipboardEvent.prim__new a b
  
  export
  clipboardData : (obj : ClipboardEvent) -> JSIO (Nullable DataTransfer)
  clipboardData a = primJS $ ClipboardEvent.prim__clipboardData a

namespace ClipboardItem
  
  public export
  JSType ClipboardItem where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (items : Record String ClipboardItemData)
      -> (options : UndefOr ClipboardItemOptions)
      -> JSIO ClipboardItem
  new a b = primJS $ ClipboardItem.prim__new a b
  
  export
  delayed : (obj : ClipboardItem) -> JSIO Boolean
  delayed a = primJS $ ClipboardItem.prim__delayed a
  
  export
  lastModified : (obj : ClipboardItem) -> JSIO Int64
  lastModified a = primJS $ ClipboardItem.prim__lastModified a
  
  export
  presentationStyle : (obj : ClipboardItem) -> JSIO PresentationStyle
  presentationStyle a = primJS $ ClipboardItem.prim__presentationStyle a
  
  export
  types : (obj : ClipboardItem) -> JSIO (Array String)
  types a = primJS $ ClipboardItem.prim__types a
  
  export
  getType : (obj : ClipboardItem) -> (type : String) -> JSIO (Promise Blob)
  getType a b = primJS $ ClipboardItem.prim__getType a b


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ClipboardEventInit
  
  public export
  JSType ClipboardEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  clipboardData :  (obj : ClipboardEventInit)
                -> JSIO (UndefOr (Nullable DataTransfer))
  clipboardData a = primJS $ ClipboardEventInit.prim__clipboardData a
  
  export
  setClipboardData :  (obj : ClipboardEventInit)
                   -> (value : UndefOr (Nullable DataTransfer))
                   -> JSIO ()
  setClipboardData a b = primJS $ ClipboardEventInit.prim__setClipboardData a b

namespace ClipboardItemOptions
  
  public export
  JSType ClipboardItemOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  presentationStyle :  (obj : ClipboardItemOptions)
                    -> JSIO (UndefOr PresentationStyle)
  presentationStyle a = primJS $ ClipboardItemOptions.prim__presentationStyle a
  
  export
  setPresentationStyle :  (obj : ClipboardItemOptions)
                       -> (value : UndefOr PresentationStyle)
                       -> JSIO ()
  setPresentationStyle a b = primJS $ ClipboardItemOptions.prim__setPresentationStyle a
                                                                                      b

namespace ClipboardPermissionDescriptor
  
  public export
  JSType ClipboardPermissionDescriptor where
    parents =  [ PermissionDescriptor , Object ]

    mixins =  []
  
  export
  allowWithoutGesture :  (obj : ClipboardPermissionDescriptor)
                      -> JSIO (UndefOr Boolean)
  allowWithoutGesture a = primJS $ ClipboardPermissionDescriptor.prim__allowWithoutGesture a
  
  export
  setAllowWithoutGesture :  (obj : ClipboardPermissionDescriptor)
                         -> (value : UndefOr Boolean)
                         -> JSIO ()
  setAllowWithoutGesture a b = primJS $ ClipboardPermissionDescriptor.prim__setAllowWithoutGesture a
                                                                                                   b

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------
