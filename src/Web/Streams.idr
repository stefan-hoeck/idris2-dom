module Web.Streams
 
import JS
import Web.Internal.StreamsPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ByteLengthQueuingStrategy
  
  public export
  JSType ByteLengthQueuingStrategy where
    parents =  [ Object ]

    mixins =  []

namespace CountQueuingStrategy
  
  public export
  JSType CountQueuingStrategy where
    parents =  [ Object ]

    mixins =  []

namespace ReadableByteStreamController
  
  public export
  JSType ReadableByteStreamController where
    parents =  [ Object ]

    mixins =  []

namespace ReadableStream
  
  public export
  JSType ReadableStream where
    parents =  [ Object ]

    mixins =  []

namespace ReadableStreamBYOBReader
  
  public export
  JSType ReadableStreamBYOBReader where
    parents =  [ Object ]

    mixins =  [ ReadableStreamGenericReader ]

namespace ReadableStreamBYOBRequest
  
  public export
  JSType ReadableStreamBYOBRequest where
    parents =  [ Object ]

    mixins =  []

namespace ReadableStreamDefaultController
  
  public export
  JSType ReadableStreamDefaultController where
    parents =  [ Object ]

    mixins =  []

namespace ReadableStreamDefaultReader
  
  public export
  JSType ReadableStreamDefaultReader where
    parents =  [ Object ]

    mixins =  [ ReadableStreamGenericReader ]

namespace TransformStream
  
  public export
  JSType TransformStream where
    parents =  [ Object ]

    mixins =  []

namespace TransformStreamDefaultController
  
  public export
  JSType TransformStreamDefaultController where
    parents =  [ Object ]

    mixins =  []

namespace WritableStream
  
  public export
  JSType WritableStream where
    parents =  [ Object ]

    mixins =  []

namespace WritableStreamDefaultController
  
  public export
  JSType WritableStreamDefaultController where
    parents =  [ Object ]

    mixins =  []

namespace WritableStreamDefaultWriter
  
  public export
  JSType WritableStreamDefaultWriter where
    parents =  [ Object ]

    mixins =  []

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace QueuingStrategy
  
  public export
  JSType QueuingStrategy where
    parents =  [ Object ]

    mixins =  []

namespace QueuingStrategyInit
  
  public export
  JSType QueuingStrategyInit where
    parents =  [ Object ]

    mixins =  []

namespace ReadableStreamBYOBReadResult
  
  public export
  JSType ReadableStreamBYOBReadResult where
    parents =  [ Object ]

    mixins =  []

namespace ReadableStreamDefaultReadResult
  
  public export
  JSType ReadableStreamDefaultReadResult where
    parents =  [ Object ]

    mixins =  []

namespace ReadableStreamGetReaderOptions
  
  public export
  JSType ReadableStreamGetReaderOptions where
    parents =  [ Object ]

    mixins =  []

namespace ReadableStreamIteratorOptions
  
  public export
  JSType ReadableStreamIteratorOptions where
    parents =  [ Object ]

    mixins =  []

namespace ReadableWritablePair
  
  public export
  JSType ReadableWritablePair where
    parents =  [ Object ]

    mixins =  []

namespace StreamPipeOptions
  
  public export
  JSType StreamPipeOptions where
    parents =  [ Object ]

    mixins =  []

namespace Transformer
  
  public export
  JSType Transformer where
    parents =  [ Object ]

    mixins =  []

namespace UnderlyingSink
  
  public export
  JSType UnderlyingSink where
    parents =  [ Object ]

    mixins =  []

namespace UnderlyingSource
  
  public export
  JSType UnderlyingSource where
    parents =  [ Object ]

    mixins =  []

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------










