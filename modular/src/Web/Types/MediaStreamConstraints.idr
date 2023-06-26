module Web.Types.MediaStreamConstraints

import JS


%default total

export data MediaStreamConstraints : Type where [external]

export
ToFFI MediaStreamConstraints MediaStreamConstraints where toFFI = id

export
FromFFI MediaStreamConstraints MediaStreamConstraints where fromFFI = Just


export %inline
Cast MediaStreamConstraints Object where cast = believe_me

