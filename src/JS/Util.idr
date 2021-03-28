||| Javascript utilities. If these prove to be useful in
||| applications, they should eventually go into their
||| own package.
module JS.Util

import Control.Monad.Either
import Data.Maybe

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
--          Undefined
--------------------------------------------------------------------------------

export
data Undefined : Type where [external]

||| The `undefined` constant
export
%foreign "javascript:lambda:()=>undefined"
undefined : Undefined

export
Eq Undefined where
  _ == _ = True

export
Show Undefined where
  show _ = "undefined"

%foreign "javascript:lambda:x=>x === undefined?1:0"
prim__isUndefined : AnyPtr -> Double

||| Tests, whether a value of questionable origin is undefined
export
isUndefined : a -> Bool
isUndefined v = doubleToBool $ prim__isUndefined (believe_me v)

--------------------------------------------------------------------------------
--          Null
--------------------------------------------------------------------------------

%foreign "javascript:lambda:x=>x === null?1:0"
prim__isNull : AnyPtr -> Double

export
%foreign "javascript:lambda:()=>null"
null : AnyPtr

||| Tests, whether a value of questionable origin is null
export
isNull : a -> Bool
isNull = eqv null

--------------------------------------------------------------------------------
--          IO
--------------------------------------------------------------------------------

public export
data JSErr : Type where
  CastErr : (inFunction : String) -> (value : AnyPtr) -> JSErr

dispErr : JSErr -> String
dispErr (CastErr inFunction value) = #"""
  Error when casting a Javascript value in function \#{inFunction}.
    The value was: \#{jsShow value}.
    The value's type was \#{typeof value}.
  """#


public export
JSIO : Type -> Type
JSIO = EitherT JSErr IO

export
runJSWith : (JSErr -> IO a) -> JSIO a -> IO a
runJSWith f (MkEitherT io) = io >>= either f pure

export
runJS : JSIO () -> IO ()
runJS = runJSWith (putStrLn . dispErr)

--------------------------------------------------------------------------------
--          Common external types
--------------------------------------------------------------------------------

public export
record Any where
  constructor MkAny
  anyVal : a

export
data JSObject : Type where [external]

export
data JSArray : Type -> Type where [external]

export
data JSPromise : Type -> Type where [external]

export
data JSRecord : Type -> Type -> Type where [external]

export
data DataView : Type where [external]

export
data ArrayBuffer : Type where [external]

||| See [spec](https://html.spec.whatwg.org/#windowproxy)
export
data WindowProxy : Type where [external]

-- TODO: How to handle vararg functions
export
data VarArg : Type -> Type where [external]
--------------------------------------------------------------------------------
--          Aliases
--------------------------------------------------------------------------------

||| A String alias used in some CSS functions.
public export
0 CSSOMString : Type
CSSOMString = String
