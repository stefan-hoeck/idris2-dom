module Web.Clipboard

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ClipboardEvent
  
  %foreign "browser:lambda:x=>x.clipboardData"
  prim__clipboardData : AnyPtr -> PrimIO AnyPtr

namespace ClipboardItem
  
  %foreign "browser:lambda:x=>x.delayed"
  prim__delayed : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.presentationStyle"
  prim__presentationStyle : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.types"
  prim__types : AnyPtr -> PrimIO AnyPtr


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ClipboardEventInit
  
  %foreign "browser:lambda:x=>x.clipboardData"
  prim__clipboardData : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.clipboardData = v}"
  prim__setClipboardData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ClipboardItemOptions
  
  %foreign "browser:lambda:x=>x.presentationStyle"
  prim__presentationStyle : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.presentationStyle = v}"
  prim__setPresentationStyle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ClipboardPermissionDescriptor
  
  %foreign "browser:lambda:x=>x.allowWithoutGesture"
  prim__allowWithoutGesture : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.allowWithoutGesture = v}"
  prim__setAllowWithoutGesture : AnyPtr -> AnyPtr -> PrimIO AnyPtr



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