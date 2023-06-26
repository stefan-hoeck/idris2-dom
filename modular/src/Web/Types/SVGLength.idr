module Web.Types.SVGLength

import JS


%default total

export data SVGLength : Type where [external]

export
ToFFI SVGLength SVGLength where toFFI = id

export
FromFFI SVGLength SVGLength where fromFFI = Just

export
SafeCast SVGLength where
  safeCast = unsafeCastOnPrototypeName "SVGLength"


export %inline
Cast SVGLength Object where cast = believe_me
