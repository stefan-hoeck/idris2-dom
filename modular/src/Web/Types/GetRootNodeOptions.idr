module Web.Types.GetRootNodeOptions

import JS


%default total

export data GetRootNodeOptions : Type where [external]

export
ToFFI GetRootNodeOptions GetRootNodeOptions where toFFI = id

export
FromFFI GetRootNodeOptions GetRootNodeOptions where fromFFI = Just


export %inline
Cast GetRootNodeOptions Object where cast = believe_me
