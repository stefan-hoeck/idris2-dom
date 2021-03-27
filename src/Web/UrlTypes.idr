module Web.UrlTypes
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export
data URL  : Type where [external]

export
ToJS URL where
  toJS = believe_me

export
FromJS URL where
  fromJS = believe_me
export
data URLSearchParams  : Type where [external]

export
ToJS URLSearchParams where
  toJS = believe_me

export
FromJS URLSearchParams where
  fromJS = believe_me

