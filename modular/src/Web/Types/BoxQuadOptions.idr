module Web.Types.BoxQuadOptions

import JS


%default total

export data BoxQuadOptions : Type where [external]

export
ToFFI BoxQuadOptions BoxQuadOptions where toFFI = id

export
FromFFI BoxQuadOptions BoxQuadOptions where fromFFI = Just


export %inline
Cast BoxQuadOptions Object where cast = believe_me
