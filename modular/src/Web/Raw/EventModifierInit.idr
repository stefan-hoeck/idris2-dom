module Web.Raw.EventModifierInit

import JS
import Web.Types.EventInit
import Web.Types.EventModifierInit
import Web.Types.UIEventInit


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j,k,l,m,n)=> ({ctrlKey: a,shiftKey: b,altKey: c,metaKey: d,modifierAltGraph: e,modifierCapsLock: f,modifierFn: g,modifierFnLock: h,modifierHyper: i,modifierNumLock: j,modifierScrollLock: k,modifierSuper: l,modifierSymbol: m,modifierSymbolLock: n})"
prim__new :
     UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> PrimIO EventModifierInit


export
%foreign "browser:lambda:x=>x.altKey"
prim__altKey : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.altKey = v}"
prim__setAltKey : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ctrlKey"
prim__ctrlKey : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.ctrlKey = v}"
prim__setCtrlKey : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.metaKey"
prim__metaKey : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.metaKey = v}"
prim__setMetaKey : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.modifierAltGraph"
prim__modifierAltGraph : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.modifierAltGraph = v}"
prim__setModifierAltGraph : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.modifierCapsLock"
prim__modifierCapsLock : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.modifierCapsLock = v}"
prim__setModifierCapsLock : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.modifierFn"
prim__modifierFn : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.modifierFn = v}"
prim__setModifierFn : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.modifierFnLock"
prim__modifierFnLock : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.modifierFnLock = v}"
prim__setModifierFnLock : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.modifierHyper"
prim__modifierHyper : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.modifierHyper = v}"
prim__setModifierHyper : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.modifierNumLock"
prim__modifierNumLock : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.modifierNumLock = v}"
prim__setModifierNumLock : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.modifierScrollLock"
prim__modifierScrollLock : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.modifierScrollLock = v}"
prim__setModifierScrollLock : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.modifierSuper"
prim__modifierSuper : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.modifierSuper = v}"
prim__setModifierSuper : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.modifierSymbol"
prim__modifierSymbol : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.modifierSymbol = v}"
prim__setModifierSymbol : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.modifierSymbolLock"
prim__modifierSymbolLock : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.modifierSymbolLock = v}"
prim__setModifierSymbolLock : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.shiftKey"
prim__shiftKey : EventModifierInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.shiftKey = v}"
prim__setShiftKey : EventModifierInit -> UndefOr Boolean -> PrimIO ()



export
new' :
     (ctrlKey : Optional Bool)
  -> (shiftKey : Optional Bool)
  -> (altKey : Optional Bool)
  -> (metaKey : Optional Bool)
  -> (modifierAltGraph : Optional Bool)
  -> (modifierCapsLock : Optional Bool)
  -> (modifierFn : Optional Bool)
  -> (modifierFnLock : Optional Bool)
  -> (modifierHyper : Optional Bool)
  -> (modifierNumLock : Optional Bool)
  -> (modifierScrollLock : Optional Bool)
  -> (modifierSuper : Optional Bool)
  -> (modifierSymbol : Optional Bool)
  -> (modifierSymbolLock : Optional Bool)
  -> JSIO EventModifierInit
new' a b c d e f g h i j k l m n = primJS $
  EventModifierInit.prim__new
    (toFFI a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)
    (toFFI g)
    (toFFI h)
    (toFFI i)
    (toFFI j)
    (toFFI k)
    (toFFI l)
    (toFFI m)
    (toFFI n)

export
new : JSIO EventModifierInit
new = primJS $
  EventModifierInit.prim__new
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef


export
altKey :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
altKey v = fromUndefOrPrim
             "EventModifierInit.getaltKey"
             prim__altKey
             prim__setAltKey
             False
             (cast {to = EventModifierInit} v)


export
ctrlKey :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
ctrlKey v = fromUndefOrPrim
              "EventModifierInit.getctrlKey"
              prim__ctrlKey
              prim__setCtrlKey
              False
              (cast {to = EventModifierInit} v)


export
metaKey :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
metaKey v = fromUndefOrPrim
              "EventModifierInit.getmetaKey"
              prim__metaKey
              prim__setMetaKey
              False
              (cast {to = EventModifierInit} v)


export
modifierAltGraph :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
modifierAltGraph v = fromUndefOrPrim
                       "EventModifierInit.getmodifierAltGraph"
                       prim__modifierAltGraph
                       prim__setModifierAltGraph
                       False
                       (cast {to = EventModifierInit} v)


export
modifierCapsLock :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
modifierCapsLock v = fromUndefOrPrim
                       "EventModifierInit.getmodifierCapsLock"
                       prim__modifierCapsLock
                       prim__setModifierCapsLock
                       False
                       (cast {to = EventModifierInit} v)


export
modifierFn :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
modifierFn v = fromUndefOrPrim
                 "EventModifierInit.getmodifierFn"
                 prim__modifierFn
                 prim__setModifierFn
                 False
                 (cast {to = EventModifierInit} v)


export
modifierFnLock :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
modifierFnLock v = fromUndefOrPrim
                     "EventModifierInit.getmodifierFnLock"
                     prim__modifierFnLock
                     prim__setModifierFnLock
                     False
                     (cast {to = EventModifierInit} v)


export
modifierHyper :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
modifierHyper v = fromUndefOrPrim
                    "EventModifierInit.getmodifierHyper"
                    prim__modifierHyper
                    prim__setModifierHyper
                    False
                    (cast {to = EventModifierInit} v)


export
modifierNumLock :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
modifierNumLock v = fromUndefOrPrim
                      "EventModifierInit.getmodifierNumLock"
                      prim__modifierNumLock
                      prim__setModifierNumLock
                      False
                      (cast {to = EventModifierInit} v)


export
modifierScrollLock :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
modifierScrollLock v = fromUndefOrPrim
                         "EventModifierInit.getmodifierScrollLock"
                         prim__modifierScrollLock
                         prim__setModifierScrollLock
                         False
                         (cast {to = EventModifierInit} v)


export
modifierSuper :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
modifierSuper v = fromUndefOrPrim
                    "EventModifierInit.getmodifierSuper"
                    prim__modifierSuper
                    prim__setModifierSuper
                    False
                    (cast {to = EventModifierInit} v)


export
modifierSymbol :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
modifierSymbol v = fromUndefOrPrim
                     "EventModifierInit.getmodifierSymbol"
                     prim__modifierSymbol
                     prim__setModifierSymbol
                     False
                     (cast {to = EventModifierInit} v)


export
modifierSymbolLock :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
modifierSymbolLock v = fromUndefOrPrim
                         "EventModifierInit.getmodifierSymbolLock"
                         prim__modifierSymbolLock
                         prim__setModifierSymbolLock
                         False
                         (cast {to = EventModifierInit} v)


export
shiftKey :
     {auto _ : Cast t EventModifierInit}
  -> t
  -> Attribute True Optional Bool
shiftKey v = fromUndefOrPrim
               "EventModifierInit.getshiftKey"
               prim__shiftKey
               prim__setShiftKey
               False
               (cast {to = EventModifierInit} v)

