module JS.Marshall

--------------------------------------------------------------------------------
--          Utility Functions and Values
--------------------------------------------------------------------------------

%foreign "javascript:lambda:v=>Object.prototype.toString.call(v)"
prim__typeOf : AnyPtr -> String

export
typeOf : a -> String
typeOf v = prim__typeOf (believe_me v)

%foreign "javascript:lambda:(a,b)=>a === b?1:0"
prim__eqv : AnyPtr -> AnyPtr -> Double

||| Heterogeneous pointer equality. This calls the Javascript
||| `===` operator internally.
export
eqv : a -> b -> Bool
eqv x y = prim__eqv (believe_me x) (believe_me y) == 1.0

--------------------------------------------------------------------------------
--          Marshalling from and to JS
--------------------------------------------------------------------------------


||| Interface supporting the use of a value as an
||| argument in a foreign function call.
|||
||| Note, that implementations are typically based on
||| `believe_me`. It is therefore highly unsafe to use
||| this anywhere else than in foreign function calls.
public export
interface ToJS a where
  toJS : a -> AnyPtr

export ToJS AnyPtr where toJS = id
export ToJS Bits8 where toJS = believe_me
export ToJS Bits16 where toJS = believe_me
export ToJS Bits32 where toJS = believe_me
export ToJS Bits64 where toJS = believe_me
export ToJS Int where toJS = believe_me
export ToJS Integer where toJS = believe_me
export ToJS Double where toJS = believe_me
export ToJS String where toJS = believe_me

||| Interface supporting the use of a value as a
||| return type in a foreign function call.
|||
||| Note, that implementations are typically based on
||| `believe_me`. It is therefore highly unsafe to use
||| this anywhere else than in foreign function calls.
public export
interface FromJS a where
  fromJS : AnyPtr -> a

export FromJS AnyPtr where fromJS = id
export FromJS Bits8 where fromJS = believe_me
export FromJS Bits16 where fromJS = believe_me
export FromJS Bits32 where fromJS = believe_me
export FromJS Bits64 where fromJS = believe_me
export FromJS Int where fromJS = believe_me
export FromJS Integer where fromJS = believe_me
export FromJS Double where fromJS = believe_me
export FromJS String where fromJS = believe_me

public export
interface SafeCast a where
  safeCast : any -> Maybe a

||| Tries to cast one value to another by comparing the
||| passed string against the return value of `typeOf`.
export
unsafeCastOnTypeString : String -> a -> Maybe b
unsafeCastOnTypeString s a =
  if typeOf a == s then Just (believe_me a) else Nothing

||| Interface supporting the safe casting of one JS type
||| to another. This is mainly used during foreign function
||| calls or when otherwise processing values of unknown origin.
export
SafeCast () where
  safeCast _ = Just ()

export
SafeCast Integer where
  safeCast = unsafeCastOnTypeString "[object BigInt]"

export
SafeCast Double where
  safeCast = unsafeCastOnTypeString "[object Number]"

export
SafeCast String where
  safeCast = unsafeCastOnTypeString "[object String]"

export
SafeCast Bits8 where
  safeCast = map fromInteger . safeCast

export
SafeCast Bits16 where
  safeCast = map fromInteger . safeCast

export
SafeCast Bits32 where
  safeCast = map fromInteger . safeCast

export
SafeCast Bits64 where
  safeCast = map fromInteger . safeCast

export
SafeCast Int where
  safeCast = map fromInteger . safeCast

--------------------------------------------------------------------------------
--          Bool
--------------------------------------------------------------------------------

%foreign "javascript:lambda:()=>true"
prim__true : AnyPtr

%foreign "javascript:lambda:()=>false"
prim__false : AnyPtr

export
ToJS Bool where
  toJS True  = prim__true
  toJS False = prim__false

export
FromJS Bool where
  fromJS ptr = prim__eqv ptr prim__true == 1.0

--------------------------------------------------------------------------------
--          Null and Maybe
--------------------------------------------------------------------------------

%foreign "javascript:lambda:()=>null"
prim__null : AnyPtr

%foreign "javascript:lambda:x=>x === null || x === undefined?1:0"
prim__isNullOrUndefined : AnyPtr -> Double

||| Converts a `Maybe a` to a pointer. In case of `Nothing`
||| a pointer corresponding to `null` in javascript is returned.
export
ToJS a => ToJS (Maybe a) where
  toJS = maybe prim__null toJS

||| Converts a pointer to a `Maybe a`.
||| If the pointer is either `null` or `undefined`, this returns
||| `Nothing`.
export
FromJS a => FromJS (Maybe a) where
  fromJS ptr = if prim__isNullOrUndefined ptr == 0
                  then Just (fromJS ptr)
                  else Nothing

--------------------------------------------------------------------------------
--          Either
--------------------------------------------------------------------------------

export
(ToJS a, ToJS b) => ToJS (Either a b) where
  toJS = either toJS toJS
