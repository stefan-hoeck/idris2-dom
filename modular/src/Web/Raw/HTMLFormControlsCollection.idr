module Web.Raw.HTMLFormControlsCollection

import JS
import Web.Types.Element
import Web.Types.HTMLCollection
import Web.Types.HTMLFormControlsCollection
import Web.Types.RadioNodeList


%default total


export
%foreign "browser:lambda:(x,a)=>x.namedItem(a)"
prim__namedItem :
     HTMLFormControlsCollection
  -> String
  -> PrimIO (Nullable (Union2 RadioNodeList Element))


export
namedItem :
     (obj : HTMLFormControlsCollection)
  -> (name : String)
  -> JSIO (Maybe (HSum [RadioNodeList, Element]))
namedItem a b = tryJS "HTMLFormControlsCollection.namedItem" $
  HTMLFormControlsCollection.prim__namedItem a b

