module Web.Types.SVGAngle

import JS


%default total

export data SVGAngle : Type where [external]

export
ToFFI SVGAngle SVGAngle where toFFI = id

export
FromFFI SVGAngle SVGAngle where fromFFI = Just

export
SafeCast SVGAngle where
  safeCast = unsafeCastOnPrototypeName "SVGAngle"


export %inline
Cast SVGAngle Object where cast = believe_me

