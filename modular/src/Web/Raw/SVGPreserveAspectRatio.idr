module Web.Raw.SVGPreserveAspectRatio

import JS
import Web.Types.SVGPreserveAspectRatio


%default total


export
SVG_MEETORSLICE_MEET : Bits16
SVG_MEETORSLICE_MEET = 1


export
SVG_MEETORSLICE_SLICE : Bits16
SVG_MEETORSLICE_SLICE = 2


export
SVG_MEETORSLICE_UNKNOWN : Bits16
SVG_MEETORSLICE_UNKNOWN = 0


export
SVG_PRESERVEASPECTRATIO_NONE : Bits16
SVG_PRESERVEASPECTRATIO_NONE = 1


export
SVG_PRESERVEASPECTRATIO_UNKNOWN : Bits16
SVG_PRESERVEASPECTRATIO_UNKNOWN = 0


export
SVG_PRESERVEASPECTRATIO_XMAXYMAX : Bits16
SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10


export
SVG_PRESERVEASPECTRATIO_XMAXYMID : Bits16
SVG_PRESERVEASPECTRATIO_XMAXYMID = 7


export
SVG_PRESERVEASPECTRATIO_XMAXYMIN : Bits16
SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4


export
SVG_PRESERVEASPECTRATIO_XMIDYMAX : Bits16
SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9


export
SVG_PRESERVEASPECTRATIO_XMIDYMID : Bits16
SVG_PRESERVEASPECTRATIO_XMIDYMID = 6


export
SVG_PRESERVEASPECTRATIO_XMIDYMIN : Bits16
SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3


export
SVG_PRESERVEASPECTRATIO_XMINYMAX : Bits16
SVG_PRESERVEASPECTRATIO_XMINYMAX = 8


export
SVG_PRESERVEASPECTRATIO_XMINYMID : Bits16
SVG_PRESERVEASPECTRATIO_XMINYMID = 5


export
SVG_PRESERVEASPECTRATIO_XMINYMIN : Bits16
SVG_PRESERVEASPECTRATIO_XMINYMIN = 2


export
%foreign "browser:lambda:x=>x.align"
prim__align : SVGPreserveAspectRatio -> PrimIO Bits16



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : SVGPreserveAspectRatio -> Bits16 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.meetOrSlice"
prim__meetOrSlice : SVGPreserveAspectRatio -> PrimIO Bits16



export
%foreign "browser:lambda:(x,v)=>{x.meetOrSlice = v}"
prim__setMeetOrSlice : SVGPreserveAspectRatio -> Bits16 -> PrimIO ()



export
align : SVGPreserveAspectRatio -> Attribute True Prelude.id Bits16
align v = fromPrim
            "SVGPreserveAspectRatio.getalign"
            prim__align
            prim__setAlign
            v


export
meetOrSlice : SVGPreserveAspectRatio -> Attribute True Prelude.id Bits16
meetOrSlice v = fromPrim
                  "SVGPreserveAspectRatio.getmeetOrSlice"
                  prim__meetOrSlice
                  prim__setMeetOrSlice
                  v
