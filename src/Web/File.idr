module Web.File
 
import JS
import Web.Internal.FilePrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Blob
  
  public export
  JSType Blob where
    parents =  [ Object ]

    mixins =  []

namespace File
  
  public export
  JSType File where
    parents =  [ Blob , Object ]

    mixins =  []

namespace FileList
  
  public export
  JSType FileList where
    parents =  [ Object ]

    mixins =  []

namespace FileReader
  
  public export
  JSType FileReader where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  public export
  DONE : UInt16
  DONE = 2
  
  public export
  EMPTY : UInt16
  EMPTY = 0
  
  public export
  LOADING : UInt16
  LOADING = 1

namespace FileReaderSync
  
  public export
  JSType FileReaderSync where
    parents =  [ Object ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace BlobPropertyBag
  
  public export
  JSType BlobPropertyBag where
    parents =  [ Object ]

    mixins =  []

namespace FilePropertyBag
  
  public export
  JSType FilePropertyBag where
    parents =  [ BlobPropertyBag , Object ]

    mixins =  []
