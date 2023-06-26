module Web.Types.Transformer

import JS


%default total

export data Transformer : Type where [external]

export
ToFFI Transformer Transformer where toFFI = id

export
FromFFI Transformer Transformer where fromFFI = Just


export %inline
Cast Transformer Object where cast = believe_me

