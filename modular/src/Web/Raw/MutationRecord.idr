module Web.Raw.MutationRecord

import JS
import Web.Types.MutationRecord
import Web.Types.Node
import Web.Types.NodeList


%default total


export
%foreign "browser:lambda:x=>x.addedNodes"
prim__addedNodes : MutationRecord -> PrimIO NodeList


export
%foreign "browser:lambda:x=>x.attributeName"
prim__attributeName : MutationRecord -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.attributeNamespace"
prim__attributeNamespace : MutationRecord -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.nextSibling"
prim__nextSibling : MutationRecord -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.oldValue"
prim__oldValue : MutationRecord -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.previousSibling"
prim__previousSibling : MutationRecord -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.removedNodes"
prim__removedNodes : MutationRecord -> PrimIO NodeList


export
%foreign "browser:lambda:x=>x.target"
prim__target : MutationRecord -> PrimIO Node


export
%foreign "browser:lambda:x=>x.type"
prim__type : MutationRecord -> PrimIO String


export
addedNodes : (obj : MutationRecord) -> JSIO NodeList
addedNodes a = primJS $ MutationRecord.prim__addedNodes a


export
attributeName : (obj : MutationRecord) -> JSIO (Maybe String)
attributeName a = tryJS "MutationRecord.attributeName" $
  MutationRecord.prim__attributeName a


export
attributeNamespace : (obj : MutationRecord) -> JSIO (Maybe String)
attributeNamespace a = tryJS "MutationRecord.attributeNamespace" $
  MutationRecord.prim__attributeNamespace a


export
nextSibling : (obj : MutationRecord) -> JSIO (Maybe Node)
nextSibling a = tryJS "MutationRecord.nextSibling" $
  MutationRecord.prim__nextSibling a


export
oldValue : (obj : MutationRecord) -> JSIO (Maybe String)
oldValue a = tryJS "MutationRecord.oldValue" $ MutationRecord.prim__oldValue a


export
previousSibling : (obj : MutationRecord) -> JSIO (Maybe Node)
previousSibling a = tryJS "MutationRecord.previousSibling" $
  MutationRecord.prim__previousSibling a


export
removedNodes : (obj : MutationRecord) -> JSIO NodeList
removedNodes a = primJS $ MutationRecord.prim__removedNodes a


export
target : (obj : MutationRecord) -> JSIO Node
target a = primJS $ MutationRecord.prim__target a


export
type : (obj : MutationRecord) -> JSIO String
type a = primJS $ MutationRecord.prim__type a

