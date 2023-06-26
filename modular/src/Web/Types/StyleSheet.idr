module Web.Types.StyleSheet

import JS


%default total

export data StyleSheet : Type where [external]

export
ToFFI StyleSheet StyleSheet where toFFI = id

export
FromFFI StyleSheet StyleSheet where fromFFI = Just

export
SafeCast StyleSheet where
  safeCast = unsafeCastOnPrototypeName "StyleSheet"


export %inline
Cast StyleSheet Object where cast = believe_me
