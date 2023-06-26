module Web.Types.DOMRectInit

import JS


%default total

export data DOMRectInit : Type where [external]

export
ToFFI DOMRectInit DOMRectInit where toFFI = id

export
FromFFI DOMRectInit DOMRectInit where fromFFI = Just


export %inline
Cast DOMRectInit Object where cast = believe_me
