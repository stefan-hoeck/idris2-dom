module JS.DOM.Raw.Permissions

import JS.DOM.Raw.Types

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