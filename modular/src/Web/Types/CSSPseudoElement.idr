module Web.Types.CSSPseudoElement

import JS
import Web.Types.Animatable
import Web.Types.EventTarget
import Web.Types.GeometryUtils


%default total

export data CSSPseudoElement : Type where [external]

export
ToFFI CSSPseudoElement CSSPseudoElement where toFFI = id

export
FromFFI CSSPseudoElement CSSPseudoElement where fromFFI = Just

export
SafeCast CSSPseudoElement where
  safeCast = unsafeCastOnPrototypeName "CSSPseudoElement"


export %inline
Cast CSSPseudoElement EventTarget where cast = believe_me


export %inline
Cast CSSPseudoElement Object where cast = believe_me


export %inline
Cast CSSPseudoElement Animatable where cast = believe_me


export %inline
Cast CSSPseudoElement GeometryUtils where cast = believe_me
