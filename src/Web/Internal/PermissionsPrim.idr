module Web.Internal.PermissionsPrim

import JS
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace PermissionStatus

  export
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : PermissionStatus -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange :  PermissionStatus
                    -> Nullable EventHandlerNonNull
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.state"
  prim__state : PermissionStatus -> PrimIO String


namespace Permissions

  export
  %foreign "browser:lambda:(x,a)=>x.query(a)"
  prim__query : Permissions -> Object -> PrimIO (Promise PermissionStatus)




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CameraDevicePermissionDescriptor

  export
  %foreign "browser:lambda:(a)=> ({panTiltZoom: a})"
  prim__new : UndefOr Boolean -> PrimIO CameraDevicePermissionDescriptor

  export
  %foreign "browser:lambda:x=>x.panTiltZoom"
  prim__panTiltZoom :  CameraDevicePermissionDescriptor
                    -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.panTiltZoom = v}"
  prim__setPanTiltZoom :  CameraDevicePermissionDescriptor
                       -> UndefOr Boolean
                       -> PrimIO ()



namespace DevicePermissionDescriptor

  export
  %foreign "browser:lambda:(a)=> ({deviceId: a})"
  prim__new : UndefOr String -> PrimIO DevicePermissionDescriptor

  export
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : DevicePermissionDescriptor -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId : DevicePermissionDescriptor -> UndefOr String -> PrimIO ()



namespace MidiPermissionDescriptor

  export
  %foreign "browser:lambda:(a)=> ({sysex: a})"
  prim__new : UndefOr Boolean -> PrimIO MidiPermissionDescriptor

  export
  %foreign "browser:lambda:x=>x.sysex"
  prim__sysex : MidiPermissionDescriptor -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.sysex = v}"
  prim__setSysex : MidiPermissionDescriptor -> UndefOr Boolean -> PrimIO ()



namespace PermissionDescriptor

  export
  %foreign "browser:lambda:(a)=> ({name: a})"
  prim__new : String -> PrimIO PermissionDescriptor

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : PermissionDescriptor -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : PermissionDescriptor -> String -> PrimIO ()



namespace PermissionSetParameters

  export
  %foreign "browser:lambda:(a,b,c)=> ({descriptor: a,state: b,oneRealm: c})"
  prim__new :  PermissionDescriptor
            -> String
            -> UndefOr Boolean
            -> PrimIO PermissionSetParameters

  export
  %foreign "browser:lambda:x=>x.descriptor"
  prim__descriptor : PermissionSetParameters -> PrimIO PermissionDescriptor


  export
  %foreign "browser:lambda:(x,v)=>{x.descriptor = v}"
  prim__setDescriptor :  PermissionSetParameters
                      -> PermissionDescriptor
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oneRealm"
  prim__oneRealm : PermissionSetParameters -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.oneRealm = v}"
  prim__setOneRealm : PermissionSetParameters -> UndefOr Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.state"
  prim__state : PermissionSetParameters -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.state = v}"
  prim__setState : PermissionSetParameters -> String -> PrimIO ()



namespace PushPermissionDescriptor

  export
  %foreign "browser:lambda:(a)=> ({userVisibleOnly: a})"
  prim__new : UndefOr Boolean -> PrimIO PushPermissionDescriptor

  export
  %foreign "browser:lambda:x=>x.userVisibleOnly"
  prim__userVisibleOnly : PushPermissionDescriptor -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.userVisibleOnly = v}"
  prim__setUserVisibleOnly :  PushPermissionDescriptor
                           -> UndefOr Boolean
                           -> PrimIO ()



