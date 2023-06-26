module Web.Types.ImageData

import JS


%default total

export data ImageData : Type where [external]

export
ToFFI ImageData ImageData where toFFI = id

export
FromFFI ImageData ImageData where fromFFI = Just

export
SafeCast ImageData where
  safeCast = unsafeCastOnPrototypeName "ImageData"


export %inline
Cast ImageData Object where cast = believe_me

