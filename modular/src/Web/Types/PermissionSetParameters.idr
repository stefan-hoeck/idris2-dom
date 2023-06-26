module Web.Types.PermissionSetParameters

import JS


%default total

export data PermissionSetParameters : Type where [external]

export
ToFFI PermissionSetParameters PermissionSetParameters where toFFI = id

export
FromFFI PermissionSetParameters PermissionSetParameters where fromFFI = Just


export %inline
Cast PermissionSetParameters Object where cast = believe_me
