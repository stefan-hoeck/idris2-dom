module Web.Types.SVGNumber

import JS


%default total

export data SVGNumber : Type where [external]

export
ToFFI SVGNumber SVGNumber where toFFI = id

export
FromFFI SVGNumber SVGNumber where fromFFI = Just

export
SafeCast SVGNumber where
  safeCast = unsafeCastOnPrototypeName "SVGNumber"


export %inline
Cast SVGNumber Object where cast = believe_me
