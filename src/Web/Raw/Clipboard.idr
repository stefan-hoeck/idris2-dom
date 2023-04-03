module Web.Raw.Clipboard

import JS
import Web.Internal.ClipboardPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Clipboard

  export
  read : (obj : Clipboard) -> JSIO (Promise (Array ClipboardItem))
  read a = primJS $ Clipboard.prim__read a


  export
  readText : (obj : Clipboard) -> JSIO (Promise String)
  readText a = primJS $ Clipboard.prim__readText a


  export
  write :
       (obj : Clipboard)
    -> (data_ : Array ClipboardItem)
    -> JSIO (Promise Undefined)
  write a b = primJS $ Clipboard.prim__write a b


  export
  writeText : (obj : Clipboard) -> (data_ : String) -> JSIO (Promise Undefined)
  writeText a b = primJS $ Clipboard.prim__writeText a b



namespace ClipboardEvent

  export
  new :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem ClipboardEventInit (Types t2)}
    -> (type : String)
    -> {default Undef eventInitDict : Optional t2}
    -> JSIO ClipboardEvent
  new a = primJS $ ClipboardEvent.prim__new a (optUp eventInitDict)


  export
  clipboardData : (obj : ClipboardEvent) -> JSIO (Maybe DataTransfer)
  clipboardData a = tryJS "ClipboardEvent.clipboardData" $
    ClipboardEvent.prim__clipboardData a



namespace ClipboardItem

  export
  new :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem ClipboardItemOptions (Types t2)}
    -> (items : Record String (Promise (Union2 String Blob)))
    -> {default Undef options : Optional t2}
    -> JSIO ClipboardItem
  new a = primJS $ ClipboardItem.prim__new a (optUp options)


  export
  createDelayed :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem ClipboardItemOptions (Types t2)}
    -> (items : Record String ClipboardItemDelayedCallback)
    -> {default Undef options : Optional t2}
    -> JSIO ClipboardItem
  createDelayed a = primJS $ ClipboardItem.prim__createDelayed a (optUp options)


  export
  delayed : (obj : ClipboardItem) -> JSIO Bool
  delayed a = tryJS "ClipboardItem.delayed" $ ClipboardItem.prim__delayed a


  export
  lastModified : (obj : ClipboardItem) -> JSIO JSInt64
  lastModified a = primJS $ ClipboardItem.prim__lastModified a


  export
  presentationStyle : (obj : ClipboardItem) -> JSIO PresentationStyle
  presentationStyle a = tryJS "ClipboardItem.presentationStyle" $
    ClipboardItem.prim__presentationStyle a


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

  export
  new :
       {default Undef clipboardData : Optional (Maybe DataTransfer)}
    -> JSIO ClipboardEventInit
  new = primJS $ ClipboardEventInit.prim__new (toFFI clipboardData)


  export
  clipboardData :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ClipboardEventInit (Types t)}
    -> t
    -> Attribute True Optional (Maybe DataTransfer)
  clipboardData v = fromUndefOrPrim
                      "ClipboardEventInit.getclipboardData"
                      prim__clipboardData
                      prim__setClipboardData
                      Nothing
                      (v :> ClipboardEventInit)



namespace ClipboardItemOptions

  export
  new :
       {default Undef presentationStyle : Optional PresentationStyle}
    -> JSIO ClipboardItemOptions
  new = primJS $ ClipboardItemOptions.prim__new (toFFI presentationStyle)


  export
  presentationStyle :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ClipboardItemOptions (Types t)}
    -> t
    -> Attribute False Optional PresentationStyle
  presentationStyle v = fromUndefOrPrimNoDefault
                          "ClipboardItemOptions.getpresentationStyle"
                          prim__presentationStyle
                          prim__setPresentationStyle
                          (v :> ClipboardItemOptions)



namespace ClipboardPermissionDescriptor

  export
  new :
       {default Undef allowWithoutGesture : Optional Bool}
    -> JSIO ClipboardPermissionDescriptor
  new = primJS $
    ClipboardPermissionDescriptor.prim__new (toFFI allowWithoutGesture)


  export
  allowWithoutGesture :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ClipboardPermissionDescriptor (Types t)}
    -> t
    -> Attribute True Optional Bool
  allowWithoutGesture v = fromUndefOrPrim
                            "ClipboardPermissionDescriptor.getallowWithoutGesture"
                            prim__allowWithoutGesture
                            prim__setAllowWithoutGesture
                            False
                            (v :> ClipboardPermissionDescriptor)




--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace ClipboardItemDelayedCallback

  export
  toClipboardItemDelayedCallback :
       (() -> IO (Promise (Union2 String Blob)))
    -> JSIO ClipboardItemDelayedCallback
  toClipboardItemDelayedCallback cb = primJS $ prim__toClipboardItemDelayedCallback cb
