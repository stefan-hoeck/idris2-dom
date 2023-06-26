module Web.Raw.FocusEvent

import JS
import Web.Types.Event
import Web.Types.EventTarget
import Web.Types.FocusEvent
import Web.Types.UIEvent


%default total


export
%foreign "browser:lambda:x=>x.relatedTarget"
prim__relatedTarget : FocusEvent -> PrimIO (Nullable EventTarget)


export
relatedTarget : (obj : FocusEvent) -> JSIO (Maybe EventTarget)
relatedTarget a = tryJS "FocusEvent.relatedTarget" $
  FocusEvent.prim__relatedTarget a
