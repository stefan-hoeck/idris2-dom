module Web.Types.MidiPermissionDescriptor

import JS
import Web.Types.PermissionDescriptor


%default total

export data MidiPermissionDescriptor : Type where [external]

export
ToFFI MidiPermissionDescriptor MidiPermissionDescriptor where toFFI = id

export
FromFFI MidiPermissionDescriptor MidiPermissionDescriptor where fromFFI = Just


export %inline
Cast MidiPermissionDescriptor PermissionDescriptor where cast = believe_me


export %inline
Cast MidiPermissionDescriptor Object where cast = believe_me
