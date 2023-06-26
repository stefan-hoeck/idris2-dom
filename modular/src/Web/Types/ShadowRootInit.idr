module Web.Types.ShadowRootInit

import JS


%default total

export data ShadowRootInit : Type where [external]

export
ToFFI ShadowRootInit ShadowRootInit where toFFI = id

export
FromFFI ShadowRootInit ShadowRootInit where fromFFI = Just


export %inline
Cast ShadowRootInit Object where cast = believe_me
