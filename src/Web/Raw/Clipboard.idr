module Web.Raw.Clipboard
 
import JS
import Web.Internal.ClipboardPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Clipboard
  
  export
  read :  JSType t1
       => {auto 0 _ : Elem Clipboard (Types t1)}
       -> (obj : t1)
       -> JSIO (Promise (Array ClipboardItem))
  read a = primJS $ Clipboard.prim__read (up a)
  
  export
  readText :  JSType t1
           => {auto 0 _ : Elem Clipboard (Types t1)}
           -> (obj : t1)
           -> JSIO (Promise String)
  readText a = primJS $ Clipboard.prim__readText (up a)
  
  export
  write :  JSType t1
        => {auto 0 _ : Elem Clipboard (Types t1)}
        -> (obj : t1)
        -> (data_ : Array ClipboardItem)
        -> JSIO (Promise Undefined)
  write a b = primJS $ Clipboard.prim__write (up a) b
  
  export
  writeText :  JSType t1
            => {auto 0 _ : Elem Clipboard (Types t1)}
            -> (obj : t1)
            -> (data_ : String)
            -> JSIO (Promise Undefined)
  writeText a b = primJS $ Clipboard.prim__writeText (up a) b

namespace ClipboardEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem ClipboardEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO ClipboardEvent
  new a b = primJS $ ClipboardEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO ClipboardEvent
  new' a = primJS $ ClipboardEvent.prim__new a undef
  
  export
  clipboardData :  JSType t1
                => {auto 0 _ : Elem ClipboardEvent (Types t1)}
                -> (obj : t1)
                -> JSIO (Maybe DataTransfer)
  clipboardData a = tryJS "ClipboardEvent.clipboardData"
                  $ ClipboardEvent.prim__clipboardData (up a)

namespace ClipboardItem
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem ClipboardItemOptions (Types t1)}
      -> (items : Record String (Promise (Union2 String Blob)))
      -> (options : Optional t1)
      -> JSIO ClipboardItem
  new a b = primJS $ ClipboardItem.prim__new a (optUp b)

  export
  new' :  (items : Record String (Promise (Union2 String Blob)))
       -> JSIO ClipboardItem
  new' a = primJS $ ClipboardItem.prim__new a undef
  
  export
  createDelayed :  JSType t1
                => {auto 0 _ : Elem ClipboardItemOptions (Types t1)}
                -> (items : Record String ClipboardItemDelayedCallback)
                -> (options : Optional t1)
                -> JSIO ClipboardItem
  createDelayed a b = primJS $ ClipboardItem.prim__createDelayed a (optUp b)

  export
  createDelayed' :  (items : Record String ClipboardItemDelayedCallback)
                 -> JSIO ClipboardItem
  createDelayed' a = primJS $ ClipboardItem.prim__createDelayed a undef
  
  export
  delayed :  JSType t1
          => {auto 0 _ : Elem ClipboardItem (Types t1)}
          -> (obj : t1)
          -> JSIO Bool
  delayed a = tryJS "ClipboardItem.delayed" $ ClipboardItem.prim__delayed (up a)
  
  export
  lastModified :  JSType t1
               => {auto 0 _ : Elem ClipboardItem (Types t1)}
               -> (obj : t1)
               -> JSIO Int64
  lastModified a = primJS $ ClipboardItem.prim__lastModified (up a)
  
  export
  presentationStyle :  JSType t1
                    => {auto 0 _ : Elem ClipboardItem (Types t1)}
                    -> (obj : t1)
                    -> JSIO PresentationStyle
  presentationStyle a = tryJS "ClipboardItem.presentationStyle"
                      $ ClipboardItem.prim__presentationStyle (up a)
  
  export
  types :  JSType t1
        => {auto 0 _ : Elem ClipboardItem (Types t1)}
        -> (obj : t1)
        -> JSIO (Array String)
  types a = primJS $ ClipboardItem.prim__types (up a)
  
  export
  getType :  JSType t1
          => {auto 0 _ : Elem ClipboardItem (Types t1)}
          -> (obj : t1)
          -> (type : String)
          -> JSIO (Promise Blob)
  getType a b = primJS $ ClipboardItem.prim__getType (up a) b


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ClipboardEventInit
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem DataTransfer (Types t1)}
      -> (clipboardData : Optional (Maybe t1))
      -> JSIO ClipboardEventInit
  new a = primJS $ ClipboardEventInit.prim__new (omyUp a)

  export
  new' : JSIO ClipboardEventInit
  new' = primJS $ ClipboardEventInit.prim__new undef
  
  export
  clipboardData :  JSType t
                => {auto 0 _ : Elem ClipboardEventInit (Types t)}
                -> t
                -> Attribute True Optional (Maybe DataTransfer)
  clipboardData v = fromUndefOrPrim "ClipboardEventInit.getclipboardData"
                                    prim__clipboardData
                                    prim__setClipboardData
                                    Nothing
                                    (v :> ClipboardEventInit)

namespace ClipboardItemOptions
  
  export
  new :  (presentationStyle : Optional PresentationStyle)
      -> JSIO ClipboardItemOptions
  new a = primJS $ ClipboardItemOptions.prim__new (toFFI a)

  export
  new' : JSIO ClipboardItemOptions
  new' = primJS $ ClipboardItemOptions.prim__new undef
  
  export
  presentationStyle :  JSType t
                    => {auto 0 _ : Elem ClipboardItemOptions (Types t)}
                    -> t
                    -> Attribute False Optional PresentationStyle
  presentationStyle v = fromUndefOrPrimNoDefault "ClipboardItemOptions.getpresentationStyle"
                                                 prim__presentationStyle
                                                 prim__setPresentationStyle
                                                 (v :> ClipboardItemOptions)

namespace ClipboardPermissionDescriptor
  
  export
  new :  (allowWithoutGesture : Optional Bool)
      -> JSIO ClipboardPermissionDescriptor
  new a = primJS $ ClipboardPermissionDescriptor.prim__new (toFFI a)

  export
  new' : JSIO ClipboardPermissionDescriptor
  new' = primJS $ ClipboardPermissionDescriptor.prim__new undef
  
  export
  allowWithoutGesture :  JSType t
                      => {auto 0 _ : Elem ClipboardPermissionDescriptor (Types t)}
                      -> t
                      -> Attribute True Optional Bool
  allowWithoutGesture v = fromUndefOrPrim "ClipboardPermissionDescriptor.getallowWithoutGesture"
                                          prim__allowWithoutGesture
                                          prim__setAllowWithoutGesture
                                          False
                                          (v :> ClipboardPermissionDescriptor)

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace ClipboardItemDelayedCallback
  
  export
  toClipboardItemDelayedCallback :  (() -> IO (Promise (Union2 String Blob)))
                                 -> JSIO ClipboardItemDelayedCallback
  toClipboardItemDelayedCallback cb = primJS $ prim__toClipboardItemDelayedCallback cb