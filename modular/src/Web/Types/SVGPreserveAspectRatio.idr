module Web.Types.SVGPreserveAspectRatio

import JS


%default total

export data SVGPreserveAspectRatio : Type where [external]

export
ToFFI SVGPreserveAspectRatio SVGPreserveAspectRatio where toFFI = id

export
FromFFI SVGPreserveAspectRatio SVGPreserveAspectRatio where fromFFI = Just

export
SafeCast SVGPreserveAspectRatio where
  safeCast = unsafeCastOnPrototypeName "SVGPreserveAspectRatio"


export %inline
Cast SVGPreserveAspectRatio Object where cast = believe_me
