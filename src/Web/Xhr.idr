module Web.Xhr

import Web.Types

--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast ProgressEvent Event where
  cast = believe_me

export
Cast ProgressEventInit EventInit where
  cast = believe_me

export
Cast XMLHttpRequest XMLHttpRequestEventTarget where
  cast = believe_me

export
Cast XMLHttpRequestEventTarget EventTarget where
  cast = believe_me

export
Cast XMLHttpRequestUpload XMLHttpRequestEventTarget where
  cast = believe_me