module JS.Marshall

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

--------------------------------------------------------------------------------
--          Bool
--------------------------------------------------------------------------------

%foreign "javascript:lambda:(a,b)=>a === b?1:0"
prim__eqv : AnyPtr -> AnyPtr -> Double

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
