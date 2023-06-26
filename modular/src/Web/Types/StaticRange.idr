module Web.Types.StaticRange

import JS
import Web.Types.AbstractRange


%default total

export data StaticRange : Type where [external]

export
ToFFI StaticRange StaticRange where toFFI = id

export
FromFFI StaticRange StaticRange where fromFFI = Just

export
SafeCast StaticRange where
  safeCast = unsafeCastOnPrototypeName "StaticRange"


export %inline
Cast StaticRange AbstractRange where cast = believe_me


export %inline
Cast StaticRange Object where cast = believe_me
