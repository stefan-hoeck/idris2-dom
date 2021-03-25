module Web.Mediasource

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast MediaSource EventTarget where
  cast = believe_me

export
Cast SourceBuffer EventTarget where
  cast = believe_me

export
Cast SourceBufferList EventTarget where
  cast = believe_me