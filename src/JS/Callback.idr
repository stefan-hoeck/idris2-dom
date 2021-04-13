module JS.Callback

import JS.Util

public export
interface Callback a fun | a where
  callback : fun -> JSIO a
