module JS.Inheritance

import Control.Monad.Either
import JS.Util
import Data.List.Elem
import Data.String
import Data.SOP

%default total

--------------------------------------------------------------------------------
--          Upcasting
--------------------------------------------------------------------------------

||| A `JSType` describes a type's inheritance chains and implemented
||| mixins. It is used to safely and conveniently cast a value to a
||| less specific type mentioned either in the list of
||| mixins or parent types by means of funciton `up` and operator `:>`.
public export
interface JSType a where

  ||| The inheritance chain of parent types of this data type
  ||| (starting at the direct supertype). At runtime, such an inheritance
  ||| chain can be inspected by recursively calling the Javascript
  ||| function `Object.getPrototypeOf`.
  parents : List Type

  ||| A Mixin is a concept from WebIDL: It is as programming interface
  ||| shared by several types. Unlike a WebIDL interface, a mixin does
  ||| not describe a type but just set of shared functions and
  ||| attributes. Mixins are not observable by means of inspecting
  ||| a value's prototype chain. It is therefore much harder
  ||| (and right now not supported in this library) to at runtime
  ||| check, whether a value implements a given mixin.
  mixins : List Type

||| Convenience alias for `parents`, which takes an explicit
||| erased type argument.
public export
0 Types : (0 a : Type) -> JSType a => List Type
Types a = a :: parents {a} ++ mixins {a}

||| Safe upcasting. This uses `believe_me` internally and is
||| therefore of course only safe, if the `JSType` implementation
||| is correct according to some specification and the backend
||| properly adhere to this specification.
public export %inline
up : (0 _ : JSType a) => a -> {auto 0 _ : Elem b (Types a)} -> b
up v = believe_me v

infixl 1 :>

||| Operator version of `up`.
public export %inline
(:>) : (0 _ : JSType a) => a -> (0 b : Type) -> {auto 0 _ : Elem b (Types a)} -> b
a :> _ = up a

--------------------------------------------------------------------------------
--          Downcasting
--------------------------------------------------------------------------------

%foreign #"""
         javascript:lambda:(s,v)=>{
         var o = v;
           while (o != null) {
             var p = Object.getPrototypeOf(o);
             var cn = p.constructor.name;
             if (cn === s) {
               return 1;
             } else if (cn === "Object") {
               return 0;
             }
             o = p;
           }
           return 0;
         }
         """#
prim__hasProtoName : String -> AnyPtr -> Double

||| This is an interface which should be implemented by external
||| types, the type of which can be inspected at runtime.
|||
||| This allows us to at runtime try and safely cast any value
||| to the type implementing this interface.
|||
||| Typically, there are two mechanisms for inspecting a value's
||| type at runtime: Function `typeof`, which is mainly useful
||| for primitives, and function `unsafeCastOnPrototypeName`, which
||| inspects a value's prototype chain
||| ([see also](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Inheritance_and_the_prototype_chain)).
|||
||| Note, that the intention of this interface is to use it
||| on *external* types and *primitives*, but not on types
||| defined in Idris2. If you need to marshal Idris2 values
||| from and to the FFI, use interfaces `ToJS` and `FromJS`.
public export
interface SafeCast a where
  safeCast : {0 x : Type} -> x -> Maybe a

public export %inline
castTo : (0 a : Type) -> SafeCast a => x -> Maybe a
castTo _ v = safeCast v

||| Tries to create an n-ary sum by trying all possible
||| casts. The first successful cast will determine the
||| result.
export
safeCastNS : (np : NP SafeCast ts) => x -> Maybe (NS I ts)
safeCastNS x = choiceMap runNS $ apInjsNP np
  where runNS : NS SafeCast ts -> Maybe (NS I ts)
        runNS = htraverse (\sc => safeCast x)

||| This is a utility function to implement instances of
||| `SafeCast`. Only use, if you know what you are doing.
export
unsafeCastOnPrototypeName : String -> a -> Maybe b
unsafeCastOnPrototypeName s a =
  if prim__hasProtoName s (believe_me a) == 1.0
     then Just (believe_me a)
     else Nothing

||| This is a utility function to implement instances of
||| `SafeCast`. Only use, if you know what you are doing.
export
unsafeCastOnTypeof : String -> a -> Maybe b
unsafeCastOnTypeof s a =
  if typeof a == s then Just (believe_me a) else Nothing

export
SafeCast Integer where
  safeCast = unsafeCastOnTypeof "bigint"

export
SafeCast Double where
  safeCast = unsafeCastOnTypeof "number"

export
SafeCast String where
  safeCast = unsafeCastOnTypeof "string"

-- As far as I understand, there are no "single characters"
-- in Javascript, only strings of length 1. Thats why we go via
-- String here
export
SafeCast Char where
  safeCast v = safeCast v >>= \s => case strM s of
                                         StrCons x "" => Just x
                                         _            => Nothing

export
bounded : Num a => (min : Integer) -> (max : Integer) -> x -> Maybe a
bounded min max ptr =
  safeCast ptr >>= \n => if n >= min && n <= max
                            then Just (fromInteger n)
                            else Nothing

export
SafeCast Bits8 where
  safeCast = bounded 0 0xff

export
SafeCast Bits16 where
  safeCast = bounded 0 0xffff

export
SafeCast Bits32 where
  safeCast = bounded 0 0xffffffff

export
SafeCast Bits64 where
  safeCast = bounded 0 0xffffffffffffffff

export
SafeCast Int8 where
  safeCast = bounded (-0x80) 0x7f

export
SafeCast Int16 where
  safeCast = bounded (-0x8000) 0x7fff

export
SafeCast Int32 where
  safeCast = bounded (-0x80000000) 0x7fffffff

export
SafeCast Int64 where
  safeCast = bounded (-0x8000000000000000) 0x7fffffffffffffff

export
SafeCast Int where
  safeCast = bounded (- 0x80000000) (0x7fffffff)

export
tryCast : SafeCast a => (fun : Lazy String) -> x -> JSIO a
tryCast fun val = case safeCast val of
                       Just a  => pure a
                       Nothing => throwError $ CastErr fun val

export
tryCast_ : (0 a : Type) -> SafeCast a => (fun : Lazy String) -> x -> JSIO a
tryCast_ _ = tryCast

export
castingTo : SafeCast a => (fun : String) -> JSIO x -> JSIO a
castingTo fun io = io >>= tryCast fun
