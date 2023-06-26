module Web.Raw.MediaTrackSupportedConstraints

import JS
import Web.Types.MediaTrackSupportedConstraints


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o)=> ({width: a,height: b,aspectRatio: c,frameRate: d,facingMode: e,resizeMode: f,sampleRate: g,sampleSize: h,echoCancellation: i,autoGainControl: j,noiseSuppression: k,latency: l,channelCount: m,deviceId: n,groupId: o})"
prim__new :
     UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> PrimIO MediaTrackSupportedConstraints


export
%foreign "browser:lambda:x=>x.aspectRatio"
prim__aspectRatio : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
prim__setAspectRatio :
     MediaTrackSupportedConstraints
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.autoGainControl"
prim__autoGainControl :
     MediaTrackSupportedConstraints
  -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
prim__setAutoGainControl :
     MediaTrackSupportedConstraints
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.channelCount"
prim__channelCount : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
prim__setChannelCount :
     MediaTrackSupportedConstraints
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.deviceId"
prim__deviceId : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
prim__setDeviceId :
     MediaTrackSupportedConstraints
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.echoCancellation"
prim__echoCancellation :
     MediaTrackSupportedConstraints
  -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
prim__setEchoCancellation :
     MediaTrackSupportedConstraints
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.facingMode"
prim__facingMode : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
prim__setFacingMode :
     MediaTrackSupportedConstraints
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.frameRate"
prim__frameRate : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
prim__setFrameRate :
     MediaTrackSupportedConstraints
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.groupId"
prim__groupId : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.groupId = v}"
prim__setGroupId :
     MediaTrackSupportedConstraints
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.height"
prim__height : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : MediaTrackSupportedConstraints -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.latency"
prim__latency : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.latency = v}"
prim__setLatency :
     MediaTrackSupportedConstraints
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.noiseSuppression"
prim__noiseSuppression :
     MediaTrackSupportedConstraints
  -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
prim__setNoiseSuppression :
     MediaTrackSupportedConstraints
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.resizeMode"
prim__resizeMode : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
prim__setResizeMode :
     MediaTrackSupportedConstraints
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sampleRate"
prim__sampleRate : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
prim__setSampleRate :
     MediaTrackSupportedConstraints
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sampleSize"
prim__sampleSize : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
prim__setSampleSize :
     MediaTrackSupportedConstraints
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : MediaTrackSupportedConstraints -> UndefOr Boolean -> PrimIO ()



export
new' :
     (width : Optional Bool)
  -> (height : Optional Bool)
  -> (aspectRatio : Optional Bool)
  -> (frameRate : Optional Bool)
  -> (facingMode : Optional Bool)
  -> (resizeMode : Optional Bool)
  -> (sampleRate : Optional Bool)
  -> (sampleSize : Optional Bool)
  -> (echoCancellation : Optional Bool)
  -> (autoGainControl : Optional Bool)
  -> (noiseSuppression : Optional Bool)
  -> (latency : Optional Bool)
  -> (channelCount : Optional Bool)
  -> (deviceId : Optional Bool)
  -> (groupId : Optional Bool)
  -> JSIO MediaTrackSupportedConstraints
new' a b c d e f g h i j k l m n o = primJS $
  MediaTrackSupportedConstraints.prim__new
    (toFFI a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)
    (toFFI g)
    (toFFI h)
    (toFFI i)
    (toFFI j)
    (toFFI k)
    (toFFI l)
    (toFFI m)
    (toFFI n)
    (toFFI o)

export
new : JSIO MediaTrackSupportedConstraints
new = primJS $
  MediaTrackSupportedConstraints.prim__new
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
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
aspectRatio v = fromUndefOrPrim
                  "MediaTrackSupportedConstraints.getaspectRatio"
                  prim__aspectRatio
                  prim__setAspectRatio
                  True
                  (cast {to = MediaTrackSupportedConstraints} v)


export
autoGainControl :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
autoGainControl v = fromUndefOrPrim
                      "MediaTrackSupportedConstraints.getautoGainControl"
                      prim__autoGainControl
                      prim__setAutoGainControl
                      True
                      (cast {to = MediaTrackSupportedConstraints} v)


export
channelCount :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
channelCount v = fromUndefOrPrim
                   "MediaTrackSupportedConstraints.getchannelCount"
                   prim__channelCount
                   prim__setChannelCount
                   True
                   (cast {to = MediaTrackSupportedConstraints} v)


export
deviceId :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
deviceId v = fromUndefOrPrim
               "MediaTrackSupportedConstraints.getdeviceId"
               prim__deviceId
               prim__setDeviceId
               True
               (cast {to = MediaTrackSupportedConstraints} v)


export
echoCancellation :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
echoCancellation v = fromUndefOrPrim
                       "MediaTrackSupportedConstraints.getechoCancellation"
                       prim__echoCancellation
                       prim__setEchoCancellation
                       True
                       (cast {to = MediaTrackSupportedConstraints} v)


export
facingMode :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
facingMode v = fromUndefOrPrim
                 "MediaTrackSupportedConstraints.getfacingMode"
                 prim__facingMode
                 prim__setFacingMode
                 True
                 (cast {to = MediaTrackSupportedConstraints} v)


export
frameRate :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
frameRate v = fromUndefOrPrim
                "MediaTrackSupportedConstraints.getframeRate"
                prim__frameRate
                prim__setFrameRate
                True
                (cast {to = MediaTrackSupportedConstraints} v)


export
groupId :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
groupId v = fromUndefOrPrim
              "MediaTrackSupportedConstraints.getgroupId"
              prim__groupId
              prim__setGroupId
              True
              (cast {to = MediaTrackSupportedConstraints} v)


export
height :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
height v = fromUndefOrPrim
             "MediaTrackSupportedConstraints.getheight"
             prim__height
             prim__setHeight
             True
             (cast {to = MediaTrackSupportedConstraints} v)


export
latency :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
latency v = fromUndefOrPrim
              "MediaTrackSupportedConstraints.getlatency"
              prim__latency
              prim__setLatency
              True
              (cast {to = MediaTrackSupportedConstraints} v)


export
noiseSuppression :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
noiseSuppression v = fromUndefOrPrim
                       "MediaTrackSupportedConstraints.getnoiseSuppression"
                       prim__noiseSuppression
                       prim__setNoiseSuppression
                       True
                       (cast {to = MediaTrackSupportedConstraints} v)


export
resizeMode :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
resizeMode v = fromUndefOrPrim
                 "MediaTrackSupportedConstraints.getresizeMode"
                 prim__resizeMode
                 prim__setResizeMode
                 True
                 (cast {to = MediaTrackSupportedConstraints} v)


export
sampleRate :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
sampleRate v = fromUndefOrPrim
                 "MediaTrackSupportedConstraints.getsampleRate"
                 prim__sampleRate
                 prim__setSampleRate
                 True
                 (cast {to = MediaTrackSupportedConstraints} v)


export
sampleSize :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
sampleSize v = fromUndefOrPrim
                 "MediaTrackSupportedConstraints.getsampleSize"
                 prim__sampleSize
                 prim__setSampleSize
                 True
                 (cast {to = MediaTrackSupportedConstraints} v)


export
width :
     {auto _ : Cast t MediaTrackSupportedConstraints}
  -> t
  -> Attribute True Optional Bool
width v = fromUndefOrPrim
            "MediaTrackSupportedConstraints.getwidth"
            prim__width
            prim__setWidth
            True
            (cast {to = MediaTrackSupportedConstraints} v)

