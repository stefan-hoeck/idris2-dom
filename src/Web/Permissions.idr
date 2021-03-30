module Web.Permissions
 
import JS
import Web.Internal.PermissionsPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace PermissionStatus
  
  public export
  JSType PermissionStatus where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace Permissions
  
  public export
  JSType Permissions where
    parents =  [ Object ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CameraDevicePermissionDescriptor
  
  public export
  JSType CameraDevicePermissionDescriptor where
    parents =  [ DevicePermissionDescriptor , PermissionDescriptor , Object ]

    mixins =  []

namespace DevicePermissionDescriptor
  
  public export
  JSType DevicePermissionDescriptor where
    parents =  [ PermissionDescriptor , Object ]

    mixins =  []

namespace MidiPermissionDescriptor
  
  public export
  JSType MidiPermissionDescriptor where
    parents =  [ PermissionDescriptor , Object ]

    mixins =  []

namespace PermissionDescriptor
  
  public export
  JSType PermissionDescriptor where
    parents =  [ Object ]

    mixins =  []

namespace PermissionSetParameters
  
  public export
  JSType PermissionSetParameters where
    parents =  [ Object ]

    mixins =  []

namespace PushPermissionDescriptor
  
  public export
  JSType PushPermissionDescriptor where
    parents =  [ PermissionDescriptor , Object ]

    mixins =  []
