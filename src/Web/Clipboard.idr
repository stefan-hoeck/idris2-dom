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
  read : (obj : Clipboard) -> JSIO (Promise (Array ClipboardItem))
  read a = primJS $ Clipboard.prim__read a
  
  export
  readText : (obj : Clipboard) -> JSIO (Promise String)
  readText a = primJS $ Clipboard.prim__readText a
  
  export
  write :  (obj : Clipboard)
        -> (data_ : Array ClipboardItem)
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
      -> (eventInitDict : Optional ClipboardEventInit)
      -> JSIO ClipboardEvent
  new a b = primJS $ ClipboardEvent.prim__new a (toFFI b)

  export
  new' : (type : String) -> JSIO ClipboardEvent
  new' a = primJS $ ClipboardEvent.prim__new a undef
  
  export
  clipboardData : (obj : ClipboardEvent) -> JSIO (Maybe DataTransfer)
  clipboardData a = tryJS "ClipboardEvent.clipboardData"
                  $ ClipboardEvent.prim__clipboardData a

namespace ClipboardItem
  
  public export
  JSType ClipboardItem where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (items : Record String (Promise (Union2 String Blob)))
      -> (options : Optional ClipboardItemOptions)
      -> JSIO ClipboardItem
  new a b = primJS $ ClipboardItem.prim__new a (toFFI b)

  export
  new' :  (items : Record String (Promise (Union2 String Blob)))
       -> JSIO ClipboardItem
  new' a = primJS $ ClipboardItem.prim__new a undef
  
  export
  createDelayed :  (items : Record String ClipboardItemDelayedCallback)
                -> (options : Optional ClipboardItemOptions)
                -> JSIO ClipboardItem
  createDelayed a b = primJS $ ClipboardItem.prim__createDelayed a (toFFI b)

  export
  createDelayed' :  (items : Record String ClipboardItemDelayedCallback)
                 -> JSIO ClipboardItem
  createDelayed' a = primJS $ ClipboardItem.prim__createDelayed a undef
  
  export
  delayed : (obj : ClipboardItem) -> JSIO Bool
  delayed a = tryJS "ClipboardItem.delayed" $ ClipboardItem.prim__delayed a
  
  export
  lastModified : (obj : ClipboardItem) -> JSIO Int64
  lastModified a = primJS $ ClipboardItem.prim__lastModified a
  
  export
  presentationStyle : (obj : ClipboardItem) -> JSIO PresentationStyle
  presentationStyle a = tryJS "ClipboardItem.presentationStyle"
                      $ ClipboardItem.prim__presentationStyle a
  
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
  new :  (clipboardData : Optional (Maybe DataTransfer))
      -> JSIO ClipboardEventInit
  new a = primJS $ ClipboardEventInit.prim__new (toFFI a)

  export
  new' : JSIO ClipboardEventInit
  new' = primJS $ ClipboardEventInit.prim__new undef
  
  export
  clipboardData : ClipboardEventInit -> Attribute True Optional (Maybe DataTransfer)
  clipboardData = fromUndefOrPrim "ClipboardEventInit.getclipboardData"
                                  prim__clipboardData
                                  prim__setClipboardData
                                  Nothing

namespace ClipboardItemOptions
  
  public export
  JSType ClipboardItemOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (presentationStyle : Optional PresentationStyle)
      -> JSIO ClipboardItemOptions
  new a = primJS $ ClipboardItemOptions.prim__new (toFFI a)

  export
  new' : JSIO ClipboardItemOptions
  new' = primJS $ ClipboardItemOptions.prim__new undef
  
  export
  presentationStyle : ClipboardItemOptions -> Attribute False Optional PresentationStyle
  presentationStyle = fromUndefOrPrimNoDefault "ClipboardItemOptions.getpresentationStyle"
                                               prim__presentationStyle
                                               prim__setPresentationStyle

namespace ClipboardPermissionDescriptor
  
  public export
  JSType ClipboardPermissionDescriptor where
    parents =  [ PermissionDescriptor , Object ]

    mixins =  []
  
  export
  new :  (allowWithoutGesture : Optional Bool)
      -> JSIO ClipboardPermissionDescriptor
  new a = primJS $ ClipboardPermissionDescriptor.prim__new (toFFI a)

  export
  new' : JSIO ClipboardPermissionDescriptor
  new' = primJS $ ClipboardPermissionDescriptor.prim__new undef
  
  export
  allowWithoutGesture : ClipboardPermissionDescriptor -> Attribute True Optional Bool
  allowWithoutGesture = fromUndefOrPrim "ClipboardPermissionDescriptor.getallowWithoutGesture"
                                        prim__allowWithoutGesture
                                        prim__setAllowWithoutGesture
                                        False

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace ClipboardItemDelayedCallback
  
  export
  toClipboardItemDelayedCallback :  (() -> IO (Promise (Union2 String Blob)))
                                 -> JSIO ClipboardItemDelayedCallback
  toClipboardItemDelayedCallback cb = primJS $ prim__toClipboardItemDelayedCallback cb