module Web.Raw.MediaTrackSettings

import JS
import Web.Types.MediaTrackSettings


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o)=> ({width: a,height: b,aspectRatio: c,frameRate: d,facingMode: e,resizeMode: f,sampleRate: g,sampleSize: h,echoCancellation: i,autoGainControl: j,noiseSuppression: k,latency: l,channelCount: m,deviceId: n,groupId: o})"
prim__new :
     UndefOr Int32
  -> UndefOr Int32
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr String
  -> UndefOr String
  -> UndefOr Int32
  -> UndefOr Int32
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Double
  -> UndefOr Int32
  -> UndefOr String
  -> UndefOr String
  -> PrimIO MediaTrackSettings


export
%foreign "browser:lambda:x=>x.aspectRatio"
prim__aspectRatio : MediaTrackSettings -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
prim__setAspectRatio : MediaTrackSettings -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.autoGainControl"
prim__autoGainControl : MediaTrackSettings -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
prim__setAutoGainControl : MediaTrackSettings -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.channelCount"
prim__channelCount : MediaTrackSettings -> PrimIO (UndefOr Int32)



export
%foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
prim__setChannelCount : MediaTrackSettings -> UndefOr Int32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.deviceId"
prim__deviceId : MediaTrackSettings -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
prim__setDeviceId : MediaTrackSettings -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.echoCancellation"
prim__echoCancellation : MediaTrackSettings -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
prim__setEchoCancellation : MediaTrackSettings -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.facingMode"
prim__facingMode : MediaTrackSettings -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
prim__setFacingMode : MediaTrackSettings -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.frameRate"
prim__frameRate : MediaTrackSettings -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
prim__setFrameRate : MediaTrackSettings -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.groupId"
prim__groupId : MediaTrackSettings -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.groupId = v}"
prim__setGroupId : MediaTrackSettings -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.height"
prim__height : MediaTrackSettings -> PrimIO (UndefOr Int32)



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : MediaTrackSettings -> UndefOr Int32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.latency"
prim__latency : MediaTrackSettings -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.latency = v}"
prim__setLatency : MediaTrackSettings -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.noiseSuppression"
prim__noiseSuppression : MediaTrackSettings -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
prim__setNoiseSuppression : MediaTrackSettings -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.resizeMode"
prim__resizeMode : MediaTrackSettings -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
prim__setResizeMode : MediaTrackSettings -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sampleRate"
prim__sampleRate : MediaTrackSettings -> PrimIO (UndefOr Int32)



export
%foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
prim__setSampleRate : MediaTrackSettings -> UndefOr Int32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sampleSize"
prim__sampleSize : MediaTrackSettings -> PrimIO (UndefOr Int32)



export
%foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
prim__setSampleSize : MediaTrackSettings -> UndefOr Int32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : MediaTrackSettings -> PrimIO (UndefOr Int32)



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : MediaTrackSettings -> UndefOr Int32 -> PrimIO ()



export
new' :
     (width : Optional Int32)
  -> (height : Optional Int32)
  -> (aspectRatio : Optional Double)
  -> (frameRate : Optional Double)
  -> (facingMode : Optional String)
  -> (resizeMode : Optional String)
  -> (sampleRate : Optional Int32)
  -> (sampleSize : Optional Int32)
  -> (echoCancellation : Optional Bool)
  -> (autoGainControl : Optional Bool)
  -> (noiseSuppression : Optional Bool)
  -> (latency : Optional Double)
  -> (channelCount : Optional Int32)
  -> (deviceId : Optional String)
  -> (groupId : Optional String)
  -> JSIO MediaTrackSettings
new' a b c d e f g h i j k l m n o = primJS $
  MediaTrackSettings.prim__new
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
new : JSIO MediaTrackSettings
new = primJS $
  MediaTrackSettings.prim__new
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
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional Double
aspectRatio v = fromUndefOrPrimNoDefault
                  "MediaTrackSettings.getaspectRatio"
                  prim__aspectRatio
                  prim__setAspectRatio
                  (cast {to = MediaTrackSettings} v)


export
autoGainControl :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional Bool
autoGainControl v = fromUndefOrPrimNoDefault
                      "MediaTrackSettings.getautoGainControl"
                      prim__autoGainControl
                      prim__setAutoGainControl
                      (cast {to = MediaTrackSettings} v)


export
channelCount :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional Int32
channelCount v = fromUndefOrPrimNoDefault
                   "MediaTrackSettings.getchannelCount"
                   prim__channelCount
                   prim__setChannelCount
                   (cast {to = MediaTrackSettings} v)


export
deviceId :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional String
deviceId v = fromUndefOrPrimNoDefault
               "MediaTrackSettings.getdeviceId"
               prim__deviceId
               prim__setDeviceId
               (cast {to = MediaTrackSettings} v)


export
echoCancellation :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional Bool
echoCancellation v = fromUndefOrPrimNoDefault
                       "MediaTrackSettings.getechoCancellation"
                       prim__echoCancellation
                       prim__setEchoCancellation
                       (cast {to = MediaTrackSettings} v)


export
facingMode :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional String
facingMode v = fromUndefOrPrimNoDefault
                 "MediaTrackSettings.getfacingMode"
                 prim__facingMode
                 prim__setFacingMode
                 (cast {to = MediaTrackSettings} v)


export
frameRate :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional Double
frameRate v = fromUndefOrPrimNoDefault
                "MediaTrackSettings.getframeRate"
                prim__frameRate
                prim__setFrameRate
                (cast {to = MediaTrackSettings} v)


export
groupId :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional String
groupId v = fromUndefOrPrimNoDefault
              "MediaTrackSettings.getgroupId"
              prim__groupId
              prim__setGroupId
              (cast {to = MediaTrackSettings} v)


export
height :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional Int32
height v = fromUndefOrPrimNoDefault
             "MediaTrackSettings.getheight"
             prim__height
             prim__setHeight
             (cast {to = MediaTrackSettings} v)


export
latency :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional Double
latency v = fromUndefOrPrimNoDefault
              "MediaTrackSettings.getlatency"
              prim__latency
              prim__setLatency
              (cast {to = MediaTrackSettings} v)


export
noiseSuppression :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional Bool
noiseSuppression v = fromUndefOrPrimNoDefault
                       "MediaTrackSettings.getnoiseSuppression"
                       prim__noiseSuppression
                       prim__setNoiseSuppression
                       (cast {to = MediaTrackSettings} v)


export
resizeMode :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional String
resizeMode v = fromUndefOrPrimNoDefault
                 "MediaTrackSettings.getresizeMode"
                 prim__resizeMode
                 prim__setResizeMode
                 (cast {to = MediaTrackSettings} v)


export
sampleRate :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional Int32
sampleRate v = fromUndefOrPrimNoDefault
                 "MediaTrackSettings.getsampleRate"
                 prim__sampleRate
                 prim__setSampleRate
                 (cast {to = MediaTrackSettings} v)


export
sampleSize :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional Int32
sampleSize v = fromUndefOrPrimNoDefault
                 "MediaTrackSettings.getsampleSize"
                 prim__sampleSize
                 prim__setSampleSize
                 (cast {to = MediaTrackSettings} v)


export
width :
     {auto _ : Cast t MediaTrackSettings}
  -> t
  -> Attribute False Optional Int32
width v = fromUndefOrPrimNoDefault
            "MediaTrackSettings.getwidth"
            prim__width
            prim__setWidth
            (cast {to = MediaTrackSettings} v)
