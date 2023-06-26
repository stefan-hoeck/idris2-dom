module Web.Raw.ReadableStreamGenericReader

import JS
import Web.Types.ReadableStreamGenericReader


%default total


export
%foreign "browser:lambda:x=>x.closed"
prim__closed : ReadableStreamGenericReader -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:(x,a)=>x.cancel(a)"
prim__cancel :
     ReadableStreamGenericReader
  -> UndefOr AnyPtr
  -> PrimIO (Promise Undefined)


export
closed :
     {auto _ : Cast t1 ReadableStreamGenericReader}
  -> (obj : t1)
  -> JSIO (Promise Undefined)
closed a = primJS $ ReadableStreamGenericReader.prim__closed (cast a)


export
cancel' :
     {auto _ : Cast t1 ReadableStreamGenericReader}
  -> (obj : t1)
  -> (reason : Optional Any)
  -> JSIO (Promise Undefined)
cancel' a b = primJS $
  ReadableStreamGenericReader.prim__cancel (cast a) (toFFI b)

export
cancel :
     {auto _ : Cast t1 ReadableStreamGenericReader}
  -> (obj : t1)
  -> JSIO (Promise Undefined)
cancel a = primJS $ ReadableStreamGenericReader.prim__cancel (cast a) undef
