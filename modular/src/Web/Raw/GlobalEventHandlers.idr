module Web.Raw.GlobalEventHandlers

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.FocusEventHandler
import Web.Types.GlobalEventHandlers
import Web.Types.InputEventHandler
import Web.Types.KeyboardEventHandler
import Web.Types.MouseEventHandler
import Web.Types.OnErrorEventHandlerNonNull
import Web.Types.UIEventHandler
import Web.Types.WheelEventHandler


%default total


export
%foreign "browser:lambda:x=>x.onabort"
prim__onabort : GlobalEventHandlers -> PrimIO (Nullable UIEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onabort = v}"
prim__setOnabort : GlobalEventHandlers -> Nullable UIEventHandler -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onauxclick"
prim__onauxclick : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onauxclick = v}"
prim__setOnauxclick :
     GlobalEventHandlers
  -> Nullable MouseEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onblur"
prim__onblur : GlobalEventHandlers -> PrimIO (Nullable FocusEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onblur = v}"
prim__setOnblur : GlobalEventHandlers -> Nullable FocusEventHandler -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oncancel"
prim__oncancel : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.oncancel = v}"
prim__setOncancel :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oncanplay"
prim__oncanplay : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.oncanplay = v}"
prim__setOncanplay :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oncanplaythrough"
prim__oncanplaythrough :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.oncanplaythrough = v}"
prim__setOncanplaythrough :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onchange"
prim__onchange : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onchange = v}"
prim__setOnchange :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onclick"
prim__onclick : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onclick = v}"
prim__setOnclick :
     GlobalEventHandlers
  -> Nullable MouseEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onclose"
prim__onclose : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onclose = v}"
prim__setOnclose :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oncontextmenu"
prim__oncontextmenu :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.oncontextmenu = v}"
prim__setOncontextmenu :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oncuechange"
prim__oncuechange : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.oncuechange = v}"
prim__setOncuechange :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ondblclick"
prim__ondblclick : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.ondblclick = v}"
prim__setOndblclick :
     GlobalEventHandlers
  -> Nullable MouseEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ondrag"
prim__ondrag : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ondrag = v}"
prim__setOndrag :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ondragend"
prim__ondragend : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ondragend = v}"
prim__setOndragend :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ondragenter"
prim__ondragenter : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ondragenter = v}"
prim__setOndragenter :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ondragleave"
prim__ondragleave : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ondragleave = v}"
prim__setOndragleave :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ondragover"
prim__ondragover : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ondragover = v}"
prim__setOndragover :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ondragstart"
prim__ondragstart : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ondragstart = v}"
prim__setOndragstart :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ondrop"
prim__ondrop : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ondrop = v}"
prim__setOndrop :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ondurationchange"
prim__ondurationchange :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ondurationchange = v}"
prim__setOndurationchange :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onemptied"
prim__onemptied : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onemptied = v}"
prim__setOnemptied :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onended"
prim__onended : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onended = v}"
prim__setOnended :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onerror"
prim__onerror :
     GlobalEventHandlers
  -> PrimIO (Nullable OnErrorEventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onerror = v}"
prim__setOnerror :
     GlobalEventHandlers
  -> Nullable OnErrorEventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onfocus"
prim__onfocus : GlobalEventHandlers -> PrimIO (Nullable FocusEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onfocus = v}"
prim__setOnfocus :
     GlobalEventHandlers
  -> Nullable FocusEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onformdata"
prim__onformdata : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onformdata = v}"
prim__setOnformdata :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oninput"
prim__oninput : GlobalEventHandlers -> PrimIO (Nullable InputEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.oninput = v}"
prim__setOninput :
     GlobalEventHandlers
  -> Nullable InputEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oninvalid"
prim__oninvalid : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.oninvalid = v}"
prim__setOninvalid :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onkeydown"
prim__onkeydown : GlobalEventHandlers -> PrimIO (Nullable KeyboardEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onkeydown = v}"
prim__setOnkeydown :
     GlobalEventHandlers
  -> Nullable KeyboardEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onkeypress"
prim__onkeypress : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onkeypress = v}"
prim__setOnkeypress :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onkeyup"
prim__onkeyup : GlobalEventHandlers -> PrimIO (Nullable KeyboardEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onkeyup = v}"
prim__setOnkeyup :
     GlobalEventHandlers
  -> Nullable KeyboardEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onload"
prim__onload : GlobalEventHandlers -> PrimIO (Nullable UIEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onload = v}"
prim__setOnload : GlobalEventHandlers -> Nullable UIEventHandler -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onloadeddata"
prim__onloadeddata :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onloadeddata = v}"
prim__setOnloadeddata :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onloadedmetadata"
prim__onloadedmetadata :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onloadedmetadata = v}"
prim__setOnloadedmetadata :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onloadstart"
prim__onloadstart : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
prim__setOnloadstart :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmousedown"
prim__onmousedown : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onmousedown = v}"
prim__setOnmousedown :
     GlobalEventHandlers
  -> Nullable MouseEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmouseenter"
prim__onmouseenter : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onmouseenter = v}"
prim__setOnmouseenter :
     GlobalEventHandlers
  -> Nullable MouseEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmouseleave"
prim__onmouseleave : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onmouseleave = v}"
prim__setOnmouseleave :
     GlobalEventHandlers
  -> Nullable MouseEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmousemove"
prim__onmousemove : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onmousemove = v}"
prim__setOnmousemove :
     GlobalEventHandlers
  -> Nullable MouseEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmouseout"
prim__onmouseout : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onmouseout = v}"
prim__setOnmouseout :
     GlobalEventHandlers
  -> Nullable MouseEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmouseover"
prim__onmouseover : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onmouseover = v}"
prim__setOnmouseover :
     GlobalEventHandlers
  -> Nullable MouseEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmouseup"
prim__onmouseup : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onmouseup = v}"
prim__setOnmouseup :
     GlobalEventHandlers
  -> Nullable MouseEventHandler
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onpause"
prim__onpause : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onpause = v}"
prim__setOnpause :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onplay"
prim__onplay : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onplay = v}"
prim__setOnplay :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onplaying"
prim__onplaying : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onplaying = v}"
prim__setOnplaying :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onprogress"
prim__onprogress : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
prim__setOnprogress :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onratechange"
prim__onratechange :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onratechange = v}"
prim__setOnratechange :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onreset"
prim__onreset : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onreset = v}"
prim__setOnreset :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onresize"
prim__onresize : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onresize = v}"
prim__setOnresize :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onscroll"
prim__onscroll : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onscroll = v}"
prim__setOnscroll :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onsecuritypolicyviolation"
prim__onsecuritypolicyviolation :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onsecuritypolicyviolation = v}"
prim__setOnsecuritypolicyviolation :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onseeked"
prim__onseeked : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onseeked = v}"
prim__setOnseeked :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onseeking"
prim__onseeking : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onseeking = v}"
prim__setOnseeking :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onselect"
prim__onselect : GlobalEventHandlers -> PrimIO (Nullable UIEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onselect = v}"
prim__setOnselect : GlobalEventHandlers -> Nullable UIEventHandler -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onslotchange"
prim__onslotchange :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onslotchange = v}"
prim__setOnslotchange :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onstalled"
prim__onstalled : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onstalled = v}"
prim__setOnstalled :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onsubmit"
prim__onsubmit : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onsubmit = v}"
prim__setOnsubmit :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onsuspend"
prim__onsuspend : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onsuspend = v}"
prim__setOnsuspend :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ontimeupdate"
prim__ontimeupdate :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ontimeupdate = v}"
prim__setOntimeupdate :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ontoggle"
prim__ontoggle : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ontoggle = v}"
prim__setOntoggle :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onvolumechange"
prim__onvolumechange :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onvolumechange = v}"
prim__setOnvolumechange :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onwaiting"
prim__onwaiting : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onwaiting = v}"
prim__setOnwaiting :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onwebkitanimationend"
prim__onwebkitanimationend :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onwebkitanimationend = v}"
prim__setOnwebkitanimationend :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onwebkitanimationiteration"
prim__onwebkitanimationiteration :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onwebkitanimationiteration = v}"
prim__setOnwebkitanimationiteration :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onwebkitanimationstart"
prim__onwebkitanimationstart :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onwebkitanimationstart = v}"
prim__setOnwebkitanimationstart :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onwebkittransitionend"
prim__onwebkittransitionend :
     GlobalEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onwebkittransitionend = v}"
prim__setOnwebkittransitionend :
     GlobalEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onwheel"
prim__onwheel : GlobalEventHandlers -> PrimIO (Nullable WheelEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onwheel = v}"
prim__setOnwheel :
     GlobalEventHandlers
  -> Nullable WheelEventHandler
  -> PrimIO ()



export
onabort :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe UIEventHandler
onabort v = fromNullablePrim
              "GlobalEventHandlers.getonabort"
              prim__onabort
              prim__setOnabort
              (cast {to = GlobalEventHandlers} v)


export
onauxclick :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe MouseEventHandler
onauxclick v = fromNullablePrim
                 "GlobalEventHandlers.getonauxclick"
                 prim__onauxclick
                 prim__setOnauxclick
                 (cast {to = GlobalEventHandlers} v)


export
onblur :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe FocusEventHandler
onblur v = fromNullablePrim
             "GlobalEventHandlers.getonblur"
             prim__onblur
             prim__setOnblur
             (cast {to = GlobalEventHandlers} v)


export
oncancel :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
oncancel v = fromNullablePrim
               "GlobalEventHandlers.getoncancel"
               prim__oncancel
               prim__setOncancel
               (cast {to = GlobalEventHandlers} v)


export
oncanplay :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
oncanplay v = fromNullablePrim
                "GlobalEventHandlers.getoncanplay"
                prim__oncanplay
                prim__setOncanplay
                (cast {to = GlobalEventHandlers} v)


export
oncanplaythrough :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
oncanplaythrough v = fromNullablePrim
                       "GlobalEventHandlers.getoncanplaythrough"
                       prim__oncanplaythrough
                       prim__setOncanplaythrough
                       (cast {to = GlobalEventHandlers} v)


export
onchange :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onchange v = fromNullablePrim
               "GlobalEventHandlers.getonchange"
               prim__onchange
               prim__setOnchange
               (cast {to = GlobalEventHandlers} v)


export
onclick :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe MouseEventHandler
onclick v = fromNullablePrim
              "GlobalEventHandlers.getonclick"
              prim__onclick
              prim__setOnclick
              (cast {to = GlobalEventHandlers} v)


export
onclose :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onclose v = fromNullablePrim
              "GlobalEventHandlers.getonclose"
              prim__onclose
              prim__setOnclose
              (cast {to = GlobalEventHandlers} v)


export
oncontextmenu :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
oncontextmenu v = fromNullablePrim
                    "GlobalEventHandlers.getoncontextmenu"
                    prim__oncontextmenu
                    prim__setOncontextmenu
                    (cast {to = GlobalEventHandlers} v)


export
oncuechange :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
oncuechange v = fromNullablePrim
                  "GlobalEventHandlers.getoncuechange"
                  prim__oncuechange
                  prim__setOncuechange
                  (cast {to = GlobalEventHandlers} v)


export
ondblclick :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe MouseEventHandler
ondblclick v = fromNullablePrim
                 "GlobalEventHandlers.getondblclick"
                 prim__ondblclick
                 prim__setOndblclick
                 (cast {to = GlobalEventHandlers} v)


export
ondrag :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
ondrag v = fromNullablePrim
             "GlobalEventHandlers.getondrag"
             prim__ondrag
             prim__setOndrag
             (cast {to = GlobalEventHandlers} v)


export
ondragend :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
ondragend v = fromNullablePrim
                "GlobalEventHandlers.getondragend"
                prim__ondragend
                prim__setOndragend
                (cast {to = GlobalEventHandlers} v)


export
ondragenter :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
ondragenter v = fromNullablePrim
                  "GlobalEventHandlers.getondragenter"
                  prim__ondragenter
                  prim__setOndragenter
                  (cast {to = GlobalEventHandlers} v)


export
ondragleave :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
ondragleave v = fromNullablePrim
                  "GlobalEventHandlers.getondragleave"
                  prim__ondragleave
                  prim__setOndragleave
                  (cast {to = GlobalEventHandlers} v)


export
ondragover :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
ondragover v = fromNullablePrim
                 "GlobalEventHandlers.getondragover"
                 prim__ondragover
                 prim__setOndragover
                 (cast {to = GlobalEventHandlers} v)


export
ondragstart :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
ondragstart v = fromNullablePrim
                  "GlobalEventHandlers.getondragstart"
                  prim__ondragstart
                  prim__setOndragstart
                  (cast {to = GlobalEventHandlers} v)


export
ondrop :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
ondrop v = fromNullablePrim
             "GlobalEventHandlers.getondrop"
             prim__ondrop
             prim__setOndrop
             (cast {to = GlobalEventHandlers} v)


export
ondurationchange :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
ondurationchange v = fromNullablePrim
                       "GlobalEventHandlers.getondurationchange"
                       prim__ondurationchange
                       prim__setOndurationchange
                       (cast {to = GlobalEventHandlers} v)


export
onemptied :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onemptied v = fromNullablePrim
                "GlobalEventHandlers.getonemptied"
                prim__onemptied
                prim__setOnemptied
                (cast {to = GlobalEventHandlers} v)


export
onended :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onended v = fromNullablePrim
              "GlobalEventHandlers.getonended"
              prim__onended
              prim__setOnended
              (cast {to = GlobalEventHandlers} v)


export
onerror :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe OnErrorEventHandlerNonNull
onerror v = fromNullablePrim
              "GlobalEventHandlers.getonerror"
              prim__onerror
              prim__setOnerror
              (cast {to = GlobalEventHandlers} v)


export
onfocus :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe FocusEventHandler
onfocus v = fromNullablePrim
              "GlobalEventHandlers.getonfocus"
              prim__onfocus
              prim__setOnfocus
              (cast {to = GlobalEventHandlers} v)


export
onformdata :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onformdata v = fromNullablePrim
                 "GlobalEventHandlers.getonformdata"
                 prim__onformdata
                 prim__setOnformdata
                 (cast {to = GlobalEventHandlers} v)


export
oninput :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe InputEventHandler
oninput v = fromNullablePrim
              "GlobalEventHandlers.getoninput"
              prim__oninput
              prim__setOninput
              (cast {to = GlobalEventHandlers} v)


export
oninvalid :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
oninvalid v = fromNullablePrim
                "GlobalEventHandlers.getoninvalid"
                prim__oninvalid
                prim__setOninvalid
                (cast {to = GlobalEventHandlers} v)


export
onkeydown :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe KeyboardEventHandler
onkeydown v = fromNullablePrim
                "GlobalEventHandlers.getonkeydown"
                prim__onkeydown
                prim__setOnkeydown
                (cast {to = GlobalEventHandlers} v)


export
onkeypress :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onkeypress v = fromNullablePrim
                 "GlobalEventHandlers.getonkeypress"
                 prim__onkeypress
                 prim__setOnkeypress
                 (cast {to = GlobalEventHandlers} v)


export
onkeyup :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe KeyboardEventHandler
onkeyup v = fromNullablePrim
              "GlobalEventHandlers.getonkeyup"
              prim__onkeyup
              prim__setOnkeyup
              (cast {to = GlobalEventHandlers} v)


export
onload :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe UIEventHandler
onload v = fromNullablePrim
             "GlobalEventHandlers.getonload"
             prim__onload
             prim__setOnload
             (cast {to = GlobalEventHandlers} v)


export
onloadeddata :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onloadeddata v = fromNullablePrim
                   "GlobalEventHandlers.getonloadeddata"
                   prim__onloadeddata
                   prim__setOnloadeddata
                   (cast {to = GlobalEventHandlers} v)


export
onloadedmetadata :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onloadedmetadata v = fromNullablePrim
                       "GlobalEventHandlers.getonloadedmetadata"
                       prim__onloadedmetadata
                       prim__setOnloadedmetadata
                       (cast {to = GlobalEventHandlers} v)


export
onloadstart :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onloadstart v = fromNullablePrim
                  "GlobalEventHandlers.getonloadstart"
                  prim__onloadstart
                  prim__setOnloadstart
                  (cast {to = GlobalEventHandlers} v)


export
onmousedown :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe MouseEventHandler
onmousedown v = fromNullablePrim
                  "GlobalEventHandlers.getonmousedown"
                  prim__onmousedown
                  prim__setOnmousedown
                  (cast {to = GlobalEventHandlers} v)


export
onmouseenter :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe MouseEventHandler
onmouseenter v = fromNullablePrim
                   "GlobalEventHandlers.getonmouseenter"
                   prim__onmouseenter
                   prim__setOnmouseenter
                   (cast {to = GlobalEventHandlers} v)


export
onmouseleave :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe MouseEventHandler
onmouseleave v = fromNullablePrim
                   "GlobalEventHandlers.getonmouseleave"
                   prim__onmouseleave
                   prim__setOnmouseleave
                   (cast {to = GlobalEventHandlers} v)


export
onmousemove :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe MouseEventHandler
onmousemove v = fromNullablePrim
                  "GlobalEventHandlers.getonmousemove"
                  prim__onmousemove
                  prim__setOnmousemove
                  (cast {to = GlobalEventHandlers} v)


export
onmouseout :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe MouseEventHandler
onmouseout v = fromNullablePrim
                 "GlobalEventHandlers.getonmouseout"
                 prim__onmouseout
                 prim__setOnmouseout
                 (cast {to = GlobalEventHandlers} v)


export
onmouseover :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe MouseEventHandler
onmouseover v = fromNullablePrim
                  "GlobalEventHandlers.getonmouseover"
                  prim__onmouseover
                  prim__setOnmouseover
                  (cast {to = GlobalEventHandlers} v)


export
onmouseup :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe MouseEventHandler
onmouseup v = fromNullablePrim
                "GlobalEventHandlers.getonmouseup"
                prim__onmouseup
                prim__setOnmouseup
                (cast {to = GlobalEventHandlers} v)


export
onpause :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onpause v = fromNullablePrim
              "GlobalEventHandlers.getonpause"
              prim__onpause
              prim__setOnpause
              (cast {to = GlobalEventHandlers} v)


export
onplay :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onplay v = fromNullablePrim
             "GlobalEventHandlers.getonplay"
             prim__onplay
             prim__setOnplay
             (cast {to = GlobalEventHandlers} v)


export
onplaying :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onplaying v = fromNullablePrim
                "GlobalEventHandlers.getonplaying"
                prim__onplaying
                prim__setOnplaying
                (cast {to = GlobalEventHandlers} v)


export
onprogress :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onprogress v = fromNullablePrim
                 "GlobalEventHandlers.getonprogress"
                 prim__onprogress
                 prim__setOnprogress
                 (cast {to = GlobalEventHandlers} v)


export
onratechange :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onratechange v = fromNullablePrim
                   "GlobalEventHandlers.getonratechange"
                   prim__onratechange
                   prim__setOnratechange
                   (cast {to = GlobalEventHandlers} v)


export
onreset :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onreset v = fromNullablePrim
              "GlobalEventHandlers.getonreset"
              prim__onreset
              prim__setOnreset
              (cast {to = GlobalEventHandlers} v)


export
onresize :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onresize v = fromNullablePrim
               "GlobalEventHandlers.getonresize"
               prim__onresize
               prim__setOnresize
               (cast {to = GlobalEventHandlers} v)


export
onscroll :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onscroll v = fromNullablePrim
               "GlobalEventHandlers.getonscroll"
               prim__onscroll
               prim__setOnscroll
               (cast {to = GlobalEventHandlers} v)


export
onsecuritypolicyviolation :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onsecuritypolicyviolation v = fromNullablePrim
                                "GlobalEventHandlers.getonsecuritypolicyviolation"
                                prim__onsecuritypolicyviolation
                                prim__setOnsecuritypolicyviolation
                                (cast {to = GlobalEventHandlers} v)


export
onseeked :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onseeked v = fromNullablePrim
               "GlobalEventHandlers.getonseeked"
               prim__onseeked
               prim__setOnseeked
               (cast {to = GlobalEventHandlers} v)


export
onseeking :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onseeking v = fromNullablePrim
                "GlobalEventHandlers.getonseeking"
                prim__onseeking
                prim__setOnseeking
                (cast {to = GlobalEventHandlers} v)


export
onselect :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe UIEventHandler
onselect v = fromNullablePrim
               "GlobalEventHandlers.getonselect"
               prim__onselect
               prim__setOnselect
               (cast {to = GlobalEventHandlers} v)


export
onslotchange :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onslotchange v = fromNullablePrim
                   "GlobalEventHandlers.getonslotchange"
                   prim__onslotchange
                   prim__setOnslotchange
                   (cast {to = GlobalEventHandlers} v)


export
onstalled :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onstalled v = fromNullablePrim
                "GlobalEventHandlers.getonstalled"
                prim__onstalled
                prim__setOnstalled
                (cast {to = GlobalEventHandlers} v)


export
onsubmit :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onsubmit v = fromNullablePrim
               "GlobalEventHandlers.getonsubmit"
               prim__onsubmit
               prim__setOnsubmit
               (cast {to = GlobalEventHandlers} v)


export
onsuspend :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onsuspend v = fromNullablePrim
                "GlobalEventHandlers.getonsuspend"
                prim__onsuspend
                prim__setOnsuspend
                (cast {to = GlobalEventHandlers} v)


export
ontimeupdate :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
ontimeupdate v = fromNullablePrim
                   "GlobalEventHandlers.getontimeupdate"
                   prim__ontimeupdate
                   prim__setOntimeupdate
                   (cast {to = GlobalEventHandlers} v)


export
ontoggle :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
ontoggle v = fromNullablePrim
               "GlobalEventHandlers.getontoggle"
               prim__ontoggle
               prim__setOntoggle
               (cast {to = GlobalEventHandlers} v)


export
onvolumechange :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onvolumechange v = fromNullablePrim
                     "GlobalEventHandlers.getonvolumechange"
                     prim__onvolumechange
                     prim__setOnvolumechange
                     (cast {to = GlobalEventHandlers} v)


export
onwaiting :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onwaiting v = fromNullablePrim
                "GlobalEventHandlers.getonwaiting"
                prim__onwaiting
                prim__setOnwaiting
                (cast {to = GlobalEventHandlers} v)


export
onwebkitanimationend :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onwebkitanimationend v = fromNullablePrim
                           "GlobalEventHandlers.getonwebkitanimationend"
                           prim__onwebkitanimationend
                           prim__setOnwebkitanimationend
                           (cast {to = GlobalEventHandlers} v)


export
onwebkitanimationiteration :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onwebkitanimationiteration v = fromNullablePrim
                                 "GlobalEventHandlers.getonwebkitanimationiteration"
                                 prim__onwebkitanimationiteration
                                 prim__setOnwebkitanimationiteration
                                 (cast {to = GlobalEventHandlers} v)


export
onwebkitanimationstart :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onwebkitanimationstart v = fromNullablePrim
                             "GlobalEventHandlers.getonwebkitanimationstart"
                             prim__onwebkitanimationstart
                             prim__setOnwebkitanimationstart
                             (cast {to = GlobalEventHandlers} v)


export
onwebkittransitionend :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onwebkittransitionend v = fromNullablePrim
                            "GlobalEventHandlers.getonwebkittransitionend"
                            prim__onwebkittransitionend
                            prim__setOnwebkittransitionend
                            (cast {to = GlobalEventHandlers} v)


export
onwheel :
     {auto _ : Cast t GlobalEventHandlers}
  -> t
  -> Attribute False Maybe WheelEventHandler
onwheel v = fromNullablePrim
              "GlobalEventHandlers.getonwheel"
              prim__onwheel
              prim__setOnwheel
              (cast {to = GlobalEventHandlers} v)

