module Web.Permissions

import Web.Types

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