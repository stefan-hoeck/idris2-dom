module Web.Clipboard

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ClipboardEvent
  
  %foreign "browser:lambda:x=>x.clipboardData"
  prim__clipboardData : AnyPtr -> PrimIO AnyPtr
  
  export
  clipboardData :  Cast clipboardEvent ClipboardEvent
                => ToJS ClipboardEvent
                => (obj : clipboardEvent)
                -> IO (Maybe DataTransfer)

namespace ClipboardItem
  
  %foreign "browser:lambda:x=>x.delayed"
  prim__delayed : AnyPtr -> PrimIO AnyPtr
  
  export
  delayed :  Cast clipboardItem ClipboardItem
          => ToJS ClipboardItem
          => (obj : clipboardItem)
          -> IO Bool
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr
  
  export
  lastModified :  Cast clipboardItem ClipboardItem
               => ToJS ClipboardItem
               => (obj : clipboardItem)
               -> IO Int64
  
  %foreign "browser:lambda:x=>x.presentationStyle"
  prim__presentationStyle : AnyPtr -> PrimIO AnyPtr
  
  export
  presentationStyle :  Cast clipboardItem ClipboardItem
                    => ToJS ClipboardItem
                    => (obj : clipboardItem)
                    -> IO PresentationStyle
  
  %foreign "browser:lambda:x=>x.types"
  prim__types : AnyPtr -> PrimIO AnyPtr
  
  export
  types :  Cast clipboardItem ClipboardItem
        => ToJS ClipboardItem
        => (obj : clipboardItem)
        -> IO (JSArray String)


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ClipboardEventInit
  
  %foreign "browser:lambda:x=>x.clipboardData"
  prim__clipboardData : AnyPtr -> PrimIO AnyPtr
  
  export
  clipboardData :  Cast clipboardEventInit ClipboardEventInit
                => ToJS ClipboardEventInit
                => (obj : clipboardEventInit)
                -> IO (Maybe DataTransfer)
  
  %foreign "browser:lambda:(x,v)=>{x.clipboardData = v}"
  prim__setClipboardData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setClipboardData :  Cast clipboardEventInit ClipboardEventInit
                   => ToJS ClipboardEventInit
                   => Cast dataTransfer DataTransfer
                   => ToJS DataTransfer
                   => (obj : clipboardEventInit)
                   -> (v : Maybe dataTransfer)
                   -> IO ()

namespace ClipboardItemOptions
  
  %foreign "browser:lambda:x=>x.presentationStyle"
  prim__presentationStyle : AnyPtr -> PrimIO AnyPtr
  
  export
  presentationStyle :  Cast clipboardItemOptions ClipboardItemOptions
                    => ToJS ClipboardItemOptions
                    => (obj : clipboardItemOptions)
                    -> IO PresentationStyle
  
  %foreign "browser:lambda:(x,v)=>{x.presentationStyle = v}"
  prim__setPresentationStyle : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPresentationStyle :  Cast clipboardItemOptions ClipboardItemOptions
                       => ToJS ClipboardItemOptions
                       => Cast presentationStyle PresentationStyle
                       => ToJS PresentationStyle
                       => (obj : clipboardItemOptions)
                       -> (v : presentationStyle)
                       -> IO ()

namespace ClipboardPermissionDescriptor
  
  %foreign "browser:lambda:x=>x.allowWithoutGesture"
  prim__allowWithoutGesture : AnyPtr -> PrimIO AnyPtr
  
  export
  allowWithoutGesture :  Cast clipboardPermissionDescriptor ClipboardPermissionDescriptor
                      => ToJS ClipboardPermissionDescriptor
                      => (obj : clipboardPermissionDescriptor)
                      -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.allowWithoutGesture = v}"
  prim__setAllowWithoutGesture : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAllowWithoutGesture :  Cast clipboardPermissionDescriptor ClipboardPermissionDescriptor
                         => ToJS ClipboardPermissionDescriptor
                         => (obj : clipboardPermissionDescriptor)
                         -> (v : Bool)
                         -> IO ()



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast Clipboard EventTarget where
  cast = believe_me

export
Cast ClipboardEvent Event where
  cast = believe_me

export
Cast ClipboardEventInit EventInit where
  cast = believe_me

export
Cast ClipboardPermissionDescriptor PermissionDescriptor where
  cast = believe_me