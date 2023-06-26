module Web.Raw.ClipboardItemOptions

import JS
import Web.Types.ClipboardItemOptions
import Web.Types.PresentationStyle


%default total


export
%foreign "browser:lambda:(a)=> ({presentationStyle: a})"
prim__new : UndefOr String -> PrimIO ClipboardItemOptions


export
%foreign "browser:lambda:x=>x.presentationStyle"
prim__presentationStyle : ClipboardItemOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.presentationStyle = v}"
prim__setPresentationStyle : ClipboardItemOptions -> UndefOr String -> PrimIO ()



export
new' :
     (presentationStyle : Optional PresentationStyle)
  -> JSIO ClipboardItemOptions
new' a = primJS $ ClipboardItemOptions.prim__new (toFFI a)

export
new : JSIO ClipboardItemOptions
new = primJS $ ClipboardItemOptions.prim__new undef


export
presentationStyle :
     {auto _ : Cast t ClipboardItemOptions}
  -> t
  -> Attribute False Optional PresentationStyle
presentationStyle v = fromUndefOrPrimNoDefault
                        "ClipboardItemOptions.getpresentationStyle"
                        prim__presentationStyle
                        prim__setPresentationStyle
                        (cast {to = ClipboardItemOptions} v)

