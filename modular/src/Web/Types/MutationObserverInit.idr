module Web.Types.MutationObserverInit

import JS


%default total

export data MutationObserverInit : Type where [external]

export
ToFFI MutationObserverInit MutationObserverInit where toFFI = id

export
FromFFI MutationObserverInit MutationObserverInit where fromFFI = Just


export %inline
Cast MutationObserverInit Object where cast = believe_me
