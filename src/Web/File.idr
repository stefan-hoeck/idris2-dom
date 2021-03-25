module Web.File

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace FileReader
  
  public export
  DONE : UInt16
  DONE = 2
  
  public export
  EMPTY : UInt16
  EMPTY = 0o0
  
  public export
  LOADING : UInt16
  LOADING = 1





--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast File Blob where
  cast = believe_me

export
Cast FilePropertyBag BlobPropertyBag where
  cast = believe_me

export
Cast FileReader EventTarget where
  cast = believe_me