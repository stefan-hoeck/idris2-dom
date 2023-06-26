module Web.Raw.IDBKeyRange

import JS
import Web.Types.IDBKeyRange


%default total


export
%foreign "browser:lambda:(a,b,c,d)=>IDBKeyRange.bound(a,b,c,d)"
prim__bound :
     AnyPtr
  -> AnyPtr
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> PrimIO IDBKeyRange


export
%foreign "browser:lambda:(a,b)=>IDBKeyRange.lowerBound(a,b)"
prim__lowerBound : AnyPtr -> UndefOr Boolean -> PrimIO IDBKeyRange


export
%foreign "browser:lambda:(a)=>IDBKeyRange.only(a)"
prim__only : AnyPtr -> PrimIO IDBKeyRange


export
%foreign "browser:lambda:(a,b)=>IDBKeyRange.upperBound(a,b)"
prim__upperBound : AnyPtr -> UndefOr Boolean -> PrimIO IDBKeyRange


export
%foreign "browser:lambda:x=>x.lower"
prim__lower : IDBKeyRange -> PrimIO AnyPtr


export
%foreign "browser:lambda:x=>x.lowerOpen"
prim__lowerOpen : IDBKeyRange -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.upper"
prim__upper : IDBKeyRange -> PrimIO AnyPtr


export
%foreign "browser:lambda:x=>x.upperOpen"
prim__upperOpen : IDBKeyRange -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.includes(a)"
prim__includes : IDBKeyRange -> AnyPtr -> PrimIO Boolean


export
bound' :
     (lower : Any)
  -> (upper : Any)
  -> (lowerOpen : Optional Bool)
  -> (upperOpen : Optional Bool)
  -> JSIO IDBKeyRange
bound' a b c d = primJS $
  IDBKeyRange.prim__bound (toFFI a) (toFFI b) (toFFI c) (toFFI d)

export
bound : (lower : Any) -> (upper : Any) -> JSIO IDBKeyRange
bound a b = primJS $ IDBKeyRange.prim__bound (toFFI a) (toFFI b) undef undef


export
lowerBound' : (lower : Any) -> (open_ : Optional Bool) -> JSIO IDBKeyRange
lowerBound' a b = primJS $ IDBKeyRange.prim__lowerBound (toFFI a) (toFFI b)

export
lowerBound : (lower : Any) -> JSIO IDBKeyRange
lowerBound a = primJS $ IDBKeyRange.prim__lowerBound (toFFI a) undef


export
only : (value : Any) -> JSIO IDBKeyRange
only a = primJS $ IDBKeyRange.prim__only (toFFI a)


export
upperBound' : (upper : Any) -> (open_ : Optional Bool) -> JSIO IDBKeyRange
upperBound' a b = primJS $ IDBKeyRange.prim__upperBound (toFFI a) (toFFI b)

export
upperBound : (upper : Any) -> JSIO IDBKeyRange
upperBound a = primJS $ IDBKeyRange.prim__upperBound (toFFI a) undef


export
lower : (obj : IDBKeyRange) -> JSIO Any
lower a = tryJS "IDBKeyRange.lower" $ IDBKeyRange.prim__lower a


export
lowerOpen : (obj : IDBKeyRange) -> JSIO Bool
lowerOpen a = tryJS "IDBKeyRange.lowerOpen" $ IDBKeyRange.prim__lowerOpen a


export
upper : (obj : IDBKeyRange) -> JSIO Any
upper a = tryJS "IDBKeyRange.upper" $ IDBKeyRange.prim__upper a


export
upperOpen : (obj : IDBKeyRange) -> JSIO Bool
upperOpen a = tryJS "IDBKeyRange.upperOpen" $ IDBKeyRange.prim__upperOpen a


export
includes : (obj : IDBKeyRange) -> (key : Any) -> JSIO Bool
includes a b = tryJS "IDBKeyRange.includes" $
  IDBKeyRange.prim__includes a (toFFI b)
