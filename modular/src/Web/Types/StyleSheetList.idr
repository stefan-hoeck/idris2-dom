module Web.Types.StyleSheetList

import JS


%default total

export data StyleSheetList : Type where [external]

export
ToFFI StyleSheetList StyleSheetList where toFFI = id

export
FromFFI StyleSheetList StyleSheetList where fromFFI = Just

export
SafeCast StyleSheetList where
  safeCast = unsafeCastOnPrototypeName "StyleSheetList"


export %inline
Cast StyleSheetList Object where cast = believe_me

