module Web.Raw.MidiPermissionDescriptor

import JS
import Web.Types.MidiPermissionDescriptor
import Web.Types.PermissionDescriptor


%default total


export
%foreign "browser:lambda:(a)=> ({sysex: a})"
prim__new : UndefOr Boolean -> PrimIO MidiPermissionDescriptor


export
%foreign "browser:lambda:x=>x.sysex"
prim__sysex : MidiPermissionDescriptor -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.sysex = v}"
prim__setSysex : MidiPermissionDescriptor -> UndefOr Boolean -> PrimIO ()



export
new' : (sysex : Optional Bool) -> JSIO MidiPermissionDescriptor
new' a = primJS $ MidiPermissionDescriptor.prim__new (toFFI a)

export
new : JSIO MidiPermissionDescriptor
new = primJS $ MidiPermissionDescriptor.prim__new undef


export
sysex :
     {auto _ : Cast t MidiPermissionDescriptor}
  -> t
  -> Attribute True Optional Bool
sysex v = fromUndefOrPrim
            "MidiPermissionDescriptor.getsysex"
            prim__sysex
            prim__setSysex
            False
            (cast {to = MidiPermissionDescriptor} v)
