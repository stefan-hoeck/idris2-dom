module Web.Types.ClipboardPermissionDescriptor

import JS
import Web.Types.PermissionDescriptor


%default total

export data ClipboardPermissionDescriptor : Type where [external]

export
ToFFI ClipboardPermissionDescriptor ClipboardPermissionDescriptor where toFFI = id

export
FromFFI ClipboardPermissionDescriptor ClipboardPermissionDescriptor where fromFFI = Just


export %inline
Cast ClipboardPermissionDescriptor PermissionDescriptor where cast = believe_me


export %inline
Cast ClipboardPermissionDescriptor Object where cast = believe_me

