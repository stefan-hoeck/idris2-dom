module Web.Types.InnerHTML

import JS


%default total

export data InnerHTML : Type where [external]

export
ToFFI InnerHTML InnerHTML where toFFI = id

export
FromFFI InnerHTML InnerHTML where fromFFI = Just

