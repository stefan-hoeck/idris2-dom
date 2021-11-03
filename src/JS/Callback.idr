module JS.Callback

import JS.Util

%default total

||| Interface for converting Idris functions to
||| an external callback type.
|||
||| @cb  external callback type (for instance `EventListener`
||| @fun Idris function type
public export
interface Callback cb fun | cb where
  callback : fun -> JSIO cb
