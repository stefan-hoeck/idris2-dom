module Web.Types.StructuredSerializeOptions

import JS


%default total

export data StructuredSerializeOptions : Type where [external]

export
ToFFI StructuredSerializeOptions StructuredSerializeOptions where toFFI = id

export
FromFFI StructuredSerializeOptions StructuredSerializeOptions where fromFFI = Just


export %inline
Cast StructuredSerializeOptions Object where cast = believe_me

