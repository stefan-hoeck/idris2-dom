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
  new' : (type : String) -> JSIO ClipboardEvent
  new' a = new a undef
  
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
  new' : (items : Record String ClipboardItemData) -> JSIO ClipboardItem
  new' a = new a undef
  
  export
  createDelayed :  (items : Record String ClipboardItemDelayedCallback)
                -> (options : UndefOr ClipboardItemOptions)
                -> JSIO ClipboardItem
  createDelayed a b = primJS $ ClipboardItem.prim__createDelayed a b

  export
  createDelayed' :  (items : Record String ClipboardItemDelayedCallback)
                 -> JSIO ClipboardItem
  createDelayed' a = createDelayed a undef
  
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
  new :  (clipboardData : UndefOr (Nullable DataTransfer))
      -> JSIO ClipboardEventInit
  new a = primJS $ ClipboardEventInit.prim__new a

  export
  new' : JSIO ClipboardEventInit
  new' = new undef
  
  export
  clipboardData :  (obj : ClipboardEventInit)
                -> JSIO (UndefOr (Nullable DataTransfer))
  clipboardData a = primJS $ ClipboardEventInit.prim__clipboardData a
  
  export
  setClipboardData :  (obj : ClipboardEventInit)
                   -> (value : UndefOr (Nullable DataTransfer))
                   -> JSIO ()
  setClipboardData a b = primJS $ ClipboardEventInit.prim__setClipboardData a b

  export
  setClipboardData' : (obj : ClipboardEventInit) -> JSIO ()
  setClipboardData' a = setClipboardData a undef

namespace ClipboardItemOptions
  
  public export
  JSType ClipboardItemOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (presentationStyle : UndefOr PresentationStyle)
      -> JSIO ClipboardItemOptions
  new a = primJS $ ClipboardItemOptions.prim__new a

  export
  new' : JSIO ClipboardItemOptions
  new' = new undef
  
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

  export
  setPresentationStyle' : (obj : ClipboardItemOptions) -> JSIO ()
  setPresentationStyle' a = setPresentationStyle a undef

namespace ClipboardPermissionDescriptor
  
  public export
  JSType ClipboardPermissionDescriptor where
    parents =  [ PermissionDescriptor , Object ]

    mixins =  []
  
  export
  new :  (allowWithoutGesture : UndefOr Boolean)
      -> JSIO ClipboardPermissionDescriptor
  new a = primJS $ ClipboardPermissionDescriptor.prim__new a

  export
  new' : JSIO ClipboardPermissionDescriptor
  new' = new undef
  
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

  export
  setAllowWithoutGesture' : (obj : ClipboardPermissionDescriptor) -> JSIO ()
  setAllowWithoutGesture' a = setAllowWithoutGesture a undef

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------
