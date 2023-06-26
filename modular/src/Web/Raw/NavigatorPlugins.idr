module Web.Raw.NavigatorPlugins

import JS
import Web.Types.MimeTypeArray
import Web.Types.NavigatorPlugins
import Web.Types.PluginArray


%default total


export
%foreign "browser:lambda:x=>x.mimeTypes"
prim__mimeTypes : NavigatorPlugins -> PrimIO MimeTypeArray


export
%foreign "browser:lambda:x=>x.plugins"
prim__plugins : NavigatorPlugins -> PrimIO PluginArray


export
%foreign "browser:lambda:x=>x.javaEnabled()"
prim__javaEnabled : NavigatorPlugins -> PrimIO Boolean


export
mimeTypes :
     {auto _ : Cast t1 NavigatorPlugins}
  -> (obj : t1)
  -> JSIO MimeTypeArray
mimeTypes a = primJS $ NavigatorPlugins.prim__mimeTypes (cast a)


export
plugins : {auto _ : Cast t1 NavigatorPlugins} -> (obj : t1) -> JSIO PluginArray
plugins a = primJS $ NavigatorPlugins.prim__plugins (cast a)


export
javaEnabled : {auto _ : Cast t1 NavigatorPlugins} -> (obj : t1) -> JSIO Bool
javaEnabled a = tryJS "NavigatorPlugins.javaEnabled" $
  NavigatorPlugins.prim__javaEnabled (cast a)

