module Web.Types.MutationRecord

import JS


%default total

export data MutationRecord : Type where [external]

export
ToFFI MutationRecord MutationRecord where toFFI = id

export
FromFFI MutationRecord MutationRecord where fromFFI = Just

export
SafeCast MutationRecord where
  safeCast = unsafeCastOnPrototypeName "MutationRecord"


export %inline
Cast MutationRecord Object where cast = believe_me
