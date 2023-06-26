module Web.Raw.NavigatorLanguage

import JS
import Web.Types.NavigatorLanguage


%default total


export
%foreign "browser:lambda:x=>x.language"
prim__language : NavigatorLanguage -> PrimIO String


export
%foreign "browser:lambda:x=>x.languages"
prim__languages : NavigatorLanguage -> PrimIO (Array String)


export
language : {auto _ : Cast t1 NavigatorLanguage} -> (obj : t1) -> JSIO String
language a = primJS $ NavigatorLanguage.prim__language (cast a)


export
languages :
     {auto _ : Cast t1 NavigatorLanguage}
  -> (obj : t1)
  -> JSIO (Array String)
languages a = primJS $ NavigatorLanguage.prim__languages (cast a)

