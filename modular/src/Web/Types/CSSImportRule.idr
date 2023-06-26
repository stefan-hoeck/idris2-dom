module Web.Types.CSSImportRule

import JS
import Web.Types.CSSRule


%default total

export data CSSImportRule : Type where [external]

export
ToFFI CSSImportRule CSSImportRule where toFFI = id

export
FromFFI CSSImportRule CSSImportRule where fromFFI = Just

export
SafeCast CSSImportRule where
  safeCast = unsafeCastOnPrototypeName "CSSImportRule"


export %inline
Cast CSSImportRule CSSRule where cast = believe_me


export %inline
Cast CSSImportRule Object where cast = believe_me
