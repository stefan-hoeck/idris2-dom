module Web.Types.SVGTransform

import JS


%default total

export data SVGTransform : Type where [external]

export
ToFFI SVGTransform SVGTransform where toFFI = id

export
FromFFI SVGTransform SVGTransform where fromFFI = Just

export
SafeCast SVGTransform where
  safeCast = unsafeCastOnPrototypeName "SVGTransform"


export %inline
Cast SVGTransform Object where cast = believe_me
