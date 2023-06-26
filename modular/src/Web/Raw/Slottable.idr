module Web.Raw.Slottable

import JS
import Web.Types.HTMLSlotElement
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.assignedSlot"
prim__assignedSlot : Slottable -> PrimIO (Nullable HTMLSlotElement)


export
assignedSlot :
     {auto _ : Cast t1 Slottable}
  -> (obj : t1)
  -> JSIO (Maybe HTMLSlotElement)
assignedSlot a = tryJS "Slottable.assignedSlot" $
  Slottable.prim__assignedSlot (cast a)

