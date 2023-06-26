module Web.Raw.ElementInternals

import JS
import Web.Types.ARIAMixin
import Web.Types.ElementInternals
import Web.Types.File
import Web.Types.FormData
import Web.Types.HTMLElement
import Web.Types.HTMLFormElement
import Web.Types.NodeList
import Web.Types.ShadowRoot
import Web.Types.ValidityState
import Web.Types.ValidityStateFlags


%default total


export
%foreign "browser:lambda:x=>x.form"
prim__form : ElementInternals -> PrimIO (Nullable HTMLFormElement)


export
%foreign "browser:lambda:x=>x.labels"
prim__labels : ElementInternals -> PrimIO NodeList


export
%foreign "browser:lambda:x=>x.shadowRoot"
prim__shadowRoot : ElementInternals -> PrimIO (Nullable ShadowRoot)


export
%foreign "browser:lambda:x=>x.validationMessage"
prim__validationMessage : ElementInternals -> PrimIO String


export
%foreign "browser:lambda:x=>x.validity"
prim__validity : ElementInternals -> PrimIO ValidityState


export
%foreign "browser:lambda:x=>x.willValidate"
prim__willValidate : ElementInternals -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.checkValidity()"
prim__checkValidity : ElementInternals -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.reportValidity()"
prim__reportValidity : ElementInternals -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b)=>x.setFormValue(a,b)"
prim__setFormValue :
     ElementInternals
  -> Nullable (Union3 File String FormData)
  -> UndefOr (Nullable (Union3 File String FormData))
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.setValidity(a,b,c)"
prim__setValidity :
     ElementInternals
  -> UndefOr ValidityStateFlags
  -> UndefOr String
  -> UndefOr HTMLElement
  -> PrimIO ()


export
form : (obj : ElementInternals) -> JSIO (Maybe HTMLFormElement)
form a = tryJS "ElementInternals.form" $ ElementInternals.prim__form a


export
labels : (obj : ElementInternals) -> JSIO NodeList
labels a = primJS $ ElementInternals.prim__labels a


export
shadowRoot : (obj : ElementInternals) -> JSIO (Maybe ShadowRoot)
shadowRoot a = tryJS "ElementInternals.shadowRoot" $
  ElementInternals.prim__shadowRoot a


export
validationMessage : (obj : ElementInternals) -> JSIO String
validationMessage a = primJS $ ElementInternals.prim__validationMessage a


export
validity : (obj : ElementInternals) -> JSIO ValidityState
validity a = primJS $ ElementInternals.prim__validity a


export
willValidate : (obj : ElementInternals) -> JSIO Bool
willValidate a = tryJS "ElementInternals.willValidate" $
  ElementInternals.prim__willValidate a


export
checkValidity : (obj : ElementInternals) -> JSIO Bool
checkValidity a = tryJS "ElementInternals.checkValidity" $
  ElementInternals.prim__checkValidity a


export
reportValidity : (obj : ElementInternals) -> JSIO Bool
reportValidity a = tryJS "ElementInternals.reportValidity" $
  ElementInternals.prim__reportValidity a


export
setFormValue' :
     (obj : ElementInternals)
  -> (value : Maybe (HSum [File, String, FormData]))
  -> (state : Optional (Maybe (HSum [File, String, FormData])))
  -> JSIO ()
setFormValue' a b c = primJS $
  ElementInternals.prim__setFormValue a (toFFI b) (toFFI c)

export
setFormValue :
     (obj : ElementInternals)
  -> (value : Maybe (HSum [File, String, FormData]))
  -> JSIO ()
setFormValue a b = primJS $
  ElementInternals.prim__setFormValue a (toFFI b) undef


export
setValidity' :
     {auto _ : Cast t2 ValidityStateFlags}
  -> {auto _ : Cast t4 HTMLElement}
  -> (obj : ElementInternals)
  -> (flags : Optional t2)
  -> (message : Optional String)
  -> (anchor : Optional t4)
  -> JSIO ()
setValidity' a b c d = primJS $
  ElementInternals.prim__setValidity a (optUp b) (toFFI c) (optUp d)

export
setValidity : (obj : ElementInternals) -> JSIO ()
setValidity a = primJS $ ElementInternals.prim__setValidity a undef undef undef

