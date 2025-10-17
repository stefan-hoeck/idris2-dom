module JS.Promise

import JS.Marshall

%default total

export
data Promise : Type -> Type where [external]

export
ToFFI (Promise a) (Promise a) where toFFI = id

export
FromFFI (Promise a) (Promise a) where fromFFI = Just

%foreign "javascript:lambda:(a,b,p,succ,err,w) => p.then((x) => succ(x)(w),(x) => err(`${x}`)(w))"
prim__then :
     Promise a
  -> (a -> PrimIO b)
  -> (String -> PrimIO b)
  -> PrimIO (Promise b)

%foreign "javascript:lambda:(a,b,p,succ,err,w) => p.then((x) => succ(x)(w),(x) => err(`${x}`)(w))"
prim__thenp :
     Promise a
  -> (a -> PrimIO (Promise b))
  -> (String -> PrimIO (Promise b))
  -> PrimIO (Promise b)

||| Attaches two handlers to a promise.
export %inline
onPromise : Promise a -> (a -> IO b) -> (String -> IO b) -> IO (Promise b)
onPromise p f g =
  primIO $ prim__then p (\x => toPrim $ f x) (\x => toPrim $ g x)

||| Like `onPromise` but the handlers themselves can return promises.
export %inline
onPromiseP :
     Promise a
  -> (a -> IO (Promise b))
  -> (String -> IO (Promise b))
  -> IO (Promise b)
onPromiseP p f g =
  primIO $ prim__thenp p (\x => toPrim $ f x) (\x => toPrim $ g x)

