module Web.Types.PermissionDescriptor

import JS


%default total

export data PermissionDescriptor : Type where [external]

export
ToFFI PermissionDescriptor PermissionDescriptor where toFFI = id

export
FromFFI PermissionDescriptor PermissionDescriptor where fromFFI = Just


export %inline
Cast PermissionDescriptor Object where cast = believe_me
