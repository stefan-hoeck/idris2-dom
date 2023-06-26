module Web.Types.NavigationPreloadState

import JS


%default total

export data NavigationPreloadState : Type where [external]

export
ToFFI NavigationPreloadState NavigationPreloadState where toFFI = id

export
FromFFI NavigationPreloadState NavigationPreloadState where fromFFI = Just


export %inline
Cast NavigationPreloadState Object where cast = believe_me
