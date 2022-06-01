||| Javascript utilities. If these prove to be useful in
||| applications, they should eventually go into their
||| own package.
module JS.Util

import Control.Monad.Reader
import Control.Monad.RWS
import Control.Monad.State
import Control.Monad.Writer
import public Control.Monad.Either
import Data.Maybe

%default total

export
doubleToBool : Double -> Bool
doubleToBool d = d /= 0.0

%foreign "javascript:lambda:v=>typeof(v)"
prim__typeOf : AnyPtr -> String

||| Inspect the type of a value at runtime by means of
||| Javascript function `typeof`.
export
typeof : a -> String
typeof v = prim__typeOf (believe_me v)

%foreign "javascript:lambda:(a,b)=>a === b?1:0"
prim__eqv : AnyPtr -> AnyPtr -> Double

||| Heterogeneous pointer equality. This calls the Javascript
||| `===` operator internally.
export
eqv : a -> b -> Bool
eqv x y = doubleToBool $ prim__eqv (believe_me x) (believe_me y)

%foreign "javascript:lambda:x=>String(x)"
prim__show : AnyPtr -> String

||| Displays a JS value by passing it to `String(...)`.
export
jsShow : a -> String
jsShow v = prim__show (believe_me v)

--------------------------------------------------------------------------------
--          IO
--------------------------------------------------------------------------------

%foreign "javascript:lambda:x=>console.log(x)"
prim__consoleLog : String -> PrimIO ()

export
consoleLog : HasIO io => String -> io ()
consoleLog s = primIO $ prim__consoleLog s

public export
data JSErr : Type where
  Caught    : (msg : String) -> JSErr
  CastErr   : (inFunction : String) -> (value : a) -> JSErr
  IsNothing : (callSite : String) -> JSErr

export
dispErr : JSErr -> String
dispErr (CastErr inFunction value) = #"""
  Error when casting a Javascript value in function \#{inFunction}.
    The value was: \#{jsShow value}.
    The value's type was \#{typeof value}.
  """#

dispErr (IsNothing callSite) =
  #"Trying to extract a value from Nothing at \#{callSite}"#

dispErr (Caught msg) = msg


public export
JSIO : Type -> Type
JSIO = EitherT JSErr IO

public export
interface HasIO io => LiftJSIO io where
  liftJSIO : JSIO a -> io a

export %inline
LiftJSIO JSIO where
  liftJSIO = id

export %inline
LiftJSIO m => LiftJSIO (StateT s m) where
  liftJSIO m = ST $ \st => (st,) <$> liftJSIO m

export %inline
LiftJSIO m => LiftJSIO (ReaderT e m) where
  liftJSIO m = MkReaderT $ \_ => liftJSIO m

export %inline
LiftJSIO m => LiftJSIO (WriterT w m) where
  liftJSIO m = MkWriterT $ \vw => (,vw) <$> liftJSIO m

export %inline
LiftJSIO m => LiftJSIO (RWST r w w m) where
  liftJSIO m = MkRWST $ \_,vs,vw => (,vs,vw) <$> liftJSIO m

export
runJSWith : Lazy (JSErr -> IO a) -> JSIO a -> IO a
runJSWith f (MkEitherT io) = io >>= either f pure

export
runJS : JSIO () -> IO ()
runJS = runJSWith (consoleLog . dispErr)

export
runJSWithDefault : Lazy a -> JSIO a -> IO a
runJSWithDefault a = runJSWith (\e => consoleLog (dispErr e) $> a)

export %inline
primJS : PrimIO a -> JSIO a
primJS = primIO

export
unMaybe : (callSite : String) -> JSIO (Maybe a) -> JSIO a
unMaybe callSite io = do Just a <- io
                           | Nothing => throwError $ IsNothing callSite
                         pure a

--------------------------------------------------------------------------------
--          Error handling
--------------------------------------------------------------------------------

%foreign "javascript:lambda:(u,io) => {try { return [1,io()]; } catch (e) { return [0,String(e)] }}"
prim__tryIO : forall a . IO a -> PrimIO AnyPtr

%foreign "javascript:lambda:(x,y,f,v) => {try { return [1,f(v)]; } catch (e) { return [0,String(e)] }}"
prim__try : forall a,b . (a -> b) -> a -> AnyPtr

%foreign "javascript:lambda:x => x[0]"
prim__errTag : AnyPtr -> Double

%foreign "javascript:lambda:x => x[1]"
prim__errVal : AnyPtr -> AnyPtr

toEither : AnyPtr -> Either JSErr a
toEither ptr = if 1 == prim__errTag ptr
                  then Right (believe_me (prim__errVal ptr))
                  else Left $ Caught (believe_me (prim__errVal ptr))

||| Tries to execute an IO action, wrapping any runtime exception
||| in its stringified version in a `Left . Caught`.
export
tryIO : IO a -> JSIO a
tryIO io = do ptr <- primIO $ prim__tryIO io
              if 1 == prim__errTag ptr
                 then pure (believe_me (prim__errVal ptr))
                 else throwError $ Caught (believe_me (prim__errVal ptr))

||| Error handling in pure functions. This should only be used
||| in foreign function calls that might fail but or otherwise
||| pure calculations.
export
try : (a -> b) -> a -> Either JSErr b
try f a = toEither $ prim__try f a

--------------------------------------------------------------------------------
--          Common external types
--------------------------------------------------------------------------------

||| See [spec](https://html.spec.whatwg.org/#windowproxy)
export
data WindowProxy : Type where [external]
