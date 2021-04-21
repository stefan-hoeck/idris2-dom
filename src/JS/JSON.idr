||| Interfaces for marshalling Idris2 values from and to JSON
||| by using the functionality from JS.Object and Javascript's
||| internal JSON parser and stringifier.
|||
||| For regular algebraic data types, implementations can automatically
||| be derived using elaborator reflection.
module JS.JSON

import public JS.JSON.ToJSON
import public JS.JSON.FromJSON
