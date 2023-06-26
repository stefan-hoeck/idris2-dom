module Web.Types.AssignedNodesOptions

import JS


%default total

export data AssignedNodesOptions : Type where [external]

export
ToFFI AssignedNodesOptions AssignedNodesOptions where toFFI = id

export
FromFFI AssignedNodesOptions AssignedNodesOptions where fromFFI = Just


export %inline
Cast AssignedNodesOptions Object where cast = believe_me
