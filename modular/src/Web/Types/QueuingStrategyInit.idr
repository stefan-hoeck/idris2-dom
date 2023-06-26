module Web.Types.QueuingStrategyInit

import JS


%default total

export data QueuingStrategyInit : Type where [external]

export
ToFFI QueuingStrategyInit QueuingStrategyInit where toFFI = id

export
FromFFI QueuingStrategyInit QueuingStrategyInit where fromFFI = Just


export %inline
Cast QueuingStrategyInit Object where cast = believe_me
