module Web.WebidlTypes
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export
data DOMException  : Type where [external]

export
ToJS DOMException where
  toJS = believe_me

export
FromJS DOMException where
  fromJS = believe_me

