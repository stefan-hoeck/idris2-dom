module Web.Types.DevicePermissionDescriptor

import JS
import Web.Types.PermissionDescriptor


%default total

export data DevicePermissionDescriptor : Type where [external]

export
ToFFI DevicePermissionDescriptor DevicePermissionDescriptor where toFFI = id

export
FromFFI DevicePermissionDescriptor DevicePermissionDescriptor where fromFFI = Just


export %inline
Cast DevicePermissionDescriptor PermissionDescriptor where cast = believe_me


export %inline
Cast DevicePermissionDescriptor Object where cast = believe_me
