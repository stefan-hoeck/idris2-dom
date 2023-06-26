module Web.Types.RequestInit

import JS


%default total

export data RequestInit : Type where [external]

export
ToFFI RequestInit RequestInit where toFFI = id

export
FromFFI RequestInit RequestInit where fromFFI = Just


export %inline
Cast RequestInit Object where cast = believe_me

