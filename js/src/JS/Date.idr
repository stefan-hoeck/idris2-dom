module JS.Date

import Data.String

%default total

||| External data type for working with JS `Date` values
public export
data JSDate : Type where [external]

%foreign "javascript:lambda:(w) => new Date(Number(w))"
prim__date : Bits64 -> JSDate

%foreign "javascript:lambda:(w) => new Date(w)"
prim__stringDate : String -> JSDate

%foreign "javascript:lambda:(w) => w.toLocaleDateString()"
prim__toLocaleDateString : JSDate -> String

%foreign "javascript:lambda:(w) => w.toLocaleTimeString()"
prim__toLocaleTimeString : JSDate -> String

%foreign "javascript:lambda:(d) => BigInt(d.getTime())"
prim__getTime : JSDate -> Bits64

%foreign "javascript:lambda:(d) => BigInt(d.getFullYear())"
prim__getFullYear : JSDate -> Bits64

%foreign "javascript:lambda:(d) => BigInt(d.getMonth())"
prim__getMonth : JSDate -> Bits64

%foreign "javascript:lambda:(d) => BigInt(d.getDate())"
prim__getDate : JSDate -> Bits64

export %inline
Cast Bits64 JSDate where cast = prim__date

export %inline
Cast String JSDate where cast = prim__stringDate

export %inline
toLocaleDateString : JSDate -> String
toLocaleDateString = prim__toLocaleDateString

export %inline
toLocaleTimeString : JSDate -> String
toLocaleTimeString = prim__toLocaleTimeString

export %inline
getTime : JSDate -> Bits64
getTime = prim__getTime

export %inline
getFullYear : JSDate -> Bits64
getFullYear = prim__getFullYear

export %inline
getMonth : JSDate -> Bits64
getMonth = prim__getMonth

export %inline
getDate : JSDate -> Bits64
getDate = prim__getDate

pad2 : Bits64 -> String
pad2 v = padLeft 2 '0' (show v)

||| Prints a date in the format "yyyy-mm-dd"
export
dateString : Bits64 -> String
dateString ts =
  let d := cast {to = JSDate} ts
   in "\{show $ getFullYear d}-\{pad2 $ getMonth d + 1}-\{pad2 $ getDate d}"
