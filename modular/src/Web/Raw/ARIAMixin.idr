module Web.Raw.ARIAMixin

import JS
import Web.Types.ARIAMixin


%default total


export
%foreign "browser:lambda:x=>x.ariaAtomic"
prim__ariaAtomic : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaAtomic = v}"
prim__setAriaAtomic : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaAutoComplete"
prim__ariaAutoComplete : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaAutoComplete = v}"
prim__setAriaAutoComplete : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaBusy"
prim__ariaBusy : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaBusy = v}"
prim__setAriaBusy : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaChecked"
prim__ariaChecked : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaChecked = v}"
prim__setAriaChecked : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaColCount"
prim__ariaColCount : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaColCount = v}"
prim__setAriaColCount : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaColIndex"
prim__ariaColIndex : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaColIndex = v}"
prim__setAriaColIndex : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaColIndexText"
prim__ariaColIndexText : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaColIndexText = v}"
prim__setAriaColIndexText : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaColSpan"
prim__ariaColSpan : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaColSpan = v}"
prim__setAriaColSpan : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaCurrent"
prim__ariaCurrent : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaCurrent = v}"
prim__setAriaCurrent : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaDescription"
prim__ariaDescription : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaDescription = v}"
prim__setAriaDescription : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaDisabled"
prim__ariaDisabled : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaDisabled = v}"
prim__setAriaDisabled : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaExpanded"
prim__ariaExpanded : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaExpanded = v}"
prim__setAriaExpanded : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaHasPopup"
prim__ariaHasPopup : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaHasPopup = v}"
prim__setAriaHasPopup : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaHidden"
prim__ariaHidden : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaHidden = v}"
prim__setAriaHidden : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaInvalid"
prim__ariaInvalid : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaInvalid = v}"
prim__setAriaInvalid : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaKeyShortcuts"
prim__ariaKeyShortcuts : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaKeyShortcuts = v}"
prim__setAriaKeyShortcuts : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaLabel"
prim__ariaLabel : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaLabel = v}"
prim__setAriaLabel : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaLevel"
prim__ariaLevel : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaLevel = v}"
prim__setAriaLevel : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaLive"
prim__ariaLive : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaLive = v}"
prim__setAriaLive : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaModal"
prim__ariaModal : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaModal = v}"
prim__setAriaModal : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaMultiLine"
prim__ariaMultiLine : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaMultiLine = v}"
prim__setAriaMultiLine : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaMultiSelectable"
prim__ariaMultiSelectable : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaMultiSelectable = v}"
prim__setAriaMultiSelectable : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaOrientation"
prim__ariaOrientation : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaOrientation = v}"
prim__setAriaOrientation : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaPlaceholder"
prim__ariaPlaceholder : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaPlaceholder = v}"
prim__setAriaPlaceholder : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaPosInSet"
prim__ariaPosInSet : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaPosInSet = v}"
prim__setAriaPosInSet : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaPressed"
prim__ariaPressed : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaPressed = v}"
prim__setAriaPressed : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaReadOnly"
prim__ariaReadOnly : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaReadOnly = v}"
prim__setAriaReadOnly : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaRequired"
prim__ariaRequired : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaRequired = v}"
prim__setAriaRequired : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaRoleDescription"
prim__ariaRoleDescription : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaRoleDescription = v}"
prim__setAriaRoleDescription : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaRowCount"
prim__ariaRowCount : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaRowCount = v}"
prim__setAriaRowCount : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaRowIndex"
prim__ariaRowIndex : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaRowIndex = v}"
prim__setAriaRowIndex : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaRowIndexText"
prim__ariaRowIndexText : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaRowIndexText = v}"
prim__setAriaRowIndexText : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaRowSpan"
prim__ariaRowSpan : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaRowSpan = v}"
prim__setAriaRowSpan : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaSelected"
prim__ariaSelected : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaSelected = v}"
prim__setAriaSelected : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaSetSize"
prim__ariaSetSize : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaSetSize = v}"
prim__setAriaSetSize : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaSort"
prim__ariaSort : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaSort = v}"
prim__setAriaSort : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaValueMax"
prim__ariaValueMax : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaValueMax = v}"
prim__setAriaValueMax : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaValueMin"
prim__ariaValueMin : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaValueMin = v}"
prim__setAriaValueMin : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaValueNow"
prim__ariaValueNow : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaValueNow = v}"
prim__setAriaValueNow : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ariaValueText"
prim__ariaValueText : ARIAMixin -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ariaValueText = v}"
prim__setAriaValueText : ARIAMixin -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.role"
prim__role : ARIAMixin -> PrimIO (Nullable String)



export
%foreign "browser:lambda:(x,v)=>{x.role = v}"
prim__setRole : ARIAMixin -> Nullable String -> PrimIO ()



export
ariaAtomic :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaAtomic v = fromPrim
                 "ARIAMixin.getariaAtomic"
                 prim__ariaAtomic
                 prim__setAriaAtomic
                 (cast {to = ARIAMixin} v)


export
ariaAutoComplete :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaAutoComplete v = fromPrim
                       "ARIAMixin.getariaAutoComplete"
                       prim__ariaAutoComplete
                       prim__setAriaAutoComplete
                       (cast {to = ARIAMixin} v)


export
ariaBusy : {auto _ : Cast t ARIAMixin} -> t -> Attribute True Prelude.id String
ariaBusy v = fromPrim
               "ARIAMixin.getariaBusy"
               prim__ariaBusy
               prim__setAriaBusy
               (cast {to = ARIAMixin} v)


export
ariaChecked :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaChecked v = fromPrim
                  "ARIAMixin.getariaChecked"
                  prim__ariaChecked
                  prim__setAriaChecked
                  (cast {to = ARIAMixin} v)


export
ariaColCount :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaColCount v = fromPrim
                   "ARIAMixin.getariaColCount"
                   prim__ariaColCount
                   prim__setAriaColCount
                   (cast {to = ARIAMixin} v)


export
ariaColIndex :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaColIndex v = fromPrim
                   "ARIAMixin.getariaColIndex"
                   prim__ariaColIndex
                   prim__setAriaColIndex
                   (cast {to = ARIAMixin} v)


export
ariaColIndexText :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaColIndexText v = fromPrim
                       "ARIAMixin.getariaColIndexText"
                       prim__ariaColIndexText
                       prim__setAriaColIndexText
                       (cast {to = ARIAMixin} v)


export
ariaColSpan :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaColSpan v = fromPrim
                  "ARIAMixin.getariaColSpan"
                  prim__ariaColSpan
                  prim__setAriaColSpan
                  (cast {to = ARIAMixin} v)


export
ariaCurrent :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaCurrent v = fromPrim
                  "ARIAMixin.getariaCurrent"
                  prim__ariaCurrent
                  prim__setAriaCurrent
                  (cast {to = ARIAMixin} v)


export
ariaDescription :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaDescription v = fromPrim
                      "ARIAMixin.getariaDescription"
                      prim__ariaDescription
                      prim__setAriaDescription
                      (cast {to = ARIAMixin} v)


export
ariaDisabled :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaDisabled v = fromPrim
                   "ARIAMixin.getariaDisabled"
                   prim__ariaDisabled
                   prim__setAriaDisabled
                   (cast {to = ARIAMixin} v)


export
ariaExpanded :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaExpanded v = fromPrim
                   "ARIAMixin.getariaExpanded"
                   prim__ariaExpanded
                   prim__setAriaExpanded
                   (cast {to = ARIAMixin} v)


export
ariaHasPopup :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaHasPopup v = fromPrim
                   "ARIAMixin.getariaHasPopup"
                   prim__ariaHasPopup
                   prim__setAriaHasPopup
                   (cast {to = ARIAMixin} v)


export
ariaHidden :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaHidden v = fromPrim
                 "ARIAMixin.getariaHidden"
                 prim__ariaHidden
                 prim__setAriaHidden
                 (cast {to = ARIAMixin} v)


export
ariaInvalid :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaInvalid v = fromPrim
                  "ARIAMixin.getariaInvalid"
                  prim__ariaInvalid
                  prim__setAriaInvalid
                  (cast {to = ARIAMixin} v)


export
ariaKeyShortcuts :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaKeyShortcuts v = fromPrim
                       "ARIAMixin.getariaKeyShortcuts"
                       prim__ariaKeyShortcuts
                       prim__setAriaKeyShortcuts
                       (cast {to = ARIAMixin} v)


export
ariaLabel : {auto _ : Cast t ARIAMixin} -> t -> Attribute True Prelude.id String
ariaLabel v = fromPrim
                "ARIAMixin.getariaLabel"
                prim__ariaLabel
                prim__setAriaLabel
                (cast {to = ARIAMixin} v)


export
ariaLevel : {auto _ : Cast t ARIAMixin} -> t -> Attribute True Prelude.id String
ariaLevel v = fromPrim
                "ARIAMixin.getariaLevel"
                prim__ariaLevel
                prim__setAriaLevel
                (cast {to = ARIAMixin} v)


export
ariaLive : {auto _ : Cast t ARIAMixin} -> t -> Attribute True Prelude.id String
ariaLive v = fromPrim
               "ARIAMixin.getariaLive"
               prim__ariaLive
               prim__setAriaLive
               (cast {to = ARIAMixin} v)


export
ariaModal : {auto _ : Cast t ARIAMixin} -> t -> Attribute True Prelude.id String
ariaModal v = fromPrim
                "ARIAMixin.getariaModal"
                prim__ariaModal
                prim__setAriaModal
                (cast {to = ARIAMixin} v)


export
ariaMultiLine :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaMultiLine v = fromPrim
                    "ARIAMixin.getariaMultiLine"
                    prim__ariaMultiLine
                    prim__setAriaMultiLine
                    (cast {to = ARIAMixin} v)


export
ariaMultiSelectable :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaMultiSelectable v = fromPrim
                          "ARIAMixin.getariaMultiSelectable"
                          prim__ariaMultiSelectable
                          prim__setAriaMultiSelectable
                          (cast {to = ARIAMixin} v)


export
ariaOrientation :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaOrientation v = fromPrim
                      "ARIAMixin.getariaOrientation"
                      prim__ariaOrientation
                      prim__setAriaOrientation
                      (cast {to = ARIAMixin} v)


export
ariaPlaceholder :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaPlaceholder v = fromPrim
                      "ARIAMixin.getariaPlaceholder"
                      prim__ariaPlaceholder
                      prim__setAriaPlaceholder
                      (cast {to = ARIAMixin} v)


export
ariaPosInSet :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaPosInSet v = fromPrim
                   "ARIAMixin.getariaPosInSet"
                   prim__ariaPosInSet
                   prim__setAriaPosInSet
                   (cast {to = ARIAMixin} v)


export
ariaPressed :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaPressed v = fromPrim
                  "ARIAMixin.getariaPressed"
                  prim__ariaPressed
                  prim__setAriaPressed
                  (cast {to = ARIAMixin} v)


export
ariaReadOnly :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaReadOnly v = fromPrim
                   "ARIAMixin.getariaReadOnly"
                   prim__ariaReadOnly
                   prim__setAriaReadOnly
                   (cast {to = ARIAMixin} v)


export
ariaRequired :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaRequired v = fromPrim
                   "ARIAMixin.getariaRequired"
                   prim__ariaRequired
                   prim__setAriaRequired
                   (cast {to = ARIAMixin} v)


export
ariaRoleDescription :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaRoleDescription v = fromPrim
                          "ARIAMixin.getariaRoleDescription"
                          prim__ariaRoleDescription
                          prim__setAriaRoleDescription
                          (cast {to = ARIAMixin} v)


export
ariaRowCount :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaRowCount v = fromPrim
                   "ARIAMixin.getariaRowCount"
                   prim__ariaRowCount
                   prim__setAriaRowCount
                   (cast {to = ARIAMixin} v)


export
ariaRowIndex :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaRowIndex v = fromPrim
                   "ARIAMixin.getariaRowIndex"
                   prim__ariaRowIndex
                   prim__setAriaRowIndex
                   (cast {to = ARIAMixin} v)


export
ariaRowIndexText :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaRowIndexText v = fromPrim
                       "ARIAMixin.getariaRowIndexText"
                       prim__ariaRowIndexText
                       prim__setAriaRowIndexText
                       (cast {to = ARIAMixin} v)


export
ariaRowSpan :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaRowSpan v = fromPrim
                  "ARIAMixin.getariaRowSpan"
                  prim__ariaRowSpan
                  prim__setAriaRowSpan
                  (cast {to = ARIAMixin} v)


export
ariaSelected :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaSelected v = fromPrim
                   "ARIAMixin.getariaSelected"
                   prim__ariaSelected
                   prim__setAriaSelected
                   (cast {to = ARIAMixin} v)


export
ariaSetSize :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaSetSize v = fromPrim
                  "ARIAMixin.getariaSetSize"
                  prim__ariaSetSize
                  prim__setAriaSetSize
                  (cast {to = ARIAMixin} v)


export
ariaSort : {auto _ : Cast t ARIAMixin} -> t -> Attribute True Prelude.id String
ariaSort v = fromPrim
               "ARIAMixin.getariaSort"
               prim__ariaSort
               prim__setAriaSort
               (cast {to = ARIAMixin} v)


export
ariaValueMax :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaValueMax v = fromPrim
                   "ARIAMixin.getariaValueMax"
                   prim__ariaValueMax
                   prim__setAriaValueMax
                   (cast {to = ARIAMixin} v)


export
ariaValueMin :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaValueMin v = fromPrim
                   "ARIAMixin.getariaValueMin"
                   prim__ariaValueMin
                   prim__setAriaValueMin
                   (cast {to = ARIAMixin} v)


export
ariaValueNow :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaValueNow v = fromPrim
                   "ARIAMixin.getariaValueNow"
                   prim__ariaValueNow
                   prim__setAriaValueNow
                   (cast {to = ARIAMixin} v)


export
ariaValueText :
     {auto _ : Cast t ARIAMixin}
  -> t
  -> Attribute True Prelude.id String
ariaValueText v = fromPrim
                    "ARIAMixin.getariaValueText"
                    prim__ariaValueText
                    prim__setAriaValueText
                    (cast {to = ARIAMixin} v)


export
role : {auto _ : Cast t ARIAMixin} -> t -> Attribute False Maybe String
role v = fromNullablePrim
           "ARIAMixin.getrole"
           prim__role
           prim__setRole
           (cast {to = ARIAMixin} v)
