module Web.Types.CSSStyleSheet

import JS
import Web.Types.StyleSheet


%default total

export data CSSStyleSheet : Type where [external]

export
ToFFI CSSStyleSheet CSSStyleSheet where toFFI = id

export
FromFFI CSSStyleSheet CSSStyleSheet where fromFFI = Just

export
SafeCast CSSStyleSheet where
  safeCast = unsafeCastOnPrototypeName "CSSStyleSheet"


export %inline
Cast CSSStyleSheet StyleSheet where cast = believe_me


export %inline
Cast CSSStyleSheet Object where cast = believe_me

