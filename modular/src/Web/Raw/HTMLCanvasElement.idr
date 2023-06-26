module Web.Raw.HTMLCanvasElement

import JS
import Web.Types.Animatable
import Web.Types.BlobCallback
import Web.Types.CanvasRenderingContext2D
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.ElementContentEditable
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLCanvasElement
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.ImageBitmapRenderingContext
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.OffscreenCanvas
import Web.Types.ParentNode
import Web.Types.Slottable
import Web.Types.WebGL2RenderingContext
import Web.Types.WebGLRenderingContext


%default total


export
%foreign "browser:lambda:()=> new HTMLCanvasElement()"
prim__new : PrimIO HTMLCanvasElement


export
%foreign "browser:lambda:x=>x.height"
prim__height : HTMLCanvasElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : HTMLCanvasElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLCanvasElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLCanvasElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:(x,a,b)=>x.getContext(a,b)"
prim__getContext :
     HTMLCanvasElement
  -> String
  -> UndefOr AnyPtr
  -> PrimIO
       (Nullable
          (Union4
             CanvasRenderingContext2D
             ImageBitmapRenderingContext
             WebGLRenderingContext
             WebGL2RenderingContext))


export
%foreign "browser:lambda:(x,a,b,c)=>x.toBlob(a,b,c)"
prim__toBlob :
     HTMLCanvasElement
  -> BlobCallback
  -> UndefOr String
  -> UndefOr AnyPtr
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.toDataURL(a,b)"
prim__toDataURL :
     HTMLCanvasElement
  -> UndefOr String
  -> UndefOr AnyPtr
  -> PrimIO String


export
%foreign "browser:lambda:x=>x.transferControlToOffscreen()"
prim__transferControlToOffscreen : HTMLCanvasElement -> PrimIO OffscreenCanvas


export
new : JSIO HTMLCanvasElement
new = primJS $ HTMLCanvasElement.prim__new


export
height : HTMLCanvasElement -> Attribute True Prelude.id Bits32
height v = fromPrim "HTMLCanvasElement.getheight" prim__height prim__setHeight v


export
width : HTMLCanvasElement -> Attribute True Prelude.id Bits32
width v = fromPrim "HTMLCanvasElement.getwidth" prim__width prim__setWidth v


export
getContext' :
     (obj : HTMLCanvasElement)
  -> (contextId : String)
  -> (options : Optional Any)
  -> JSIO
       (Maybe
          (HSum
             [ CanvasRenderingContext2D
             , ImageBitmapRenderingContext
             , WebGLRenderingContext
             , WebGL2RenderingContext
             ]))
getContext' a b c = tryJS "HTMLCanvasElement.getContext'" $
  HTMLCanvasElement.prim__getContext a b (toFFI c)

export
getContext :
     (obj : HTMLCanvasElement)
  -> (contextId : String)
  -> JSIO
       (Maybe
          (HSum
             [ CanvasRenderingContext2D
             , ImageBitmapRenderingContext
             , WebGLRenderingContext
             , WebGL2RenderingContext
             ]))
getContext a b = tryJS "HTMLCanvasElement.getContext" $
  HTMLCanvasElement.prim__getContext a b undef


export
toBlob' :
     (obj : HTMLCanvasElement)
  -> (callback : BlobCallback)
  -> (type : Optional String)
  -> (quality : Optional Any)
  -> JSIO ()
toBlob' a b c d = primJS $
  HTMLCanvasElement.prim__toBlob a b (toFFI c) (toFFI d)

export
toBlob : (obj : HTMLCanvasElement) -> (callback : BlobCallback) -> JSIO ()
toBlob a b = primJS $ HTMLCanvasElement.prim__toBlob a b undef undef


export
toDataURL' :
     (obj : HTMLCanvasElement)
  -> (type : Optional String)
  -> (quality : Optional Any)
  -> JSIO String
toDataURL' a b c = primJS $
  HTMLCanvasElement.prim__toDataURL a (toFFI b) (toFFI c)

export
toDataURL : (obj : HTMLCanvasElement) -> JSIO String
toDataURL a = primJS $ HTMLCanvasElement.prim__toDataURL a undef undef


export
transferControlToOffscreen : (obj : HTMLCanvasElement) -> JSIO OffscreenCanvas
transferControlToOffscreen a = primJS $
  HTMLCanvasElement.prim__transferControlToOffscreen a

