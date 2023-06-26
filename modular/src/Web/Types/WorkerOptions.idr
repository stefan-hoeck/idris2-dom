module Web.Types.WorkerOptions

import JS


%default total

export data WorkerOptions : Type where [external]

export
ToFFI WorkerOptions WorkerOptions where toFFI = id

export
FromFFI WorkerOptions WorkerOptions where fromFFI = Just


export %inline
Cast WorkerOptions Object where cast = believe_me
