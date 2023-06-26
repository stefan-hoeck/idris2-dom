module Web.Types.QueuingStrategy

import JS


%default total

export data QueuingStrategy : Type where [external]

export
ToFFI QueuingStrategy QueuingStrategy where toFFI = id

export
FromFFI QueuingStrategy QueuingStrategy where fromFFI = Just


export %inline
Cast QueuingStrategy Object where cast = believe_me

