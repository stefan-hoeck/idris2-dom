module Web.Raw.MediaTrackConstraintSet

import JS
import Web.Types.ConstrainBooleanParameters
import Web.Types.ConstrainDOMStringParameters
import Web.Types.ConstrainDoubleRange
import Web.Types.ConstrainULongRange
import Web.Types.MediaTrackConstraintSet


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o)=> ({width: a,height: b,aspectRatio: c,frameRate: d,facingMode: e,resizeMode: f,sampleRate: g,sampleSize: h,echoCancellation: i,autoGainControl: j,noiseSuppression: k,latency: l,channelCount: m,deviceId: n,groupId: o})"
prim__new :
     UndefOr (Union2 Bits32 ConstrainULongRange)
  -> UndefOr (Union2 Bits32 ConstrainULongRange)
  -> UndefOr (Union2 Double ConstrainDoubleRange)
  -> UndefOr (Union2 Double ConstrainDoubleRange)
  -> UndefOr (Union3 String (Array String) ConstrainDOMStringParameters)
  -> UndefOr (Union3 String (Array String) ConstrainDOMStringParameters)
  -> UndefOr (Union2 Bits32 ConstrainULongRange)
  -> UndefOr (Union2 Bits32 ConstrainULongRange)
  -> UndefOr (Union2 Boolean ConstrainBooleanParameters)
  -> UndefOr (Union2 Boolean ConstrainBooleanParameters)
  -> UndefOr (Union2 Boolean ConstrainBooleanParameters)
  -> UndefOr (Union2 Double ConstrainDoubleRange)
  -> UndefOr (Union2 Bits32 ConstrainULongRange)
  -> UndefOr (Union3 String (Array String) ConstrainDOMStringParameters)
  -> UndefOr (Union3 String (Array String) ConstrainDOMStringParameters)
  -> PrimIO MediaTrackConstraintSet


export
%foreign "browser:lambda:x=>x.aspectRatio"
prim__aspectRatio :
     MediaTrackConstraintSet
  -> PrimIO (UndefOr (Union2 Double ConstrainDoubleRange))



export
%foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
prim__setAspectRatio :
     MediaTrackConstraintSet
  -> UndefOr (Union2 Double ConstrainDoubleRange)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.autoGainControl"
prim__autoGainControl :
     MediaTrackConstraintSet
  -> PrimIO (UndefOr (Union2 Boolean ConstrainBooleanParameters))



export
%foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
prim__setAutoGainControl :
     MediaTrackConstraintSet
  -> UndefOr (Union2 Boolean ConstrainBooleanParameters)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.channelCount"
prim__channelCount :
     MediaTrackConstraintSet
  -> PrimIO (UndefOr (Union2 Bits32 ConstrainULongRange))



export
%foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
prim__setChannelCount :
     MediaTrackConstraintSet
  -> UndefOr (Union2 Bits32 ConstrainULongRange)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.deviceId"
prim__deviceId :
     MediaTrackConstraintSet
  -> PrimIO
       (UndefOr (Union3 String (Array String) ConstrainDOMStringParameters))



export
%foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
prim__setDeviceId :
     MediaTrackConstraintSet
  -> UndefOr (Union3 String (Array String) ConstrainDOMStringParameters)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.echoCancellation"
prim__echoCancellation :
     MediaTrackConstraintSet
  -> PrimIO (UndefOr (Union2 Boolean ConstrainBooleanParameters))



export
%foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
prim__setEchoCancellation :
     MediaTrackConstraintSet
  -> UndefOr (Union2 Boolean ConstrainBooleanParameters)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.facingMode"
prim__facingMode :
     MediaTrackConstraintSet
  -> PrimIO
       (UndefOr (Union3 String (Array String) ConstrainDOMStringParameters))



export
%foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
prim__setFacingMode :
     MediaTrackConstraintSet
  -> UndefOr (Union3 String (Array String) ConstrainDOMStringParameters)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.frameRate"
prim__frameRate :
     MediaTrackConstraintSet
  -> PrimIO (UndefOr (Union2 Double ConstrainDoubleRange))



export
%foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
prim__setFrameRate :
     MediaTrackConstraintSet
  -> UndefOr (Union2 Double ConstrainDoubleRange)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.groupId"
prim__groupId :
     MediaTrackConstraintSet
  -> PrimIO
       (UndefOr (Union3 String (Array String) ConstrainDOMStringParameters))



export
%foreign "browser:lambda:(x,v)=>{x.groupId = v}"
prim__setGroupId :
     MediaTrackConstraintSet
  -> UndefOr (Union3 String (Array String) ConstrainDOMStringParameters)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.height"
prim__height :
     MediaTrackConstraintSet
  -> PrimIO (UndefOr (Union2 Bits32 ConstrainULongRange))



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight :
     MediaTrackConstraintSet
  -> UndefOr (Union2 Bits32 ConstrainULongRange)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.latency"
prim__latency :
     MediaTrackConstraintSet
  -> PrimIO (UndefOr (Union2 Double ConstrainDoubleRange))



export
%foreign "browser:lambda:(x,v)=>{x.latency = v}"
prim__setLatency :
     MediaTrackConstraintSet
  -> UndefOr (Union2 Double ConstrainDoubleRange)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.noiseSuppression"
prim__noiseSuppression :
     MediaTrackConstraintSet
  -> PrimIO (UndefOr (Union2 Boolean ConstrainBooleanParameters))



export
%foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
prim__setNoiseSuppression :
     MediaTrackConstraintSet
  -> UndefOr (Union2 Boolean ConstrainBooleanParameters)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.resizeMode"
prim__resizeMode :
     MediaTrackConstraintSet
  -> PrimIO
       (UndefOr (Union3 String (Array String) ConstrainDOMStringParameters))



export
%foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
prim__setResizeMode :
     MediaTrackConstraintSet
  -> UndefOr (Union3 String (Array String) ConstrainDOMStringParameters)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sampleRate"
prim__sampleRate :
     MediaTrackConstraintSet
  -> PrimIO (UndefOr (Union2 Bits32 ConstrainULongRange))



export
%foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
prim__setSampleRate :
     MediaTrackConstraintSet
  -> UndefOr (Union2 Bits32 ConstrainULongRange)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sampleSize"
prim__sampleSize :
     MediaTrackConstraintSet
  -> PrimIO (UndefOr (Union2 Bits32 ConstrainULongRange))



export
%foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
prim__setSampleSize :
     MediaTrackConstraintSet
  -> UndefOr (Union2 Bits32 ConstrainULongRange)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width :
     MediaTrackConstraintSet
  -> PrimIO (UndefOr (Union2 Bits32 ConstrainULongRange))



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth :
     MediaTrackConstraintSet
  -> UndefOr (Union2 Bits32 ConstrainULongRange)
  -> PrimIO ()



export
new' :
     (width : Optional (HSum [Bits32, ConstrainULongRange]))
  -> (height : Optional (HSum [Bits32, ConstrainULongRange]))
  -> (aspectRatio : Optional (HSum [Double, ConstrainDoubleRange]))
  -> (frameRate : Optional (HSum [Double, ConstrainDoubleRange]))
  -> (facingMode : Optional
                     (HSum
                        [String, Array String, ConstrainDOMStringParameters]))
  -> (resizeMode : Optional
                     (HSum
                        [String, Array String, ConstrainDOMStringParameters]))
  -> (sampleRate : Optional (HSum [Bits32, ConstrainULongRange]))
  -> (sampleSize : Optional (HSum [Bits32, ConstrainULongRange]))
  -> (echoCancellation : Optional (HSum [Bool, ConstrainBooleanParameters]))
  -> (autoGainControl : Optional (HSum [Bool, ConstrainBooleanParameters]))
  -> (noiseSuppression : Optional (HSum [Bool, ConstrainBooleanParameters]))
  -> (latency : Optional (HSum [Double, ConstrainDoubleRange]))
  -> (channelCount : Optional (HSum [Bits32, ConstrainULongRange]))
  -> (deviceId : Optional
                   (HSum [String, Array String, ConstrainDOMStringParameters]))
  -> (groupId : Optional
                  (HSum [String, Array String, ConstrainDOMStringParameters]))
  -> JSIO MediaTrackConstraintSet
new' a b c d e f g h i j k l m n o = primJS $
  MediaTrackConstraintSet.prim__new
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
new : JSIO MediaTrackConstraintSet
new = primJS $
  MediaTrackConstraintSet.prim__new
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
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union2 Double ConstrainDoubleRange)
aspectRatio v = fromUndefOrPrimNoDefault
                  "MediaTrackConstraintSet.getaspectRatio"
                  prim__aspectRatio
                  prim__setAspectRatio
                  (cast {to = MediaTrackConstraintSet} v)


export
autoGainControl :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union2 Boolean ConstrainBooleanParameters)
autoGainControl v = fromUndefOrPrimNoDefault
                      "MediaTrackConstraintSet.getautoGainControl"
                      prim__autoGainControl
                      prim__setAutoGainControl
                      (cast {to = MediaTrackConstraintSet} v)


export
channelCount :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
channelCount v = fromUndefOrPrimNoDefault
                   "MediaTrackConstraintSet.getchannelCount"
                   prim__channelCount
                   prim__setChannelCount
                   (cast {to = MediaTrackConstraintSet} v)


export
deviceId :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union3
                                 String
                                 (Array String)
                                 ConstrainDOMStringParameters)
deviceId v = fromUndefOrPrimNoDefault
               "MediaTrackConstraintSet.getdeviceId"
               prim__deviceId
               prim__setDeviceId
               (cast {to = MediaTrackConstraintSet} v)


export
echoCancellation :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union2 Boolean ConstrainBooleanParameters)
echoCancellation v = fromUndefOrPrimNoDefault
                       "MediaTrackConstraintSet.getechoCancellation"
                       prim__echoCancellation
                       prim__setEchoCancellation
                       (cast {to = MediaTrackConstraintSet} v)


export
facingMode :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union3
                                 String
                                 (Array String)
                                 ConstrainDOMStringParameters)
facingMode v = fromUndefOrPrimNoDefault
                 "MediaTrackConstraintSet.getfacingMode"
                 prim__facingMode
                 prim__setFacingMode
                 (cast {to = MediaTrackConstraintSet} v)


export
frameRate :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union2 Double ConstrainDoubleRange)
frameRate v = fromUndefOrPrimNoDefault
                "MediaTrackConstraintSet.getframeRate"
                prim__frameRate
                prim__setFrameRate
                (cast {to = MediaTrackConstraintSet} v)


export
groupId :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union3
                                 String
                                 (Array String)
                                 ConstrainDOMStringParameters)
groupId v = fromUndefOrPrimNoDefault
              "MediaTrackConstraintSet.getgroupId"
              prim__groupId
              prim__setGroupId
              (cast {to = MediaTrackConstraintSet} v)


export
height :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
height v = fromUndefOrPrimNoDefault
             "MediaTrackConstraintSet.getheight"
             prim__height
             prim__setHeight
             (cast {to = MediaTrackConstraintSet} v)


export
latency :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union2 Double ConstrainDoubleRange)
latency v = fromUndefOrPrimNoDefault
              "MediaTrackConstraintSet.getlatency"
              prim__latency
              prim__setLatency
              (cast {to = MediaTrackConstraintSet} v)


export
noiseSuppression :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union2 Boolean ConstrainBooleanParameters)
noiseSuppression v = fromUndefOrPrimNoDefault
                       "MediaTrackConstraintSet.getnoiseSuppression"
                       prim__noiseSuppression
                       prim__setNoiseSuppression
                       (cast {to = MediaTrackConstraintSet} v)


export
resizeMode :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union3
                                 String
                                 (Array String)
                                 ConstrainDOMStringParameters)
resizeMode v = fromUndefOrPrimNoDefault
                 "MediaTrackConstraintSet.getresizeMode"
                 prim__resizeMode
                 prim__setResizeMode
                 (cast {to = MediaTrackConstraintSet} v)


export
sampleRate :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
sampleRate v = fromUndefOrPrimNoDefault
                 "MediaTrackConstraintSet.getsampleRate"
                 prim__sampleRate
                 prim__setSampleRate
                 (cast {to = MediaTrackConstraintSet} v)


export
sampleSize :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
sampleSize v = fromUndefOrPrimNoDefault
                 "MediaTrackConstraintSet.getsampleSize"
                 prim__sampleSize
                 prim__setSampleSize
                 (cast {to = MediaTrackConstraintSet} v)


export
width :
     {auto _ : Cast t MediaTrackConstraintSet}
  -> t
  -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
width v = fromUndefOrPrimNoDefault
            "MediaTrackConstraintSet.getwidth"
            prim__width
            prim__setWidth
            (cast {to = MediaTrackConstraintSet} v)

