module Web.Raw.FormDataEventInit

import JS
import Web.Types.EventInit
import Web.Types.FormData
import Web.Types.FormDataEventInit


%default total


export
%foreign "browser:lambda:(a)=> ({formData: a})"
prim__new : FormData -> PrimIO FormDataEventInit


export
%foreign "browser:lambda:x=>x.formData"
prim__formData : FormDataEventInit -> PrimIO FormData



export
%foreign "browser:lambda:(x,v)=>{x.formData = v}"
prim__setFormData : FormDataEventInit -> FormData -> PrimIO ()



export
new : (formData : FormData) -> JSIO FormDataEventInit
new a = primJS $ FormDataEventInit.prim__new a


export
formData :
     {auto _ : Cast t FormDataEventInit}
  -> t
  -> Attribute True Prelude.id FormData
formData v = fromPrim
               "FormDataEventInit.getformData"
               prim__formData
               prim__setFormData
               (cast {to = FormDataEventInit} v)

