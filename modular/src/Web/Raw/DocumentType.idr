module Web.Raw.DocumentType

import JS
import Web.Types.ChildNode
import Web.Types.DocumentType
import Web.Types.EventTarget
import Web.Types.Node


%default total


export
%foreign "browser:lambda:x=>x.name"
prim__name : DocumentType -> PrimIO String


export
%foreign "browser:lambda:x=>x.publicId"
prim__publicId : DocumentType -> PrimIO String


export
%foreign "browser:lambda:x=>x.systemId"
prim__systemId : DocumentType -> PrimIO String


export
name : (obj : DocumentType) -> JSIO String
name a = primJS $ DocumentType.prim__name a


export
publicId : (obj : DocumentType) -> JSIO String
publicId a = primJS $ DocumentType.prim__publicId a


export
systemId : (obj : DocumentType) -> JSIO String
systemId a = primJS $ DocumentType.prim__systemId a
