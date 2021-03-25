module Web.Xhr

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace XMLHttpRequest
  
  public export
  DONE : UInt16
  DONE = 4
  
  public export
  HEADERS_RECEIVED : UInt16
  HEADERS_RECEIVED = 2
  
  public export
  LOADING : UInt16
  LOADING = 3
  
  public export
  OPENED : UInt16
  OPENED = 1
  
  public export
  UNSENT : UInt16
  UNSENT = 0o0





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