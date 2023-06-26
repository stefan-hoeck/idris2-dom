module Web.Types.RegistrationOptions

import JS


%default total

export data RegistrationOptions : Type where [external]

export
ToFFI RegistrationOptions RegistrationOptions where toFFI = id

export
FromFFI RegistrationOptions RegistrationOptions where fromFFI = Just


export %inline
Cast RegistrationOptions Object where cast = believe_me

