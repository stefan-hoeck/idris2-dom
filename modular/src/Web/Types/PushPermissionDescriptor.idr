module Web.Types.PushPermissionDescriptor

import JS
import Web.Types.PermissionDescriptor


%default total

export data PushPermissionDescriptor : Type where [external]

export
ToFFI PushPermissionDescriptor PushPermissionDescriptor where toFFI = id

export
FromFFI PushPermissionDescriptor PushPermissionDescriptor where fromFFI = Just


export %inline
Cast PushPermissionDescriptor PermissionDescriptor where cast = believe_me


export %inline
Cast PushPermissionDescriptor Object where cast = believe_me
