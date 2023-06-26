module Web.Raw.FetchEventInit

import JS
import Web.Types.EventInit
import Web.Types.ExtendableEventInit
import Web.Types.FetchEventInit
import Web.Types.Request


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f)=> ({request: a,preloadResponse: b,clientId: c,resultingClientId: d,replacesClientId: e,handled: f})"
prim__new :
     Request
  -> UndefOr (Promise AnyPtr)
  -> UndefOr String
  -> UndefOr String
  -> UndefOr String
  -> UndefOr (Promise Undefined)
  -> PrimIO FetchEventInit


export
%foreign "browser:lambda:x=>x.clientId"
prim__clientId : FetchEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.clientId = v}"
prim__setClientId : FetchEventInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.handled"
prim__handled : FetchEventInit -> PrimIO (UndefOr (Promise Undefined))



export
%foreign "browser:lambda:(x,v)=>{x.handled = v}"
prim__setHandled : FetchEventInit -> UndefOr (Promise Undefined) -> PrimIO ()



export
%foreign "browser:lambda:x=>x.preloadResponse"
prim__preloadResponse : FetchEventInit -> PrimIO (UndefOr (Promise AnyPtr))



export
%foreign "browser:lambda:(x,v)=>{x.preloadResponse = v}"
prim__setPreloadResponse :
     FetchEventInit
  -> UndefOr (Promise AnyPtr)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.replacesClientId"
prim__replacesClientId : FetchEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.replacesClientId = v}"
prim__setReplacesClientId : FetchEventInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.request"
prim__request : FetchEventInit -> PrimIO Request



export
%foreign "browser:lambda:(x,v)=>{x.request = v}"
prim__setRequest : FetchEventInit -> Request -> PrimIO ()



export
%foreign "browser:lambda:x=>x.resultingClientId"
prim__resultingClientId : FetchEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.resultingClientId = v}"
prim__setResultingClientId : FetchEventInit -> UndefOr String -> PrimIO ()



export
new' :
     (request : Request)
  -> (preloadResponse : Optional (Promise AnyPtr))
  -> (clientId : Optional String)
  -> (resultingClientId : Optional String)
  -> (replacesClientId : Optional String)
  -> (handled : Optional (Promise Undefined))
  -> JSIO FetchEventInit
new' a b c d e f = primJS $
  FetchEventInit.prim__new a (toFFI b) (toFFI c) (toFFI d) (toFFI e) (toFFI f)

export
new : (request : Request) -> JSIO FetchEventInit
new a = primJS $ FetchEventInit.prim__new a undef undef undef undef undef


export
clientId :
     {auto _ : Cast t FetchEventInit}
  -> t
  -> Attribute True Optional String
clientId v = fromUndefOrPrim
               "FetchEventInit.getclientId"
               prim__clientId
               prim__setClientId
               ""
               (cast {to = FetchEventInit} v)


export
handled :
     {auto _ : Cast t FetchEventInit}
  -> t
  -> Attribute False Optional (Promise Undefined)
handled v = fromUndefOrPrimNoDefault
              "FetchEventInit.gethandled"
              prim__handled
              prim__setHandled
              (cast {to = FetchEventInit} v)


export
preloadResponse :
     {auto _ : Cast t FetchEventInit}
  -> t
  -> Attribute False Optional (Promise AnyPtr)
preloadResponse v = fromUndefOrPrimNoDefault
                      "FetchEventInit.getpreloadResponse"
                      prim__preloadResponse
                      prim__setPreloadResponse
                      (cast {to = FetchEventInit} v)


export
replacesClientId :
     {auto _ : Cast t FetchEventInit}
  -> t
  -> Attribute True Optional String
replacesClientId v = fromUndefOrPrim
                       "FetchEventInit.getreplacesClientId"
                       prim__replacesClientId
                       prim__setReplacesClientId
                       ""
                       (cast {to = FetchEventInit} v)


export
request :
     {auto _ : Cast t FetchEventInit}
  -> t
  -> Attribute True Prelude.id Request
request v = fromPrim
              "FetchEventInit.getrequest"
              prim__request
              prim__setRequest
              (cast {to = FetchEventInit} v)


export
resultingClientId :
     {auto _ : Cast t FetchEventInit}
  -> t
  -> Attribute True Optional String
resultingClientId v = fromUndefOrPrim
                        "FetchEventInit.getresultingClientId"
                        prim__resultingClientId
                        prim__setResultingClientId
                        ""
                        (cast {to = FetchEventInit} v)
