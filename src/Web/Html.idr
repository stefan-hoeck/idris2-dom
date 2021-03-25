module Web.Html

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AudioTrack
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.enabled = v}"
  prim__setEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace AudioTrackList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace BarProp
  
  %foreign "browser:lambda:x=>x.visible"
  prim__visible : AnyPtr -> PrimIO AnyPtr

namespace BeforeUnloadEvent
  
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.returnValue = v}"
  prim__setReturnValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace BroadcastChannel
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CanvasRenderingContext2D
  
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas : AnyPtr -> PrimIO AnyPtr

namespace CloseEvent
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.wasClean"
  prim__wasClean : AnyPtr -> PrimIO AnyPtr

namespace DOMStringList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace DataTransfer
  
  %foreign "browser:lambda:x=>x.files"
  prim__files : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.items"
  prim__items : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.types"
  prim__types : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.dropEffect"
  prim__dropEffect : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.dropEffect = v}"
  prim__setDropEffect : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.effectAllowed"
  prim__effectAllowed : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.effectAllowed = v}"
  prim__setEffectAllowed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace DataTransferItem
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

namespace DataTransferItemList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace DedicatedWorkerGlobalScope
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace DragEvent
  
  %foreign "browser:lambda:x=>x.dataTransfer"
  prim__dataTransfer : AnyPtr -> PrimIO AnyPtr

namespace ElementInternals
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.shadowRoot"
  prim__shadowRoot : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

namespace ErrorEvent
  
  %foreign "browser:lambda:x=>x.colno"
  prim__colno : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.error"
  prim__error : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lineno"
  prim__lineno : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.message"
  prim__message : AnyPtr -> PrimIO AnyPtr

namespace EventSource
  
  public export
  CLOSED : UInt16
  CLOSED = 2
  
  public export
  CONNECTING : UInt16
  CONNECTING = 0o0
  
  public export
  OPEN : UInt16
  OPEN = 1
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onopen"
  prim__onopen : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onopen = v}"
  prim__setOnopen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace FormDataEvent
  
  %foreign "browser:lambda:x=>x.formData"
  prim__formData : AnyPtr -> PrimIO AnyPtr

namespace HTMLAllCollection
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace HTMLAnchorElement
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.charset = v}"
  prim__setCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.coords"
  prim__coords : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.coords = v}"
  prim__setCoords : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.download"
  prim__download : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.download = v}"
  prim__setDownload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.hreflang = v}"
  prim__setHreflang : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ping = v}"
  prim__setPing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rev"
  prim__rev : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.rev = v}"
  prim__setRev : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.shape"
  prim__shape : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.shape = v}"
  prim__setShape : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLAreaElement
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.alt = v}"
  prim__setAlt : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.coords"
  prim__coords : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.coords = v}"
  prim__setCoords : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.download"
  prim__download : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.download = v}"
  prim__setDownload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.noHref"
  prim__noHref : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.noHref = v}"
  prim__setNoHref : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ping = v}"
  prim__setPing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.shape"
  prim__shape : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.shape = v}"
  prim__setShape : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLBRElement
  
  %foreign "browser:lambda:x=>x.clear"
  prim__clear : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.clear = v}"
  prim__setClear : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLBaseElement
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.href = v}"
  prim__setHref : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLBodyElement
  
  %foreign "browser:lambda:x=>x.aLink"
  prim__aLink : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.aLink = v}"
  prim__setALink : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.background"
  prim__background : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.background = v}"
  prim__setBackground : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.link"
  prim__link : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.link = v}"
  prim__setLink : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.vLink"
  prim__vLink : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.vLink = v}"
  prim__setVLink : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLButtonElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.formAction"
  prim__formAction : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.formAction = v}"
  prim__setFormAction : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.formEnctype"
  prim__formEnctype : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.formEnctype = v}"
  prim__setFormEnctype : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.formMethod"
  prim__formMethod : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.formMethod = v}"
  prim__setFormMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.formNoValidate"
  prim__formNoValidate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.formNoValidate = v}"
  prim__setFormNoValidate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.formTarget"
  prim__formTarget : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.formTarget = v}"
  prim__setFormTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLCanvasElement
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLDListElement
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLDataElement
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLDataListElement
  
  %foreign "browser:lambda:x=>x.options"
  prim__options : AnyPtr -> PrimIO AnyPtr

namespace HTMLDetailsElement
  
  %foreign "browser:lambda:x=>x.open"
  prim__open : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.open = v}"
  prim__setOpen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLDialogElement
  
  %foreign "browser:lambda:x=>x.open"
  prim__open : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.open = v}"
  prim__setOpen : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.returnValue = v}"
  prim__setReturnValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLDirectoryElement
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLDivElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLElement
  
  %foreign "browser:lambda:x=>x.accessKeyLabel"
  prim__accessKeyLabel : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.accessKey"
  prim__accessKey : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.accessKey = v}"
  prim__setAccessKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.autocapitalize"
  prim__autocapitalize : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.autocapitalize = v}"
  prim__setAutocapitalize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.dir"
  prim__dir : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.dir = v}"
  prim__setDir : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.draggable"
  prim__draggable : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.draggable = v}"
  prim__setDraggable : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hidden"
  prim__hidden : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.hidden = v}"
  prim__setHidden : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.innerText"
  prim__innerText : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.innerText = v}"
  prim__setInnerText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lang"
  prim__lang : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.lang = v}"
  prim__setLang : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.spellcheck"
  prim__spellcheck : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.spellcheck = v}"
  prim__setSpellcheck : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.title = v}"
  prim__setTitle : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.translate"
  prim__translate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.translate = v}"
  prim__setTranslate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLEmbedElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLFieldSetElement
  
  %foreign "browser:lambda:x=>x.elements"
  prim__elements : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLFontElement
  
  %foreign "browser:lambda:x=>x.color"
  prim__color : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.color = v}"
  prim__setColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.face"
  prim__face : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.face = v}"
  prim__setFace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLFormElement
  
  %foreign "browser:lambda:x=>x.elements"
  prim__elements : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.acceptCharset"
  prim__acceptCharset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.acceptCharset = v}"
  prim__setAcceptCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.action"
  prim__action : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.action = v}"
  prim__setAction : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.encoding"
  prim__encoding : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.encoding = v}"
  prim__setEncoding : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.enctype"
  prim__enctype : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.enctype = v}"
  prim__setEnctype : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.method"
  prim__method : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.method = v}"
  prim__setMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.noValidate"
  prim__noValidate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.noValidate = v}"
  prim__setNoValidate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLFrameElement
  
  %foreign "browser:lambda:x=>x.contentDocument"
  prim__contentDocument : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.frameBorder"
  prim__frameBorder : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.frameBorder = v}"
  prim__setFrameBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.longDesc = v}"
  prim__setLongDesc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.marginHeight"
  prim__marginHeight : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.marginHeight = v}"
  prim__setMarginHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.marginWidth"
  prim__marginWidth : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.marginWidth = v}"
  prim__setMarginWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.noResize"
  prim__noResize : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.noResize = v}"
  prim__setNoResize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.scrolling"
  prim__scrolling : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.scrolling = v}"
  prim__setScrolling : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLFrameSetElement
  
  %foreign "browser:lambda:x=>x.cols"
  prim__cols : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cols = v}"
  prim__setCols : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.rows = v}"
  prim__setRows : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLHRElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.color"
  prim__color : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.color = v}"
  prim__setColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.noShade"
  prim__noShade : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.noShade = v}"
  prim__setNoShade : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLHeadingElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLHtmlElement
  
  %foreign "browser:lambda:x=>x.version"
  prim__version : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.version = v}"
  prim__setVersion : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLIFrameElement
  
  %foreign "browser:lambda:x=>x.contentDocument"
  prim__contentDocument : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sandbox"
  prim__sandbox : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.allow"
  prim__allow : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.allow = v}"
  prim__setAllow : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.allowFullscreen"
  prim__allowFullscreen : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.allowFullscreen = v}"
  prim__setAllowFullscreen : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.frameBorder"
  prim__frameBorder : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.frameBorder = v}"
  prim__setFrameBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.loading"
  prim__loading : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.loading = v}"
  prim__setLoading : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.longDesc = v}"
  prim__setLongDesc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.marginHeight"
  prim__marginHeight : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.marginHeight = v}"
  prim__setMarginHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.marginWidth"
  prim__marginWidth : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.marginWidth = v}"
  prim__setMarginWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.scrolling"
  prim__scrolling : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.scrolling = v}"
  prim__setScrolling : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.srcdoc"
  prim__srcdoc : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.srcdoc = v}"
  prim__setSrcdoc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLImageElement
  
  %foreign "browser:lambda:x=>x.complete"
  prim__complete : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.currentSrc"
  prim__currentSrc : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.naturalHeight"
  prim__naturalHeight : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.naturalWidth"
  prim__naturalWidth : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.alt = v}"
  prim__setAlt : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.border"
  prim__border : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.border = v}"
  prim__setBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.decoding"
  prim__decoding : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.decoding = v}"
  prim__setDecoding : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.hspace = v}"
  prim__setHspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.isMap"
  prim__isMap : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.isMap = v}"
  prim__setIsMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.loading"
  prim__loading : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.loading = v}"
  prim__setLoading : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.longDesc = v}"
  prim__setLongDesc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lowsrc"
  prim__lowsrc : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.lowsrc = v}"
  prim__setLowsrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.sizes = v}"
  prim__setSizes : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.srcset"
  prim__srcset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.srcset = v}"
  prim__setSrcset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.useMap = v}"
  prim__setUseMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.vspace = v}"
  prim__setVspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLInputElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.list"
  prim__list : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.accept"
  prim__accept : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.accept = v}"
  prim__setAccept : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.alt = v}"
  prim__setAlt : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.checked"
  prim__checked : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.checked = v}"
  prim__setChecked : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.defaultChecked"
  prim__defaultChecked : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.defaultChecked = v}"
  prim__setDefaultChecked : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.defaultValue = v}"
  prim__setDefaultValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.dirName"
  prim__dirName : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.dirName = v}"
  prim__setDirName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.files"
  prim__files : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.files = v}"
  prim__setFiles : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.formAction"
  prim__formAction : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.formAction = v}"
  prim__setFormAction : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.formEnctype"
  prim__formEnctype : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.formEnctype = v}"
  prim__setFormEnctype : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.formMethod"
  prim__formMethod : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.formMethod = v}"
  prim__setFormMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.formNoValidate"
  prim__formNoValidate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.formNoValidate = v}"
  prim__setFormNoValidate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.formTarget"
  prim__formTarget : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.formTarget = v}"
  prim__setFormTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.indeterminate"
  prim__indeterminate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.indeterminate = v}"
  prim__setIndeterminate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.maxLength"
  prim__maxLength : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.maxLength = v}"
  prim__setMaxLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.min = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.minLength"
  prim__minLength : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.minLength = v}"
  prim__setMinLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.multiple"
  prim__multiple : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.multiple = v}"
  prim__setMultiple : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.pattern"
  prim__pattern : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.pattern = v}"
  prim__setPattern : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.placeholder"
  prim__placeholder : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.placeholder = v}"
  prim__setPlaceholder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.readOnly"
  prim__readOnly : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.readOnly = v}"
  prim__setReadOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.required"
  prim__required : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.required = v}"
  prim__setRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selectionDirection"
  prim__selectionDirection : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.selectionDirection = v}"
  prim__setSelectionDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selectionEnd"
  prim__selectionEnd : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.selectionEnd = v}"
  prim__setSelectionEnd : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selectionStart"
  prim__selectionStart : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.selectionStart = v}"
  prim__setSelectionStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.step"
  prim__step : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.step = v}"
  prim__setStep : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.useMap = v}"
  prim__setUseMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.valueAsDate"
  prim__valueAsDate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.valueAsDate = v}"
  prim__setValueAsDate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.valueAsNumber"
  prim__valueAsNumber : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.valueAsNumber = v}"
  prim__setValueAsNumber : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLLIElement
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLLabelElement
  
  %foreign "browser:lambda:x=>x.control"
  prim__control : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.htmlFor = v}"
  prim__setHtmlFor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLLegendElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLLinkElement
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.as"
  prim__as : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.as = v}"
  prim__setAs : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.charset = v}"
  prim__setCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.href = v}"
  prim__setHref : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.hreflang = v}"
  prim__setHreflang : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.imageSizes"
  prim__imageSizes : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.imageSizes = v}"
  prim__setImageSizes : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.imageSrcset"
  prim__imageSrcset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.imageSrcset = v}"
  prim__setImageSrcset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.integrity = v}"
  prim__setIntegrity : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.media = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rev"
  prim__rev : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.rev = v}"
  prim__setRev : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLMapElement
  
  %foreign "browser:lambda:x=>x.areas"
  prim__areas : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLMarqueeElement
  
  %foreign "browser:lambda:x=>x.behavior"
  prim__behavior : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.behavior = v}"
  prim__setBehavior : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.direction = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.hspace = v}"
  prim__setHspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.loop"
  prim__loop : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.loop = v}"
  prim__setLoop : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.scrollAmount"
  prim__scrollAmount : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.scrollAmount = v}"
  prim__setScrollAmount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.scrollDelay"
  prim__scrollDelay : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.scrollDelay = v}"
  prim__setScrollDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.trueSpeed"
  prim__trueSpeed : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.trueSpeed = v}"
  prim__setTrueSpeed : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.vspace = v}"
  prim__setVspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLMediaElement
  
  public export
  HAVE_CURRENT_DATA : UInt16
  HAVE_CURRENT_DATA = 2
  
  public export
  HAVE_ENOUGH_DATA : UInt16
  HAVE_ENOUGH_DATA = 4
  
  public export
  HAVE_FUTURE_DATA : UInt16
  HAVE_FUTURE_DATA = 3
  
  public export
  HAVE_METADATA : UInt16
  HAVE_METADATA = 1
  
  public export
  HAVE_NOTHING : UInt16
  HAVE_NOTHING = 0o0
  
  public export
  NETWORK_EMPTY : UInt16
  NETWORK_EMPTY = 0o0
  
  public export
  NETWORK_IDLE : UInt16
  NETWORK_IDLE = 1
  
  public export
  NETWORK_LOADING : UInt16
  NETWORK_LOADING = 2
  
  public export
  NETWORK_NO_SOURCE : UInt16
  NETWORK_NO_SOURCE = 3
  
  %foreign "browser:lambda:x=>x.audioTracks"
  prim__audioTracks : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.buffered"
  prim__buffered : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.currentSrc"
  prim__currentSrc : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ended"
  prim__ended : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.error"
  prim__error : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.networkState"
  prim__networkState : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.paused"
  prim__paused : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.played"
  prim__played : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.seekable"
  prim__seekable : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.seeking"
  prim__seeking : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.textTracks"
  prim__textTracks : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.videoTracks"
  prim__videoTracks : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.autoplay"
  prim__autoplay : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.autoplay = v}"
  prim__setAutoplay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.controls"
  prim__controls : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.controls = v}"
  prim__setControls : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.currentTime = v}"
  prim__setCurrentTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.defaultMuted"
  prim__defaultMuted : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.defaultMuted = v}"
  prim__setDefaultMuted : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.defaultPlaybackRate"
  prim__defaultPlaybackRate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.defaultPlaybackRate = v}"
  prim__setDefaultPlaybackRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.loop"
  prim__loop : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.loop = v}"
  prim__setLoop : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.muted"
  prim__muted : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.muted = v}"
  prim__setMuted : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.playbackRate"
  prim__playbackRate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.playbackRate = v}"
  prim__setPlaybackRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.preload"
  prim__preload : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.preload = v}"
  prim__setPreload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.preservesPitch"
  prim__preservesPitch : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.preservesPitch = v}"
  prim__setPreservesPitch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.srcObject"
  prim__srcObject : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.srcObject = v}"
  prim__setSrcObject : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.volume"
  prim__volume : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.volume = v}"
  prim__setVolume : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLMenuElement
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLMetaElement
  
  %foreign "browser:lambda:x=>x.content"
  prim__content : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.content = v}"
  prim__setContent : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.httpEquiv"
  prim__httpEquiv : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.httpEquiv = v}"
  prim__setHttpEquiv : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.scheme"
  prim__scheme : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.scheme = v}"
  prim__setScheme : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLMeterElement
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.high"
  prim__high : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.high = v}"
  prim__setHigh : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.low"
  prim__low : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.low = v}"
  prim__setLow : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.min = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.optimum"
  prim__optimum : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.optimum = v}"
  prim__setOptimum : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLModElement
  
  %foreign "browser:lambda:x=>x.cite"
  prim__cite : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cite = v}"
  prim__setCite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.dateTime"
  prim__dateTime : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.dateTime = v}"
  prim__setDateTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLOListElement
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.reversed"
  prim__reversed : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.reversed = v}"
  prim__setReversed : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.start = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLObjectElement
  
  %foreign "browser:lambda:x=>x.contentDocument"
  prim__contentDocument : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.archive"
  prim__archive : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.archive = v}"
  prim__setArchive : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.border"
  prim__border : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.border = v}"
  prim__setBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.code = v}"
  prim__setCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.codeBase"
  prim__codeBase : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.codeBase = v}"
  prim__setCodeBase : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.codeType"
  prim__codeType : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.codeType = v}"
  prim__setCodeType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.data"
  prim__data : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.declare"
  prim__declare : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.declare = v}"
  prim__setDeclare : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.hspace = v}"
  prim__setHspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.standby"
  prim__standby : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.standby = v}"
  prim__setStandby : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.useMap = v}"
  prim__setUseMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.vspace = v}"
  prim__setVspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLOptGroupElement
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.label = v}"
  prim__setLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLOptionElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.index"
  prim__index : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.defaultSelected"
  prim__defaultSelected : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.defaultSelected = v}"
  prim__setDefaultSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.label = v}"
  prim__setLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selected"
  prim__selected : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.selected = v}"
  prim__setSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLOptionsCollection
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.length = v}"
  prim__setLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.selectedIndex = v}"
  prim__setSelectedIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLOutputElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.defaultValue = v}"
  prim__setDefaultValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLParagraphElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLParamElement
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.valueType"
  prim__valueType : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.valueType = v}"
  prim__setValueType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLPreElement
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLProgressElement
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.position"
  prim__position : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLQuoteElement
  
  %foreign "browser:lambda:x=>x.cite"
  prim__cite : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cite = v}"
  prim__setCite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLScriptElement
  
  %foreign "browser:lambda:x=>x.async"
  prim__async : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.async = v}"
  prim__setAsync : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.charset = v}"
  prim__setCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.defer"
  prim__defer : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.defer = v}"
  prim__setDefer : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.event"
  prim__event : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.event = v}"
  prim__setEvent : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.htmlFor = v}"
  prim__setHtmlFor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.integrity = v}"
  prim__setIntegrity : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.noModule"
  prim__noModule : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.noModule = v}"
  prim__setNoModule : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLSelectElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.options"
  prim__options : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selectedOptions"
  prim__selectedOptions : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.length = v}"
  prim__setLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.multiple"
  prim__multiple : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.multiple = v}"
  prim__setMultiple : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.required"
  prim__required : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.required = v}"
  prim__setRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.selectedIndex = v}"
  prim__setSelectedIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLSlotElement
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLSourceElement
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.media = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.sizes = v}"
  prim__setSizes : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.srcset"
  prim__srcset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.srcset = v}"
  prim__setSrcset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLStyleElement
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.media = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLTableCaptionElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLTableCellElement
  
  %foreign "browser:lambda:x=>x.cellIndex"
  prim__cellIndex : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.abbr"
  prim__abbr : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.abbr = v}"
  prim__setAbbr : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.axis"
  prim__axis : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.axis = v}"
  prim__setAxis : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ch = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.chOff = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.colSpan"
  prim__colSpan : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.colSpan = v}"
  prim__setColSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.headers = v}"
  prim__setHeaders : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.noWrap"
  prim__noWrap : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.noWrap = v}"
  prim__setNoWrap : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rowSpan"
  prim__rowSpan : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.rowSpan = v}"
  prim__setRowSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.scope = v}"
  prim__setScope : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLTableColElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ch = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.chOff = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.span"
  prim__span : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.span = v}"
  prim__setSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLTableElement
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.tBodies"
  prim__tBodies : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.border"
  prim__border : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.border = v}"
  prim__setBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.caption"
  prim__caption : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.caption = v}"
  prim__setCaption : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cellPadding"
  prim__cellPadding : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cellPadding = v}"
  prim__setCellPadding : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cellSpacing"
  prim__cellSpacing : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cellSpacing = v}"
  prim__setCellSpacing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.frame"
  prim__frame : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.frame = v}"
  prim__setFrame : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rules"
  prim__rules : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.rules = v}"
  prim__setRules : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.summary"
  prim__summary : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.summary = v}"
  prim__setSummary : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.tFoot"
  prim__tFoot : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.tFoot = v}"
  prim__setTFoot : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.tHead"
  prim__tHead : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.tHead = v}"
  prim__setTHead : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLTableRowElement
  
  %foreign "browser:lambda:x=>x.cells"
  prim__cells : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rowIndex"
  prim__rowIndex : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sectionRowIndex"
  prim__sectionRowIndex : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ch = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.chOff = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLTableSectionElement
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ch = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.chOff = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLTemplateElement
  
  %foreign "browser:lambda:x=>x.content"
  prim__content : AnyPtr -> PrimIO AnyPtr

namespace HTMLTextAreaElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.textLength"
  prim__textLength : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cols"
  prim__cols : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cols = v}"
  prim__setCols : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.defaultValue = v}"
  prim__setDefaultValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.dirName"
  prim__dirName : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.dirName = v}"
  prim__setDirName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.maxLength"
  prim__maxLength : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.maxLength = v}"
  prim__setMaxLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.minLength"
  prim__minLength : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.minLength = v}"
  prim__setMinLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.placeholder"
  prim__placeholder : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.placeholder = v}"
  prim__setPlaceholder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.readOnly"
  prim__readOnly : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.readOnly = v}"
  prim__setReadOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.required"
  prim__required : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.required = v}"
  prim__setRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.rows = v}"
  prim__setRows : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selectionDirection"
  prim__selectionDirection : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.selectionDirection = v}"
  prim__setSelectionDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selectionEnd"
  prim__selectionEnd : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.selectionEnd = v}"
  prim__setSelectionEnd : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selectionStart"
  prim__selectionStart : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.selectionStart = v}"
  prim__setSelectionStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.wrap"
  prim__wrap : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.wrap = v}"
  prim__setWrap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLTimeElement
  
  %foreign "browser:lambda:x=>x.dateTime"
  prim__dateTime : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.dateTime = v}"
  prim__setDateTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLTitleElement
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLTrackElement
  
  public export
  ERROR : UInt16
  ERROR = 3
  
  public export
  LOADED : UInt16
  LOADED = 2
  
  public export
  LOADING : UInt16
  LOADING = 1
  
  public export
  NONE : UInt16
  NONE = 0o0
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.default"
  prim__default : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.default = v}"
  prim__setDefault : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.kind = v}"
  prim__setKind : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.label = v}"
  prim__setLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.srclang"
  prim__srclang : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.srclang = v}"
  prim__setSrclang : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLUListElement
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLVideoElement
  
  %foreign "browser:lambda:x=>x.videoHeight"
  prim__videoHeight : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.videoWidth"
  prim__videoWidth : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.playsInline"
  prim__playsInline : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.playsInline = v}"
  prim__setPlaysInline : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.poster"
  prim__poster : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.poster = v}"
  prim__setPoster : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HashChangeEvent
  
  %foreign "browser:lambda:x=>x.newURL"
  prim__newURL : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oldURL"
  prim__oldURL : AnyPtr -> PrimIO AnyPtr

namespace History
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.scrollRestoration"
  prim__scrollRestoration : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.scrollRestoration = v}"
  prim__setScrollRestoration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ImageBitmap
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

namespace ImageBitmapRenderingContext
  
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas : AnyPtr -> PrimIO AnyPtr

namespace ImageData
  
  %foreign "browser:lambda:x=>x.data"
  prim__data : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

namespace Location
  
  %foreign "browser:lambda:x=>x.ancestorOrigins"
  prim__ancestorOrigins : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.hash = v}"
  prim__setHash : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.host = v}"
  prim__setHost : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.hostname = v}"
  prim__setHostname : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.pathname = v}"
  prim__setPathname : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.port = v}"
  prim__setPort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.protocol = v}"
  prim__setProtocol : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.search = v}"
  prim__setSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MediaError
  
  public export
  MEDIA_ERR_ABORTED : UInt16
  MEDIA_ERR_ABORTED = 1
  
  public export
  MEDIA_ERR_DECODE : UInt16
  MEDIA_ERR_DECODE = 3
  
  public export
  MEDIA_ERR_NETWORK : UInt16
  MEDIA_ERR_NETWORK = 2
  
  public export
  MEDIA_ERR_SRC_NOT_SUPPORTED : UInt16
  MEDIA_ERR_SRC_NOT_SUPPORTED = 4
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.message"
  prim__message : AnyPtr -> PrimIO AnyPtr

namespace MessageChannel
  
  %foreign "browser:lambda:x=>x.port1"
  prim__port1 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.port2"
  prim__port2 : AnyPtr -> PrimIO AnyPtr

namespace MessageEvent
  
  %foreign "browser:lambda:x=>x.data"
  prim__data : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr

namespace MessagePort
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MimeType
  
  %foreign "browser:lambda:x=>x.description"
  prim__description : AnyPtr -> PrimIO ()
  
  %foreign "browser:lambda:x=>x.enabledPlugin"
  prim__enabledPlugin : AnyPtr -> PrimIO ()
  
  %foreign "browser:lambda:x=>x.suffixes"
  prim__suffixes : AnyPtr -> PrimIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO ()

namespace MimeTypeArray
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace Navigator
  
  %foreign "browser:lambda:x=>x.clipboard"
  prim__clipboard : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.mediaDevices"
  prim__mediaDevices : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.permissions"
  prim__permissions : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : AnyPtr -> PrimIO AnyPtr

namespace OffscreenCanvas
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace OffscreenCanvasRenderingContext2D
  
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas : AnyPtr -> PrimIO AnyPtr

namespace PageTransitionEvent
  
  %foreign "browser:lambda:x=>x.persisted"
  prim__persisted : AnyPtr -> PrimIO AnyPtr

namespace Plugin
  
  %foreign "browser:lambda:x=>x.description"
  prim__description : AnyPtr -> PrimIO ()
  
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : AnyPtr -> PrimIO ()
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO ()

namespace PluginArray
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace PopStateEvent
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

namespace PromiseRejectionEvent
  
  %foreign "browser:lambda:x=>x.promise"
  prim__promise : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr

namespace RadioNodeList
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SharedWorker
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

namespace SharedWorkerGlobalScope
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onconnect"
  prim__onconnect : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onconnect = v}"
  prim__setOnconnect : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace Storage
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace StorageEvent
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.newValue"
  prim__newValue : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.storageArea"
  prim__storageArea : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

namespace SubmitEvent
  
  %foreign "browser:lambda:x=>x.submitter"
  prim__submitter : AnyPtr -> PrimIO AnyPtr

namespace TextMetrics
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxAscent"
  prim__actualBoundingBoxAscent : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxDescent"
  prim__actualBoundingBoxDescent : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxLeft"
  prim__actualBoundingBoxLeft : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxRight"
  prim__actualBoundingBoxRight : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.alphabeticBaseline"
  prim__alphabeticBaseline : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.emHeightAscent"
  prim__emHeightAscent : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.emHeightDescent"
  prim__emHeightDescent : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.fontBoundingBoxAscent"
  prim__fontBoundingBoxAscent : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.fontBoundingBoxDescent"
  prim__fontBoundingBoxDescent : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hangingBaseline"
  prim__hangingBaseline : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ideographicBaseline"
  prim__ideographicBaseline : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

namespace TextTrack
  
  %foreign "browser:lambda:x=>x.activeCues"
  prim__activeCues : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cues"
  prim__cues : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.inBandMetadataTrackDispatchType"
  prim__inBandMetadataTrackDispatchType : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oncuechange"
  prim__oncuechange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oncuechange = v}"
  prim__setOncuechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace TextTrackCue
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.endTime"
  prim__endTime : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.endTime = v}"
  prim__setEndTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.id = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onenter"
  prim__onenter : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onenter = v}"
  prim__setOnenter : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onexit"
  prim__onexit : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onexit = v}"
  prim__setOnexit : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.pauseOnExit"
  prim__pauseOnExit : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.pauseOnExit = v}"
  prim__setPauseOnExit : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.startTime"
  prim__startTime : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.startTime = v}"
  prim__setStartTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace TextTrackCueList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace TextTrackList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace TimeRanges
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace TrackEvent
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

namespace ValidityState
  
  %foreign "browser:lambda:x=>x.badInput"
  prim__badInput : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.customError"
  prim__customError : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.patternMismatch"
  prim__patternMismatch : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rangeOverflow"
  prim__rangeOverflow : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rangeUnderflow"
  prim__rangeUnderflow : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.stepMismatch"
  prim__stepMismatch : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.tooLong"
  prim__tooLong : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.tooShort"
  prim__tooShort : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.typeMismatch"
  prim__typeMismatch : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.valid"
  prim__valid : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.valueMissing"
  prim__valueMissing : AnyPtr -> PrimIO AnyPtr

namespace VideoTrack
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selected"
  prim__selected : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.selected = v}"
  prim__setSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace VideoTrackList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace WebSocket
  
  public export
  CLOSED : UInt16
  CLOSED = 3
  
  public export
  CLOSING : UInt16
  CLOSING = 2
  
  public export
  CONNECTING : UInt16
  CONNECTING = 0o0
  
  public export
  OPEN : UInt16
  OPEN = 1
  
  %foreign "browser:lambda:x=>x.bufferedAmount"
  prim__bufferedAmount : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.extensions"
  prim__extensions : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.binaryType"
  prim__binaryType : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.binaryType = v}"
  prim__setBinaryType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onclose"
  prim__onclose : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onclose = v}"
  prim__setOnclose : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onopen"
  prim__onopen : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onopen = v}"
  prim__setOnopen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace Window
  
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.customElements"
  prim__customElements : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.document"
  prim__document : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.event"
  prim__event : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.external"
  prim__external : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.frameElement"
  prim__frameElement : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.frames"
  prim__frames : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.history"
  prim__history : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.locationbar"
  prim__locationbar : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.menubar"
  prim__menubar : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.navigator"
  prim__navigator : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.originAgentCluster"
  prim__originAgentCluster : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.parent"
  prim__parent : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.personalbar"
  prim__personalbar : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.scrollbars"
  prim__scrollbars : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.self"
  prim__self : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.statusbar"
  prim__statusbar : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.toolbar"
  prim__toolbar : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.top"
  prim__top : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.window"
  prim__window : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.opener"
  prim__opener : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.opener = v}"
  prim__setOpener : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.status = v}"
  prim__setStatus : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace Worker
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace WorkerGlobalScope
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.navigator"
  prim__navigator : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.self"
  prim__self : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onlanguagechange"
  prim__onlanguagechange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onlanguagechange = v}"
  prim__setOnlanguagechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onoffline"
  prim__onoffline : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onoffline = v}"
  prim__setOnoffline : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ononline"
  prim__ononline : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ononline = v}"
  prim__setOnonline : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onrejectionhandled"
  prim__onrejectionhandled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onrejectionhandled = v}"
  prim__setOnrejectionhandled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onunhandledrejection"
  prim__onunhandledrejection : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onunhandledrejection = v}"
  prim__setOnunhandledrejection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace WorkerLocation
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr

namespace WorkerNavigator
  
  %foreign "browser:lambda:x=>x.permissions"
  prim__permissions : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : AnyPtr -> PrimIO AnyPtr

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ARIAMixin
  
  %foreign "browser:lambda:x=>x.ariaAtomic"
  prim__ariaAtomic : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaAtomic = v}"
  prim__setAriaAtomic : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaAutoComplete"
  prim__ariaAutoComplete : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaAutoComplete = v}"
  prim__setAriaAutoComplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaBusy"
  prim__ariaBusy : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaBusy = v}"
  prim__setAriaBusy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaChecked"
  prim__ariaChecked : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaChecked = v}"
  prim__setAriaChecked : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaColCount"
  prim__ariaColCount : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaColCount = v}"
  prim__setAriaColCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaColIndex"
  prim__ariaColIndex : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaColIndex = v}"
  prim__setAriaColIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaColIndexText"
  prim__ariaColIndexText : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaColIndexText = v}"
  prim__setAriaColIndexText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaColSpan"
  prim__ariaColSpan : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaColSpan = v}"
  prim__setAriaColSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaCurrent"
  prim__ariaCurrent : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaCurrent = v}"
  prim__setAriaCurrent : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaDescription"
  prim__ariaDescription : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaDescription = v}"
  prim__setAriaDescription : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaDisabled"
  prim__ariaDisabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaDisabled = v}"
  prim__setAriaDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaExpanded"
  prim__ariaExpanded : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaExpanded = v}"
  prim__setAriaExpanded : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaHasPopup"
  prim__ariaHasPopup : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaHasPopup = v}"
  prim__setAriaHasPopup : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaHidden"
  prim__ariaHidden : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaHidden = v}"
  prim__setAriaHidden : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaInvalid"
  prim__ariaInvalid : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaInvalid = v}"
  prim__setAriaInvalid : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaKeyShortcuts"
  prim__ariaKeyShortcuts : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaKeyShortcuts = v}"
  prim__setAriaKeyShortcuts : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaLabel"
  prim__ariaLabel : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaLabel = v}"
  prim__setAriaLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaLevel"
  prim__ariaLevel : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaLevel = v}"
  prim__setAriaLevel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaLive"
  prim__ariaLive : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaLive = v}"
  prim__setAriaLive : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaModal"
  prim__ariaModal : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaModal = v}"
  prim__setAriaModal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaMultiLine"
  prim__ariaMultiLine : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaMultiLine = v}"
  prim__setAriaMultiLine : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaMultiSelectable"
  prim__ariaMultiSelectable : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaMultiSelectable = v}"
  prim__setAriaMultiSelectable : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaOrientation"
  prim__ariaOrientation : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaOrientation = v}"
  prim__setAriaOrientation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaPlaceholder"
  prim__ariaPlaceholder : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaPlaceholder = v}"
  prim__setAriaPlaceholder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaPosInSet"
  prim__ariaPosInSet : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaPosInSet = v}"
  prim__setAriaPosInSet : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaPressed"
  prim__ariaPressed : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaPressed = v}"
  prim__setAriaPressed : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaReadOnly"
  prim__ariaReadOnly : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaReadOnly = v}"
  prim__setAriaReadOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaRequired"
  prim__ariaRequired : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaRequired = v}"
  prim__setAriaRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaRoleDescription"
  prim__ariaRoleDescription : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaRoleDescription = v}"
  prim__setAriaRoleDescription : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaRowCount"
  prim__ariaRowCount : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaRowCount = v}"
  prim__setAriaRowCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaRowIndex"
  prim__ariaRowIndex : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaRowIndex = v}"
  prim__setAriaRowIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaRowIndexText"
  prim__ariaRowIndexText : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaRowIndexText = v}"
  prim__setAriaRowIndexText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaRowSpan"
  prim__ariaRowSpan : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaRowSpan = v}"
  prim__setAriaRowSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaSelected"
  prim__ariaSelected : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaSelected = v}"
  prim__setAriaSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaSetSize"
  prim__ariaSetSize : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaSetSize = v}"
  prim__setAriaSetSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaSort"
  prim__ariaSort : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaSort = v}"
  prim__setAriaSort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaValueMax"
  prim__ariaValueMax : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaValueMax = v}"
  prim__setAriaValueMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaValueMin"
  prim__ariaValueMin : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaValueMin = v}"
  prim__setAriaValueMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaValueNow"
  prim__ariaValueNow : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaValueNow = v}"
  prim__setAriaValueNow : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ariaValueText"
  prim__ariaValueText : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ariaValueText = v}"
  prim__setAriaValueText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.role"
  prim__role : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.role = v}"
  prim__setRole : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace AbstractWorker
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CanvasCompositing
  
  %foreign "browser:lambda:x=>x.globalAlpha"
  prim__globalAlpha : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.globalAlpha = v}"
  prim__setGlobalAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.globalCompositeOperation"
  prim__globalCompositeOperation : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.globalCompositeOperation = v}"
  prim__setGlobalCompositeOperation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CanvasFillStrokeStyles
  
  %foreign "browser:lambda:x=>x.fillStyle"
  prim__fillStyle : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.fillStyle = v}"
  prim__setFillStyle : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.strokeStyle"
  prim__strokeStyle : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.strokeStyle = v}"
  prim__setStrokeStyle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CanvasFilters
  
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.filter = v}"
  prim__setFilter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CanvasImageSmoothing
  
  %foreign "browser:lambda:x=>x.imageSmoothingEnabled"
  prim__imageSmoothingEnabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.imageSmoothingEnabled = v}"
  prim__setImageSmoothingEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.imageSmoothingQuality"
  prim__imageSmoothingQuality : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.imageSmoothingQuality = v}"
  prim__setImageSmoothingQuality : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CanvasPathDrawingStyles
  
  %foreign "browser:lambda:x=>x.lineCap"
  prim__lineCap : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.lineCap = v}"
  prim__setLineCap : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lineDashOffset"
  prim__lineDashOffset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.lineDashOffset = v}"
  prim__setLineDashOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lineJoin"
  prim__lineJoin : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.lineJoin = v}"
  prim__setLineJoin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lineWidth"
  prim__lineWidth : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.lineWidth = v}"
  prim__setLineWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.miterLimit"
  prim__miterLimit : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.miterLimit = v}"
  prim__setMiterLimit : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CanvasShadowStyles
  
  %foreign "browser:lambda:x=>x.shadowBlur"
  prim__shadowBlur : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.shadowBlur = v}"
  prim__setShadowBlur : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.shadowColor"
  prim__shadowColor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.shadowColor = v}"
  prim__setShadowColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.shadowOffsetX"
  prim__shadowOffsetX : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.shadowOffsetX = v}"
  prim__setShadowOffsetX : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.shadowOffsetY"
  prim__shadowOffsetY : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.shadowOffsetY = v}"
  prim__setShadowOffsetY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CanvasTextDrawingStyles
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.direction = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.font"
  prim__font : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.font = v}"
  prim__setFont : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.textAlign"
  prim__textAlign : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.textAlign = v}"
  prim__setTextAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.textBaseline"
  prim__textBaseline : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.textBaseline = v}"
  prim__setTextBaseline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace DocumentAndElementEventHandlers
  
  %foreign "browser:lambda:x=>x.oncopy"
  prim__oncopy : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oncopy = v}"
  prim__setOncopy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oncut"
  prim__oncut : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oncut = v}"
  prim__setOncut : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onpaste"
  prim__onpaste : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onpaste = v}"
  prim__setOnpaste : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ElementContentEditable
  
  %foreign "browser:lambda:x=>x.isContentEditable"
  prim__isContentEditable : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.contentEditable"
  prim__contentEditable : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.contentEditable = v}"
  prim__setContentEditable : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.enterKeyHint"
  prim__enterKeyHint : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.enterKeyHint = v}"
  prim__setEnterKeyHint : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.inputMode"
  prim__inputMode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.inputMode = v}"
  prim__setInputMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace GlobalEventHandlers
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onauxclick"
  prim__onauxclick : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onauxclick = v}"
  prim__setOnauxclick : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onblur"
  prim__onblur : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onblur = v}"
  prim__setOnblur : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oncancel"
  prim__oncancel : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oncancel = v}"
  prim__setOncancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oncanplay"
  prim__oncanplay : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oncanplay = v}"
  prim__setOncanplay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oncanplaythrough"
  prim__oncanplaythrough : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oncanplaythrough = v}"
  prim__setOncanplaythrough : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onclick"
  prim__onclick : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onclick = v}"
  prim__setOnclick : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onclose"
  prim__onclose : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onclose = v}"
  prim__setOnclose : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oncontextmenu"
  prim__oncontextmenu : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oncontextmenu = v}"
  prim__setOncontextmenu : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oncuechange"
  prim__oncuechange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oncuechange = v}"
  prim__setOncuechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ondblclick"
  prim__ondblclick : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ondblclick = v}"
  prim__setOndblclick : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ondrag"
  prim__ondrag : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ondrag = v}"
  prim__setOndrag : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ondragend"
  prim__ondragend : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ondragend = v}"
  prim__setOndragend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ondragenter"
  prim__ondragenter : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ondragenter = v}"
  prim__setOndragenter : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ondragleave"
  prim__ondragleave : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ondragleave = v}"
  prim__setOndragleave : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ondragover"
  prim__ondragover : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ondragover = v}"
  prim__setOndragover : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ondragstart"
  prim__ondragstart : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ondragstart = v}"
  prim__setOndragstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ondrop"
  prim__ondrop : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ondrop = v}"
  prim__setOndrop : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ondurationchange"
  prim__ondurationchange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ondurationchange = v}"
  prim__setOndurationchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onemptied"
  prim__onemptied : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onemptied = v}"
  prim__setOnemptied : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onended"
  prim__onended : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onended = v}"
  prim__setOnended : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onfocus"
  prim__onfocus : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onfocus = v}"
  prim__setOnfocus : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onformdata"
  prim__onformdata : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onformdata = v}"
  prim__setOnformdata : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oninput"
  prim__oninput : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oninput = v}"
  prim__setOninput : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oninvalid"
  prim__oninvalid : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oninvalid = v}"
  prim__setOninvalid : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onkeydown"
  prim__onkeydown : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onkeydown = v}"
  prim__setOnkeydown : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onkeypress"
  prim__onkeypress : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onkeypress = v}"
  prim__setOnkeypress : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onkeyup"
  prim__onkeyup : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onkeyup = v}"
  prim__setOnkeyup : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onload = v}"
  prim__setOnload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onloadeddata"
  prim__onloadeddata : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onloadeddata = v}"
  prim__setOnloadeddata : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onloadedmetadata"
  prim__onloadedmetadata : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onloadedmetadata = v}"
  prim__setOnloadedmetadata : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
  prim__setOnloadstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmousedown"
  prim__onmousedown : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmousedown = v}"
  prim__setOnmousedown : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmouseenter"
  prim__onmouseenter : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmouseenter = v}"
  prim__setOnmouseenter : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmouseleave"
  prim__onmouseleave : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmouseleave = v}"
  prim__setOnmouseleave : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmousemove"
  prim__onmousemove : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmousemove = v}"
  prim__setOnmousemove : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmouseout"
  prim__onmouseout : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmouseout = v}"
  prim__setOnmouseout : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmouseover"
  prim__onmouseover : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmouseover = v}"
  prim__setOnmouseover : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmouseup"
  prim__onmouseup : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmouseup = v}"
  prim__setOnmouseup : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onpause"
  prim__onpause : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onpause = v}"
  prim__setOnpause : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onplay"
  prim__onplay : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onplay = v}"
  prim__setOnplay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onplaying"
  prim__onplaying : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onplaying = v}"
  prim__setOnplaying : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
  prim__setOnprogress : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onratechange"
  prim__onratechange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onratechange = v}"
  prim__setOnratechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onreset"
  prim__onreset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onreset = v}"
  prim__setOnreset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onresize"
  prim__onresize : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onresize = v}"
  prim__setOnresize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onscroll"
  prim__onscroll : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onscroll = v}"
  prim__setOnscroll : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onsecuritypolicyviolation"
  prim__onsecuritypolicyviolation : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onsecuritypolicyviolation = v}"
  prim__setOnsecuritypolicyviolation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onseeked"
  prim__onseeked : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onseeked = v}"
  prim__setOnseeked : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onseeking"
  prim__onseeking : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onseeking = v}"
  prim__setOnseeking : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onselect"
  prim__onselect : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onselect = v}"
  prim__setOnselect : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onslotchange"
  prim__onslotchange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onslotchange = v}"
  prim__setOnslotchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onstalled"
  prim__onstalled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onstalled = v}"
  prim__setOnstalled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onsubmit"
  prim__onsubmit : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onsubmit = v}"
  prim__setOnsubmit : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onsuspend"
  prim__onsuspend : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onsuspend = v}"
  prim__setOnsuspend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ontimeupdate"
  prim__ontimeupdate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ontimeupdate = v}"
  prim__setOntimeupdate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ontoggle"
  prim__ontoggle : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ontoggle = v}"
  prim__setOntoggle : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onvolumechange"
  prim__onvolumechange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onvolumechange = v}"
  prim__setOnvolumechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onwaiting"
  prim__onwaiting : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onwaiting = v}"
  prim__setOnwaiting : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onwebkitanimationend"
  prim__onwebkitanimationend : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationend = v}"
  prim__setOnwebkitanimationend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onwebkitanimationiteration"
  prim__onwebkitanimationiteration : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationiteration = v}"
  prim__setOnwebkitanimationiteration : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onwebkitanimationstart"
  prim__onwebkitanimationstart : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationstart = v}"
  prim__setOnwebkitanimationstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onwebkittransitionend"
  prim__onwebkittransitionend : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onwebkittransitionend = v}"
  prim__setOnwebkittransitionend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onwheel"
  prim__onwheel : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onwheel = v}"
  prim__setOnwheel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLHyperlinkElementUtils
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.hash = v}"
  prim__setHash : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.host = v}"
  prim__setHost : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.hostname = v}"
  prim__setHostname : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.password"
  prim__password : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.password = v}"
  prim__setPassword : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.pathname = v}"
  prim__setPathname : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.port = v}"
  prim__setPort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.protocol = v}"
  prim__setProtocol : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.search = v}"
  prim__setSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.username"
  prim__username : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.username = v}"
  prim__setUsername : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLOrSVGElement
  
  %foreign "browser:lambda:x=>x.dataset"
  prim__dataset : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.autofocus"
  prim__autofocus : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.autofocus = v}"
  prim__setAutofocus : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.nonce"
  prim__nonce : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.nonce = v}"
  prim__setNonce : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.tabIndex"
  prim__tabIndex : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.tabIndex = v}"
  prim__setTabIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace NavigatorConcurrentHardware
  
  %foreign "browser:lambda:x=>x.hardwareConcurrency"
  prim__hardwareConcurrency : AnyPtr -> PrimIO AnyPtr

namespace NavigatorCookies
  
  %foreign "browser:lambda:x=>x.cookieEnabled"
  prim__cookieEnabled : AnyPtr -> PrimIO AnyPtr

namespace NavigatorID
  
  %foreign "browser:lambda:x=>x.appCodeName"
  prim__appCodeName : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.appName"
  prim__appName : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.appVersion"
  prim__appVersion : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.platform"
  prim__platform : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.product"
  prim__product : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.productSub"
  prim__productSub : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.userAgent"
  prim__userAgent : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.vendor"
  prim__vendor : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.vendorSub"
  prim__vendorSub : AnyPtr -> PrimIO AnyPtr

namespace NavigatorLanguage
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.languages"
  prim__languages : AnyPtr -> PrimIO AnyPtr

namespace NavigatorOnLine
  
  %foreign "browser:lambda:x=>x.onLine"
  prim__onLine : AnyPtr -> PrimIO AnyPtr

namespace NavigatorPlugins
  
  %foreign "browser:lambda:x=>x.mimeTypes"
  prim__mimeTypes : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.plugins"
  prim__plugins : AnyPtr -> PrimIO AnyPtr

namespace WindowEventHandlers
  
  %foreign "browser:lambda:x=>x.onafterprint"
  prim__onafterprint : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onafterprint = v}"
  prim__setOnafterprint : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onbeforeprint"
  prim__onbeforeprint : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onbeforeprint = v}"
  prim__setOnbeforeprint : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onbeforeunload"
  prim__onbeforeunload : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onbeforeunload = v}"
  prim__setOnbeforeunload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onhashchange"
  prim__onhashchange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onhashchange = v}"
  prim__setOnhashchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onlanguagechange"
  prim__onlanguagechange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onlanguagechange = v}"
  prim__setOnlanguagechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onoffline"
  prim__onoffline : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onoffline = v}"
  prim__setOnoffline : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ononline"
  prim__ononline : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ononline = v}"
  prim__setOnonline : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onpagehide"
  prim__onpagehide : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onpagehide = v}"
  prim__setOnpagehide : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onpageshow"
  prim__onpageshow : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onpageshow = v}"
  prim__setOnpageshow : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onpopstate"
  prim__onpopstate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onpopstate = v}"
  prim__setOnpopstate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onrejectionhandled"
  prim__onrejectionhandled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onrejectionhandled = v}"
  prim__setOnrejectionhandled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onstorage"
  prim__onstorage : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onstorage = v}"
  prim__setOnstorage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onunhandledrejection"
  prim__onunhandledrejection : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onunhandledrejection = v}"
  prim__setOnunhandledrejection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onunload"
  prim__onunload : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onunload = v}"
  prim__setOnunload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AssignedNodesOptions
  
  %foreign "browser:lambda:x=>x.flatten"
  prim__flatten : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.flatten = v}"
  prim__setFlatten : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CanvasRenderingContext2DSettings
  
  %foreign "browser:lambda:x=>x.alpha"
  prim__alpha : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.alpha = v}"
  prim__setAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.desynchronized"
  prim__desynchronized : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.desynchronized = v}"
  prim__setDesynchronized : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CloseEventInit
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.code = v}"
  prim__setCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.reason = v}"
  prim__setReason : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.wasClean"
  prim__wasClean : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.wasClean = v}"
  prim__setWasClean : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace DragEventInit
  
  %foreign "browser:lambda:x=>x.dataTransfer"
  prim__dataTransfer : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.dataTransfer = v}"
  prim__setDataTransfer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ElementDefinitionOptions
  
  %foreign "browser:lambda:x=>x.extends"
  prim__extends : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.extends = v}"
  prim__setExtends : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ErrorEventInit
  
  %foreign "browser:lambda:x=>x.colno"
  prim__colno : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.colno = v}"
  prim__setColno : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.error"
  prim__error : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.error = v}"
  prim__setError : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.filename = v}"
  prim__setFilename : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lineno"
  prim__lineno : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.lineno = v}"
  prim__setLineno : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.message"
  prim__message : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.message = v}"
  prim__setMessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace EventSourceInit
  
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.withCredentials = v}"
  prim__setWithCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace FocusOptions
  
  %foreign "browser:lambda:x=>x.preventScroll"
  prim__preventScroll : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.preventScroll = v}"
  prim__setPreventScroll : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace FormDataEventInit
  
  %foreign "browser:lambda:x=>x.formData"
  prim__formData : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.formData = v}"
  prim__setFormData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HashChangeEventInit
  
  %foreign "browser:lambda:x=>x.newURL"
  prim__newURL : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.newURL = v}"
  prim__setNewURL : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oldURL"
  prim__oldURL : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oldURL = v}"
  prim__setOldURL : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ImageBitmapOptions
  
  %foreign "browser:lambda:x=>x.colorSpaceConversion"
  prim__colorSpaceConversion : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.colorSpaceConversion = v}"
  prim__setColorSpaceConversion : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.imageOrientation"
  prim__imageOrientation : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.imageOrientation = v}"
  prim__setImageOrientation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.premultiplyAlpha"
  prim__premultiplyAlpha : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.premultiplyAlpha = v}"
  prim__setPremultiplyAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.resizeHeight"
  prim__resizeHeight : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.resizeHeight = v}"
  prim__setResizeHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.resizeQuality"
  prim__resizeQuality : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.resizeQuality = v}"
  prim__setResizeQuality : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.resizeWidth"
  prim__resizeWidth : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.resizeWidth = v}"
  prim__setResizeWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ImageBitmapRenderingContextSettings
  
  %foreign "browser:lambda:x=>x.alpha"
  prim__alpha : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.alpha = v}"
  prim__setAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ImageEncodeOptions
  
  %foreign "browser:lambda:x=>x.quality"
  prim__quality : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.quality = v}"
  prim__setQuality : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MessageEventInit
  
  %foreign "browser:lambda:x=>x.data"
  prim__data : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.lastEventId = v}"
  prim__setLastEventId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.origin = v}"
  prim__setOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ports = v}"
  prim__setPorts : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.source = v}"
  prim__setSource : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace PageTransitionEventInit
  
  %foreign "browser:lambda:x=>x.persisted"
  prim__persisted : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.persisted = v}"
  prim__setPersisted : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace PopStateEventInit
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.state = v}"
  prim__setState : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace PostMessageOptions
  
  %foreign "browser:lambda:x=>x.transfer"
  prim__transfer : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.transfer = v}"
  prim__setTransfer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace PromiseRejectionEventInit
  
  %foreign "browser:lambda:x=>x.promise"
  prim__promise : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.promise = v}"
  prim__setPromise : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.reason = v}"
  prim__setReason : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace StorageEventInit
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.key = v}"
  prim__setKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.newValue"
  prim__newValue : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.newValue = v}"
  prim__setNewValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oldValue = v}"
  prim__setOldValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.storageArea"
  prim__storageArea : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.storageArea = v}"
  prim__setStorageArea : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.url = v}"
  prim__setUrl : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SubmitEventInit
  
  %foreign "browser:lambda:x=>x.submitter"
  prim__submitter : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.submitter = v}"
  prim__setSubmitter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace TrackEventInit
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.track = v}"
  prim__setTrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ValidityStateFlags
  
  %foreign "browser:lambda:x=>x.badInput"
  prim__badInput : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.badInput = v}"
  prim__setBadInput : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.customError"
  prim__customError : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.customError = v}"
  prim__setCustomError : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.patternMismatch"
  prim__patternMismatch : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.patternMismatch = v}"
  prim__setPatternMismatch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rangeOverflow"
  prim__rangeOverflow : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.rangeOverflow = v}"
  prim__setRangeOverflow : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rangeUnderflow"
  prim__rangeUnderflow : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.rangeUnderflow = v}"
  prim__setRangeUnderflow : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.stepMismatch"
  prim__stepMismatch : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.stepMismatch = v}"
  prim__setStepMismatch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.tooLong"
  prim__tooLong : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.tooLong = v}"
  prim__setTooLong : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.tooShort"
  prim__tooShort : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.tooShort = v}"
  prim__setTooShort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.typeMismatch"
  prim__typeMismatch : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.typeMismatch = v}"
  prim__setTypeMismatch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.valueMissing"
  prim__valueMissing : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.valueMissing = v}"
  prim__setValueMissing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace WindowPostMessageOptions
  
  %foreign "browser:lambda:x=>x.targetOrigin"
  prim__targetOrigin : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.targetOrigin = v}"
  prim__setTargetOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace WorkerOptions
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.credentials = v}"
  prim__setCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace WorkletOptions
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.credentials = v}"
  prim__setCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast AudioTrackList EventTarget where
  cast = believe_me

export
Cast BeforeUnloadEvent Event where
  cast = believe_me

export
Cast BroadcastChannel EventTarget where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasCompositing where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasDrawImage where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasDrawPath where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasFillStrokeStyles where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasFilters where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasImageData where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasImageSmoothing where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasPath where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasPathDrawingStyles where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasRect where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasShadowStyles where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasState where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasText where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasTextDrawingStyles where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasTransform where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasUserInterface where
  cast = believe_me

export
Cast CloseEvent Event where
  cast = believe_me

export
Cast CloseEventInit EventInit where
  cast = believe_me

export
Cast DedicatedWorkerGlobalScope WorkerGlobalScope where
  cast = believe_me

export
Cast Document DocumentAndElementEventHandlers where
  cast = believe_me

export
Cast Document GlobalEventHandlers where
  cast = believe_me

export
Cast DragEvent MouseEvent where
  cast = believe_me

export
Cast DragEventInit MouseEventInit where
  cast = believe_me

export
Cast ElementInternals ARIAMixin where
  cast = believe_me

export
Cast ErrorEvent Event where
  cast = believe_me

export
Cast ErrorEventInit EventInit where
  cast = believe_me

export
Cast EventSource EventTarget where
  cast = believe_me

export
Cast FormDataEvent Event where
  cast = believe_me

export
Cast FormDataEventInit EventInit where
  cast = believe_me

export
Cast HTMLAnchorElement HTMLElement where
  cast = believe_me

export
Cast HTMLAnchorElement HTMLHyperlinkElementUtils where
  cast = believe_me

export
Cast HTMLAreaElement HTMLElement where
  cast = believe_me

export
Cast HTMLAreaElement HTMLHyperlinkElementUtils where
  cast = believe_me

export
Cast HTMLAudioElement HTMLMediaElement where
  cast = believe_me

export
Cast HTMLBRElement HTMLElement where
  cast = believe_me

export
Cast HTMLBaseElement HTMLElement where
  cast = believe_me

export
Cast HTMLBodyElement HTMLElement where
  cast = believe_me

export
Cast HTMLBodyElement WindowEventHandlers where
  cast = believe_me

export
Cast HTMLButtonElement HTMLElement where
  cast = believe_me

export
Cast HTMLCanvasElement HTMLElement where
  cast = believe_me

export
Cast HTMLDListElement HTMLElement where
  cast = believe_me

export
Cast HTMLDataElement HTMLElement where
  cast = believe_me

export
Cast HTMLDataListElement HTMLElement where
  cast = believe_me

export
Cast HTMLDetailsElement HTMLElement where
  cast = believe_me

export
Cast HTMLDialogElement HTMLElement where
  cast = believe_me

export
Cast HTMLDirectoryElement HTMLElement where
  cast = believe_me

export
Cast HTMLDivElement HTMLElement where
  cast = believe_me

export
Cast HTMLElement DocumentAndElementEventHandlers where
  cast = believe_me

export
Cast HTMLElement Element where
  cast = believe_me

export
Cast HTMLElement ElementContentEditable where
  cast = believe_me

export
Cast HTMLElement GlobalEventHandlers where
  cast = believe_me

export
Cast HTMLElement HTMLOrSVGElement where
  cast = believe_me

export
Cast HTMLEmbedElement HTMLElement where
  cast = believe_me

export
Cast HTMLFieldSetElement HTMLElement where
  cast = believe_me

export
Cast HTMLFontElement HTMLElement where
  cast = believe_me

export
Cast HTMLFormControlsCollection HTMLCollection where
  cast = believe_me

export
Cast HTMLFormElement HTMLElement where
  cast = believe_me

export
Cast HTMLFrameElement HTMLElement where
  cast = believe_me

export
Cast HTMLFrameSetElement HTMLElement where
  cast = believe_me

export
Cast HTMLFrameSetElement WindowEventHandlers where
  cast = believe_me

export
Cast HTMLHRElement HTMLElement where
  cast = believe_me

export
Cast HTMLHeadElement HTMLElement where
  cast = believe_me

export
Cast HTMLHeadingElement HTMLElement where
  cast = believe_me

export
Cast HTMLHtmlElement HTMLElement where
  cast = believe_me

export
Cast HTMLIFrameElement HTMLElement where
  cast = believe_me

export
Cast HTMLImageElement HTMLElement where
  cast = believe_me

export
Cast HTMLInputElement HTMLElement where
  cast = believe_me

export
Cast HTMLLIElement HTMLElement where
  cast = believe_me

export
Cast HTMLLabelElement HTMLElement where
  cast = believe_me

export
Cast HTMLLegendElement HTMLElement where
  cast = believe_me

export
Cast HTMLLinkElement HTMLElement where
  cast = believe_me

export
Cast HTMLLinkElement LinkStyle where
  cast = believe_me

export
Cast HTMLMapElement HTMLElement where
  cast = believe_me

export
Cast HTMLMarqueeElement HTMLElement where
  cast = believe_me

export
Cast HTMLMediaElement HTMLElement where
  cast = believe_me

export
Cast HTMLMenuElement HTMLElement where
  cast = believe_me

export
Cast HTMLMetaElement HTMLElement where
  cast = believe_me

export
Cast HTMLMeterElement HTMLElement where
  cast = believe_me

export
Cast HTMLModElement HTMLElement where
  cast = believe_me

export
Cast HTMLOListElement HTMLElement where
  cast = believe_me

export
Cast HTMLObjectElement HTMLElement where
  cast = believe_me

export
Cast HTMLOptGroupElement HTMLElement where
  cast = believe_me

export
Cast HTMLOptionElement HTMLElement where
  cast = believe_me

export
Cast HTMLOptionsCollection HTMLCollection where
  cast = believe_me

export
Cast HTMLOutputElement HTMLElement where
  cast = believe_me

export
Cast HTMLParagraphElement HTMLElement where
  cast = believe_me

export
Cast HTMLParamElement HTMLElement where
  cast = believe_me

export
Cast HTMLPictureElement HTMLElement where
  cast = believe_me

export
Cast HTMLPreElement HTMLElement where
  cast = believe_me

export
Cast HTMLProgressElement HTMLElement where
  cast = believe_me

export
Cast HTMLQuoteElement HTMLElement where
  cast = believe_me

export
Cast HTMLScriptElement HTMLElement where
  cast = believe_me

export
Cast HTMLSelectElement HTMLElement where
  cast = believe_me

export
Cast HTMLSlotElement HTMLElement where
  cast = believe_me

export
Cast HTMLSourceElement HTMLElement where
  cast = believe_me

export
Cast HTMLSpanElement HTMLElement where
  cast = believe_me

export
Cast HTMLStyleElement HTMLElement where
  cast = believe_me

export
Cast HTMLStyleElement LinkStyle where
  cast = believe_me

export
Cast HTMLTableCaptionElement HTMLElement where
  cast = believe_me

export
Cast HTMLTableCellElement HTMLElement where
  cast = believe_me

export
Cast HTMLTableColElement HTMLElement where
  cast = believe_me

export
Cast HTMLTableElement HTMLElement where
  cast = believe_me

export
Cast HTMLTableRowElement HTMLElement where
  cast = believe_me

export
Cast HTMLTableSectionElement HTMLElement where
  cast = believe_me

export
Cast HTMLTemplateElement HTMLElement where
  cast = believe_me

export
Cast HTMLTextAreaElement HTMLElement where
  cast = believe_me

export
Cast HTMLTimeElement HTMLElement where
  cast = believe_me

export
Cast HTMLTitleElement HTMLElement where
  cast = believe_me

export
Cast HTMLTrackElement HTMLElement where
  cast = believe_me

export
Cast HTMLUListElement HTMLElement where
  cast = believe_me

export
Cast HTMLUnknownElement HTMLElement where
  cast = believe_me

export
Cast HTMLVideoElement HTMLMediaElement where
  cast = believe_me

export
Cast HashChangeEvent Event where
  cast = believe_me

export
Cast HashChangeEventInit EventInit where
  cast = believe_me

export
Cast MessageEvent Event where
  cast = believe_me

export
Cast MessageEventInit EventInit where
  cast = believe_me

export
Cast MessagePort EventTarget where
  cast = believe_me

export
Cast Navigator NavigatorConcurrentHardware where
  cast = believe_me

export
Cast Navigator NavigatorContentUtils where
  cast = believe_me

export
Cast Navigator NavigatorCookies where
  cast = believe_me

export
Cast Navigator NavigatorID where
  cast = believe_me

export
Cast Navigator NavigatorLanguage where
  cast = believe_me

export
Cast Navigator NavigatorOnLine where
  cast = believe_me

export
Cast Navigator NavigatorPlugins where
  cast = believe_me

export
Cast OffscreenCanvas EventTarget where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasCompositing where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasDrawImage where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasDrawPath where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasFillStrokeStyles where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasFilters where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasImageData where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasImageSmoothing where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasPath where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasPathDrawingStyles where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasRect where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasShadowStyles where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasState where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasText where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasTextDrawingStyles where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasTransform where
  cast = believe_me

export
Cast PageTransitionEvent Event where
  cast = believe_me

export
Cast PageTransitionEventInit EventInit where
  cast = believe_me

export
Cast Path2D CanvasPath where
  cast = believe_me

export
Cast PopStateEvent Event where
  cast = believe_me

export
Cast PopStateEventInit EventInit where
  cast = believe_me

export
Cast PromiseRejectionEvent Event where
  cast = believe_me

export
Cast PromiseRejectionEventInit EventInit where
  cast = believe_me

export
Cast RadioNodeList NodeList where
  cast = believe_me

export
Cast SharedWorker AbstractWorker where
  cast = believe_me

export
Cast SharedWorker EventTarget where
  cast = believe_me

export
Cast SharedWorkerGlobalScope WorkerGlobalScope where
  cast = believe_me

export
Cast StorageEvent Event where
  cast = believe_me

export
Cast StorageEventInit EventInit where
  cast = believe_me

export
Cast SubmitEvent Event where
  cast = believe_me

export
Cast SubmitEventInit EventInit where
  cast = believe_me

export
Cast TextTrack EventTarget where
  cast = believe_me

export
Cast TextTrackCue EventTarget where
  cast = believe_me

export
Cast TextTrackList EventTarget where
  cast = believe_me

export
Cast TrackEvent Event where
  cast = believe_me

export
Cast TrackEventInit EventInit where
  cast = believe_me

export
Cast VideoTrackList EventTarget where
  cast = believe_me

export
Cast WebSocket EventTarget where
  cast = believe_me

export
Cast Window EventTarget where
  cast = believe_me

export
Cast Window GlobalEventHandlers where
  cast = believe_me

export
Cast Window WindowEventHandlers where
  cast = believe_me

export
Cast WindowPostMessageOptions PostMessageOptions where
  cast = believe_me

export
Cast Worker AbstractWorker where
  cast = believe_me

export
Cast Worker EventTarget where
  cast = believe_me

export
Cast WorkerGlobalScope EventTarget where
  cast = believe_me

export
Cast WorkerNavigator NavigatorConcurrentHardware where
  cast = believe_me

export
Cast WorkerNavigator NavigatorID where
  cast = believe_me

export
Cast WorkerNavigator NavigatorLanguage where
  cast = believe_me

export
Cast WorkerNavigator NavigatorOnLine where
  cast = believe_me