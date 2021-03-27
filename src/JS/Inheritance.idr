module JS.Inheritance

import Data.List.Elem
import JS.Marshall

public export
interface (FromJS a, ToJS a) => JSVal a where
  parents : List Type
  mixins : List Type

public export
Parents : (a : Type) -> JSVal a => List Type
Parents a = parents {a}

public export
Mixins : (a : Type) -> JSVal a => List Type
Mixins a = mixins {a}

public export %inline
up :  JSVal a
   => a
   -> {auto 0 _ : Either (Elem b (Parents a)) (Elem b (Mixins a))}
   -> b
up = believe_me

infixl 1 :>

public export %inline
(:>) :  JSVal a
     => a
     -> (0 b : Type)
     -> {auto 0 _ : Either (Elem b (Parents a)) (Elem b (Mixins a))}
     -> b
a :> _ = up a

