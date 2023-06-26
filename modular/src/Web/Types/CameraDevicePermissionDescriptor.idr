module Web.Types.CameraDevicePermissionDescriptor

import JS
import Web.Types.DevicePermissionDescriptor
import Web.Types.PermissionDescriptor


%default total

export data CameraDevicePermissionDescriptor : Type where [external]

export
ToFFI CameraDevicePermissionDescriptor CameraDevicePermissionDescriptor where toFFI = id

export
FromFFI CameraDevicePermissionDescriptor CameraDevicePermissionDescriptor where fromFFI = Just


export %inline
Cast CameraDevicePermissionDescriptor DevicePermissionDescriptor where cast = believe_me


export %inline
Cast CameraDevicePermissionDescriptor PermissionDescriptor where cast = believe_me


export %inline
Cast CameraDevicePermissionDescriptor Object where cast = believe_me
