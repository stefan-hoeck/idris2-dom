module Web.Types.SVGUnitTypes

import JS


%default total

export data SVGUnitTypes : Type where [external]

export
ToFFI SVGUnitTypes SVGUnitTypes where toFFI = id

export
FromFFI SVGUnitTypes SVGUnitTypes where fromFFI = Just

export
SafeCast SVGUnitTypes where
  safeCast = unsafeCastOnPrototypeName "SVGUnitTypes"


export %inline
Cast SVGUnitTypes Object where cast = believe_me
