module Web.File

import Web.Types

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