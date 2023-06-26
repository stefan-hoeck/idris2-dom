module Web.Types.ConstrainDOMStringParameters

import JS


%default total

export data ConstrainDOMStringParameters : Type where [external]

export
ToFFI ConstrainDOMStringParameters ConstrainDOMStringParameters where toFFI = id

export
FromFFI ConstrainDOMStringParameters ConstrainDOMStringParameters where fromFFI = Just


export %inline
Cast ConstrainDOMStringParameters Object where cast = believe_me
