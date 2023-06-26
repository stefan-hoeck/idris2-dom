module Web.Types.ValidityStateFlags

import JS


%default total

export data ValidityStateFlags : Type where [external]

export
ToFFI ValidityStateFlags ValidityStateFlags where toFFI = id

export
FromFFI ValidityStateFlags ValidityStateFlags where fromFFI = Just


export %inline
Cast ValidityStateFlags Object where cast = believe_me
