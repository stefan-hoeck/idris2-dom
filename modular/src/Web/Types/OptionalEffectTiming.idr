module Web.Types.OptionalEffectTiming

import JS


%default total

export data OptionalEffectTiming : Type where [external]

export
ToFFI OptionalEffectTiming OptionalEffectTiming where toFFI = id

export
FromFFI OptionalEffectTiming OptionalEffectTiming where fromFFI = Just


export %inline
Cast OptionalEffectTiming Object where cast = believe_me

