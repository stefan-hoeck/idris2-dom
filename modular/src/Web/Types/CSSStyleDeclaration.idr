module Web.Types.CSSStyleDeclaration

import JS


%default total

export data CSSStyleDeclaration : Type where [external]

export
ToFFI CSSStyleDeclaration CSSStyleDeclaration where toFFI = id

export
FromFFI CSSStyleDeclaration CSSStyleDeclaration where fromFFI = Just

export
SafeCast CSSStyleDeclaration where
  safeCast = unsafeCastOnPrototypeName "CSSStyleDeclaration"


export %inline
Cast CSSStyleDeclaration Object where cast = believe_me
