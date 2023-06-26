module Web.Raw.MutationObserverInit

import JS
import Web.Types.MutationObserverInit


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f,g)=> ({childList: a,attributes: b,characterData: c,subtree: d,attributeOldValue: e,characterDataOldValue: f,attributeFilter: g})"
prim__new :
     UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr (Array String)
  -> PrimIO MutationObserverInit


export
%foreign "browser:lambda:x=>x.attributeFilter"
prim__attributeFilter : MutationObserverInit -> PrimIO (UndefOr (Array String))



export
%foreign "browser:lambda:(x,v)=>{x.attributeFilter = v}"
prim__setAttributeFilter :
     MutationObserverInit
  -> UndefOr (Array String)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.attributeOldValue"
prim__attributeOldValue : MutationObserverInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.attributeOldValue = v}"
prim__setAttributeOldValue :
     MutationObserverInit
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.attributes"
prim__attributes : MutationObserverInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.attributes = v}"
prim__setAttributes : MutationObserverInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.characterData"
prim__characterData : MutationObserverInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.characterData = v}"
prim__setCharacterData : MutationObserverInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.characterDataOldValue"
prim__characterDataOldValue : MutationObserverInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.characterDataOldValue = v}"
prim__setCharacterDataOldValue :
     MutationObserverInit
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.childList"
prim__childList : MutationObserverInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.childList = v}"
prim__setChildList : MutationObserverInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.subtree"
prim__subtree : MutationObserverInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.subtree = v}"
prim__setSubtree : MutationObserverInit -> UndefOr Boolean -> PrimIO ()



export
new' :
     (childList : Optional Bool)
  -> (attributes : Optional Bool)
  -> (characterData : Optional Bool)
  -> (subtree : Optional Bool)
  -> (attributeOldValue : Optional Bool)
  -> (characterDataOldValue : Optional Bool)
  -> (attributeFilter : Optional (Array String))
  -> JSIO MutationObserverInit
new' a b c d e f g = primJS $
  MutationObserverInit.prim__new
    (toFFI a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)
    (toFFI g)

export
new : JSIO MutationObserverInit
new = primJS $
  MutationObserverInit.prim__new undef undef undef undef undef undef undef


export
attributeFilter :
     {auto _ : Cast t MutationObserverInit}
  -> t
  -> Attribute False Optional (Array String)
attributeFilter v = fromUndefOrPrimNoDefault
                      "MutationObserverInit.getattributeFilter"
                      prim__attributeFilter
                      prim__setAttributeFilter
                      (cast {to = MutationObserverInit} v)


export
attributeOldValue :
     {auto _ : Cast t MutationObserverInit}
  -> t
  -> Attribute False Optional Bool
attributeOldValue v = fromUndefOrPrimNoDefault
                        "MutationObserverInit.getattributeOldValue"
                        prim__attributeOldValue
                        prim__setAttributeOldValue
                        (cast {to = MutationObserverInit} v)


export
attributes :
     {auto _ : Cast t MutationObserverInit}
  -> t
  -> Attribute False Optional Bool
attributes v = fromUndefOrPrimNoDefault
                 "MutationObserverInit.getattributes"
                 prim__attributes
                 prim__setAttributes
                 (cast {to = MutationObserverInit} v)


export
characterData :
     {auto _ : Cast t MutationObserverInit}
  -> t
  -> Attribute False Optional Bool
characterData v = fromUndefOrPrimNoDefault
                    "MutationObserverInit.getcharacterData"
                    prim__characterData
                    prim__setCharacterData
                    (cast {to = MutationObserverInit} v)


export
characterDataOldValue :
     {auto _ : Cast t MutationObserverInit}
  -> t
  -> Attribute False Optional Bool
characterDataOldValue v = fromUndefOrPrimNoDefault
                            "MutationObserverInit.getcharacterDataOldValue"
                            prim__characterDataOldValue
                            prim__setCharacterDataOldValue
                            (cast {to = MutationObserverInit} v)


export
childList :
     {auto _ : Cast t MutationObserverInit}
  -> t
  -> Attribute True Optional Bool
childList v = fromUndefOrPrim
                "MutationObserverInit.getchildList"
                prim__childList
                prim__setChildList
                False
                (cast {to = MutationObserverInit} v)


export
subtree :
     {auto _ : Cast t MutationObserverInit}
  -> t
  -> Attribute True Optional Bool
subtree v = fromUndefOrPrim
              "MutationObserverInit.getsubtree"
              prim__subtree
              prim__setSubtree
              False
              (cast {to = MutationObserverInit} v)
