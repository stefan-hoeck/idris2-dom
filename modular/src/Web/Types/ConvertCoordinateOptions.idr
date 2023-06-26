module Web.Types.ConvertCoordinateOptions

import JS


%default total

export data ConvertCoordinateOptions : Type where [external]

export
ToFFI ConvertCoordinateOptions ConvertCoordinateOptions where toFFI = id

export
FromFFI ConvertCoordinateOptions ConvertCoordinateOptions where fromFFI = Just


export %inline
Cast ConvertCoordinateOptions Object where cast = believe_me
