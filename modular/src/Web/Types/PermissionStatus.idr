module Web.Types.PermissionStatus

import JS
import Web.Types.EventTarget


%default total

export data PermissionStatus : Type where [external]

export
ToFFI PermissionStatus PermissionStatus where toFFI = id

export
FromFFI PermissionStatus PermissionStatus where fromFFI = Just

export
SafeCast PermissionStatus where
  safeCast = unsafeCastOnPrototypeName "PermissionStatus"


export %inline
Cast PermissionStatus EventTarget where cast = believe_me


export %inline
Cast PermissionStatus Object where cast = believe_me
