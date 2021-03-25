module Web.Permissions

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace PermissionStatus
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CameraDevicePermissionDescriptor
  
  %foreign "browser:lambda:x=>x.panTiltZoom"
  prim__panTiltZoom : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.panTiltZoom = v}"
  prim__setPanTiltZoom : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace DevicePermissionDescriptor
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MidiPermissionDescriptor
  
  %foreign "browser:lambda:x=>x.sysex"
  prim__sysex : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.sysex = v}"
  prim__setSysex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace PermissionDescriptor
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace PermissionSetParameters
  
  %foreign "browser:lambda:x=>x.descriptor"
  prim__descriptor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.descriptor = v}"
  prim__setDescriptor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.state = v}"
  prim__setState : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oneRealm"
  prim__oneRealm : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oneRealm = v}"
  prim__setOneRealm : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace PushPermissionDescriptor
  
  %foreign "browser:lambda:x=>x.userVisibleOnly"
  prim__userVisibleOnly : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.userVisibleOnly = v}"
  prim__setUserVisibleOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast CameraDevicePermissionDescriptor DevicePermissionDescriptor where
  cast = believe_me

export
Cast DevicePermissionDescriptor PermissionDescriptor where
  cast = believe_me

export
Cast MidiPermissionDescriptor PermissionDescriptor where
  cast = believe_me

export
Cast PermissionStatus EventTarget where
  cast = believe_me

export
Cast PushPermissionDescriptor PermissionDescriptor where
  cast = believe_me