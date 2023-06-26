module Web.Types.NavigatorLanguage

import JS


%default total

export data NavigatorLanguage : Type where [external]

export
ToFFI NavigatorLanguage NavigatorLanguage where toFFI = id

export
FromFFI NavigatorLanguage NavigatorLanguage where fromFFI = Just

