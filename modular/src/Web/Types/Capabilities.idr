module Web.Types.Capabilities

import JS


%default total

export data Capabilities : Type where [external]

export
ToFFI Capabilities Capabilities where toFFI = id

export
FromFFI Capabilities Capabilities where fromFFI = Just


export %inline
Cast Capabilities Object where cast = believe_me
