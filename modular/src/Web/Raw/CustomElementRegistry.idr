module Web.Raw.CustomElementRegistry

import JS
import Web.Types.CustomElementConstructor
import Web.Types.CustomElementRegistry
import Web.Types.ElementDefinitionOptions
import Web.Types.Node


%default total


export
%foreign "browser:lambda:(x,a,b,c)=>x.define(a,b,c)"
prim__define :
     CustomElementRegistry
  -> String
  -> CustomElementConstructor
  -> UndefOr ElementDefinitionOptions
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.get(a)"
prim__get :
     CustomElementRegistry
  -> String
  -> PrimIO (Union2 CustomElementConstructor Undefined)


export
%foreign "browser:lambda:(x,a)=>x.upgrade(a)"
prim__upgrade : CustomElementRegistry -> Node -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.whenDefined(a)"
prim__whenDefined :
     CustomElementRegistry
  -> String
  -> PrimIO (Promise CustomElementConstructor)


export
define' :
     {auto _ : Cast t4 ElementDefinitionOptions}
  -> (obj : CustomElementRegistry)
  -> (name : String)
  -> (constructor : CustomElementConstructor)
  -> (options : Optional t4)
  -> JSIO ()
define' a b c d = primJS $ CustomElementRegistry.prim__define a b c (optUp d)

export
define :
     (obj : CustomElementRegistry)
  -> (name : String)
  -> (constructor : CustomElementConstructor)
  -> JSIO ()
define a b c = primJS $ CustomElementRegistry.prim__define a b c undef


export
get :
     (obj : CustomElementRegistry)
  -> (name : String)
  -> JSIO (Union2 CustomElementConstructor Undefined)
get a b = primJS $ CustomElementRegistry.prim__get a b


export
upgrade :
     {auto _ : Cast t2 Node}
  -> (obj : CustomElementRegistry)
  -> (root : t2)
  -> JSIO ()
upgrade a b = primJS $ CustomElementRegistry.prim__upgrade a (cast b)


export
whenDefined :
     (obj : CustomElementRegistry)
  -> (name : String)
  -> JSIO (Promise CustomElementConstructor)
whenDefined a b = primJS $ CustomElementRegistry.prim__whenDefined a b
