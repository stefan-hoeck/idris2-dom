module Web.Raw.MediaTrackCapabilities

import JS
import Web.Types.DoubleRange
import Web.Types.MediaTrackCapabilities
import Web.Types.ULongRange


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o)=> ({width: a,height: b,aspectRatio: c,frameRate: d,facingMode: e,resizeMode: f,sampleRate: g,sampleSize: h,echoCancellation: i,autoGainControl: j,noiseSuppression: k,latency: l,channelCount: m,deviceId: n,groupId: o})"
prim__new :
     UndefOr ULongRange
  -> UndefOr ULongRange
  -> UndefOr DoubleRange
  -> UndefOr DoubleRange
  -> UndefOr (Array String)
  -> UndefOr (Array String)
  -> UndefOr ULongRange
  -> UndefOr ULongRange
  -> UndefOr (Array Boolean)
  -> UndefOr (Array Boolean)
  -> UndefOr (Array Boolean)
  -> UndefOr DoubleRange
  -> UndefOr ULongRange
  -> UndefOr String
  -> UndefOr String
  -> PrimIO MediaTrackCapabilities


export
%foreign "browser:lambda:x=>x.aspectRatio"
prim__aspectRatio : MediaTrackCapabilities -> PrimIO (UndefOr DoubleRange)



export
%foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
prim__setAspectRatio :
     MediaTrackCapabilities
  -> UndefOr DoubleRange
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.autoGainControl"
prim__autoGainControl :
     MediaTrackCapabilities
  -> PrimIO (UndefOr (Array Boolean))



export
%foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
prim__setAutoGainControl :
     MediaTrackCapabilities
  -> UndefOr (Array Boolean)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.channelCount"
prim__channelCount : MediaTrackCapabilities -> PrimIO (UndefOr ULongRange)



export
%foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
prim__setChannelCount :
     MediaTrackCapabilities
  -> UndefOr ULongRange
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.deviceId"
prim__deviceId : MediaTrackCapabilities -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
prim__setDeviceId : MediaTrackCapabilities -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.echoCancellation"
prim__echoCancellation :
     MediaTrackCapabilities
  -> PrimIO (UndefOr (Array Boolean))



export
%foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
prim__setEchoCancellation :
     MediaTrackCapabilities
  -> UndefOr (Array Boolean)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.facingMode"
prim__facingMode : MediaTrackCapabilities -> PrimIO (UndefOr (Array String))



export
%foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
prim__setFacingMode :
     MediaTrackCapabilities
  -> UndefOr (Array String)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.frameRate"
prim__frameRate : MediaTrackCapabilities -> PrimIO (UndefOr DoubleRange)



export
%foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
prim__setFrameRate : MediaTrackCapabilities -> UndefOr DoubleRange -> PrimIO ()



export
%foreign "browser:lambda:x=>x.groupId"
prim__groupId : MediaTrackCapabilities -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.groupId = v}"
prim__setGroupId : MediaTrackCapabilities -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.height"
prim__height : MediaTrackCapabilities -> PrimIO (UndefOr ULongRange)



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : MediaTrackCapabilities -> UndefOr ULongRange -> PrimIO ()



export
%foreign "browser:lambda:x=>x.latency"
prim__latency : MediaTrackCapabilities -> PrimIO (UndefOr DoubleRange)



export
%foreign "browser:lambda:(x,v)=>{x.latency = v}"
prim__setLatency : MediaTrackCapabilities -> UndefOr DoubleRange -> PrimIO ()



export
%foreign "browser:lambda:x=>x.noiseSuppression"
prim__noiseSuppression :
     MediaTrackCapabilities
  -> PrimIO (UndefOr (Array Boolean))



export
%foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
prim__setNoiseSuppression :
     MediaTrackCapabilities
  -> UndefOr (Array Boolean)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.resizeMode"
prim__resizeMode : MediaTrackCapabilities -> PrimIO (UndefOr (Array String))



export
%foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
prim__setResizeMode :
     MediaTrackCapabilities
  -> UndefOr (Array String)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sampleRate"
prim__sampleRate : MediaTrackCapabilities -> PrimIO (UndefOr ULongRange)



export
%foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
prim__setSampleRate : MediaTrackCapabilities -> UndefOr ULongRange -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sampleSize"
prim__sampleSize : MediaTrackCapabilities -> PrimIO (UndefOr ULongRange)



export
%foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
prim__setSampleSize : MediaTrackCapabilities -> UndefOr ULongRange -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : MediaTrackCapabilities -> PrimIO (UndefOr ULongRange)



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : MediaTrackCapabilities -> UndefOr ULongRange -> PrimIO ()



export
new' :
     {auto _ : Cast t1 ULongRange}
  -> {auto _ : Cast t2 ULongRange}
  -> {auto _ : Cast t3 DoubleRange}
  -> {auto _ : Cast t4 DoubleRange}
  -> {auto _ : Cast t7 ULongRange}
  -> {auto _ : Cast t8 ULongRange}
  -> {auto _ : Cast t12 DoubleRange}
  -> {auto _ : Cast t13 ULongRange}
  -> (width : Optional t1)
  -> (height : Optional t2)
  -> (aspectRatio : Optional t3)
  -> (frameRate : Optional t4)
  -> (facingMode : Optional (Array String))
  -> (resizeMode : Optional (Array String))
  -> (sampleRate : Optional t7)
  -> (sampleSize : Optional t8)
  -> (echoCancellation : Optional (Array Boolean))
  -> (autoGainControl : Optional (Array Boolean))
  -> (noiseSuppression : Optional (Array Boolean))
  -> (latency : Optional t12)
  -> (channelCount : Optional t13)
  -> (deviceId : Optional String)
  -> (groupId : Optional String)
  -> JSIO MediaTrackCapabilities
new' a b c d e f g h i j k l m n o = primJS $
  MediaTrackCapabilities.prim__new
    (optUp a)
    (optUp b)
    (optUp c)
    (optUp d)
    (toFFI e)
    (toFFI f)
    (optUp g)
    (optUp h)
    (toFFI i)
    (toFFI j)
    (toFFI k)
    (optUp l)
    (optUp m)
    (toFFI n)
    (toFFI o)

export
new : JSIO MediaTrackCapabilities
new = primJS $
  MediaTrackCapabilities.prim__new
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef


export
aspectRatio :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional DoubleRange
aspectRatio v = fromUndefOrPrimNoDefault
                  "MediaTrackCapabilities.getaspectRatio"
                  prim__aspectRatio
                  prim__setAspectRatio
                  (cast {to = MediaTrackCapabilities} v)


export
autoGainControl :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional (Array Boolean)
autoGainControl v = fromUndefOrPrimNoDefault
                      "MediaTrackCapabilities.getautoGainControl"
                      prim__autoGainControl
                      prim__setAutoGainControl
                      (cast {to = MediaTrackCapabilities} v)


export
channelCount :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional ULongRange
channelCount v = fromUndefOrPrimNoDefault
                   "MediaTrackCapabilities.getchannelCount"
                   prim__channelCount
                   prim__setChannelCount
                   (cast {to = MediaTrackCapabilities} v)


export
deviceId :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional String
deviceId v = fromUndefOrPrimNoDefault
               "MediaTrackCapabilities.getdeviceId"
               prim__deviceId
               prim__setDeviceId
               (cast {to = MediaTrackCapabilities} v)


export
echoCancellation :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional (Array Boolean)
echoCancellation v = fromUndefOrPrimNoDefault
                       "MediaTrackCapabilities.getechoCancellation"
                       prim__echoCancellation
                       prim__setEchoCancellation
                       (cast {to = MediaTrackCapabilities} v)


export
facingMode :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional (Array String)
facingMode v = fromUndefOrPrimNoDefault
                 "MediaTrackCapabilities.getfacingMode"
                 prim__facingMode
                 prim__setFacingMode
                 (cast {to = MediaTrackCapabilities} v)


export
frameRate :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional DoubleRange
frameRate v = fromUndefOrPrimNoDefault
                "MediaTrackCapabilities.getframeRate"
                prim__frameRate
                prim__setFrameRate
                (cast {to = MediaTrackCapabilities} v)


export
groupId :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional String
groupId v = fromUndefOrPrimNoDefault
              "MediaTrackCapabilities.getgroupId"
              prim__groupId
              prim__setGroupId
              (cast {to = MediaTrackCapabilities} v)


export
height :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional ULongRange
height v = fromUndefOrPrimNoDefault
             "MediaTrackCapabilities.getheight"
             prim__height
             prim__setHeight
             (cast {to = MediaTrackCapabilities} v)


export
latency :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional DoubleRange
latency v = fromUndefOrPrimNoDefault
              "MediaTrackCapabilities.getlatency"
              prim__latency
              prim__setLatency
              (cast {to = MediaTrackCapabilities} v)


export
noiseSuppression :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional (Array Boolean)
noiseSuppression v = fromUndefOrPrimNoDefault
                       "MediaTrackCapabilities.getnoiseSuppression"
                       prim__noiseSuppression
                       prim__setNoiseSuppression
                       (cast {to = MediaTrackCapabilities} v)


export
resizeMode :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional (Array String)
resizeMode v = fromUndefOrPrimNoDefault
                 "MediaTrackCapabilities.getresizeMode"
                 prim__resizeMode
                 prim__setResizeMode
                 (cast {to = MediaTrackCapabilities} v)


export
sampleRate :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional ULongRange
sampleRate v = fromUndefOrPrimNoDefault
                 "MediaTrackCapabilities.getsampleRate"
                 prim__sampleRate
                 prim__setSampleRate
                 (cast {to = MediaTrackCapabilities} v)


export
sampleSize :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional ULongRange
sampleSize v = fromUndefOrPrimNoDefault
                 "MediaTrackCapabilities.getsampleSize"
                 prim__sampleSize
                 prim__setSampleSize
                 (cast {to = MediaTrackCapabilities} v)


export
width :
     {auto _ : Cast t MediaTrackCapabilities}
  -> t
  -> Attribute False Optional ULongRange
width v = fromUndefOrPrimNoDefault
            "MediaTrackCapabilities.getwidth"
            prim__width
            prim__setWidth
            (cast {to = MediaTrackCapabilities} v)
