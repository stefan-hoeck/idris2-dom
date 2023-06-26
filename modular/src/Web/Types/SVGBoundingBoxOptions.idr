module Web.Types.SVGBoundingBoxOptions

import JS


%default total

export data SVGBoundingBoxOptions : Type where [external]

export
ToFFI SVGBoundingBoxOptions SVGBoundingBoxOptions where toFFI = id

export
FromFFI SVGBoundingBoxOptions SVGBoundingBoxOptions where fromFFI = Just


export %inline
Cast SVGBoundingBoxOptions Object where cast = believe_me
