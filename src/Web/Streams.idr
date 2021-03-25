module Web.Streams

import JS.Util
import Web.Types






--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast ReadableStreamBYOBReader ReadableStreamGenericReader where
  cast = believe_me

export
Cast ReadableStreamDefaultReader ReadableStreamGenericReader where
  cast = believe_me