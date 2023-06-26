module Web.Types.NavigationPreloadManager

import JS


%default total

export data NavigationPreloadManager : Type where [external]

export
ToFFI NavigationPreloadManager NavigationPreloadManager where toFFI = id

export
FromFFI NavigationPreloadManager NavigationPreloadManager where fromFFI = Just

export
SafeCast NavigationPreloadManager where
  safeCast = unsafeCastOnPrototypeName "NavigationPreloadManager"


export %inline
Cast NavigationPreloadManager Object where cast = believe_me

