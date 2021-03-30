module Web.Html
 
import JS
import Web.Internal.HtmlPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AudioTrack
  
  public export
  JSType AudioTrack where
    parents =  [ Object ]

    mixins =  []

namespace AudioTrackList
  
  public export
  JSType AudioTrackList where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace BarProp
  
  public export
  JSType BarProp where
    parents =  [ Object ]

    mixins =  []

namespace BeforeUnloadEvent
  
  public export
  JSType BeforeUnloadEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace BroadcastChannel
  
  public export
  JSType BroadcastChannel where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace CanvasGradient
  
  public export
  JSType CanvasGradient where
    parents =  [ Object ]

    mixins =  []

namespace CanvasPattern
  
  public export
  JSType CanvasPattern where
    parents =  [ Object ]

    mixins =  []

namespace CanvasRenderingContext2D
  
  public export
  JSType CanvasRenderingContext2D where
    parents =  [ Object ]

    mixins =  [ CanvasCompositing
              , CanvasDrawImage
              , CanvasDrawPath
              , CanvasFillStrokeStyles
              , CanvasFilters
              , CanvasImageData
              , CanvasImageSmoothing
              , CanvasPath
              , CanvasPathDrawingStyles
              , CanvasRect
              , CanvasShadowStyles
              , CanvasState
              , CanvasText
              , CanvasTextDrawingStyles
              , CanvasTransform
              , CanvasUserInterface
              ]

namespace CloseEvent
  
  public export
  JSType CloseEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace CustomElementRegistry
  
  public export
  JSType CustomElementRegistry where
    parents =  [ Object ]

    mixins =  []

namespace DOMParser
  
  public export
  JSType DOMParser where
    parents =  [ Object ]

    mixins =  []

namespace DOMStringList
  
  public export
  JSType DOMStringList where
    parents =  [ Object ]

    mixins =  []

namespace DOMStringMap
  
  public export
  JSType DOMStringMap where
    parents =  [ Object ]

    mixins =  []

namespace DataTransfer
  
  public export
  JSType DataTransfer where
    parents =  [ Object ]

    mixins =  []

namespace DataTransferItem
  
  public export
  JSType DataTransferItem where
    parents =  [ Object ]

    mixins =  []

namespace DataTransferItemList
  
  public export
  JSType DataTransferItemList where
    parents =  [ Object ]

    mixins =  []

namespace DedicatedWorkerGlobalScope
  
  public export
  JSType DedicatedWorkerGlobalScope where
    parents =  [ WorkerGlobalScope , EventTarget , Object ]

    mixins =  []

namespace DragEvent
  
  public export
  JSType DragEvent where
    parents =  [ MouseEvent , UIEvent , Event , Object ]

    mixins =  []

namespace ElementInternals
  
  public export
  JSType ElementInternals where
    parents =  [ Object ]

    mixins =  [ ARIAMixin ]

namespace ErrorEvent
  
  public export
  JSType ErrorEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace EventSource
  
  public export
  JSType EventSource where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  public export
  CLOSED : UInt16
  CLOSED = 2
  
  public export
  CONNECTING : UInt16
  CONNECTING = 0
  
  public export
  OPEN : UInt16
  OPEN = 1

namespace External
  
  public export
  JSType External where
    parents =  [ Object ]

    mixins =  []

namespace FormDataEvent
  
  public export
  JSType FormDataEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace HTMLAllCollection
  
  public export
  JSType HTMLAllCollection where
    parents =  [ Object ]

    mixins =  []

namespace HTMLAnchorElement
  
  public export
  JSType HTMLAnchorElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLHyperlinkElementUtils
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLAreaElement
  
  public export
  JSType HTMLAreaElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLHyperlinkElementUtils
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLAudioElement
  
  public export
  JSType HTMLAudioElement where
    parents =  [ HTMLMediaElement
               , HTMLElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLBRElement
  
  public export
  JSType HTMLBRElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLBaseElement
  
  public export
  JSType HTMLBaseElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLBodyElement
  
  public export
  JSType HTMLBodyElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              , WindowEventHandlers
              ]

namespace HTMLButtonElement
  
  public export
  JSType HTMLButtonElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLCanvasElement
  
  public export
  JSType HTMLCanvasElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLDListElement
  
  public export
  JSType HTMLDListElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLDataElement
  
  public export
  JSType HTMLDataElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLDataListElement
  
  public export
  JSType HTMLDataListElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLDetailsElement
  
  public export
  JSType HTMLDetailsElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLDialogElement
  
  public export
  JSType HTMLDialogElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLDirectoryElement
  
  public export
  JSType HTMLDirectoryElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLDivElement
  
  public export
  JSType HTMLDivElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLElement
  
  public export
  JSType HTMLElement where
    parents =  [ Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLEmbedElement
  
  public export
  JSType HTMLEmbedElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLFieldSetElement
  
  public export
  JSType HTMLFieldSetElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLFontElement
  
  public export
  JSType HTMLFontElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLFormControlsCollection
  
  public export
  JSType HTMLFormControlsCollection where
    parents =  [ HTMLCollection , Object ]

    mixins =  []

namespace HTMLFormElement
  
  public export
  JSType HTMLFormElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLFrameElement
  
  public export
  JSType HTMLFrameElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLFrameSetElement
  
  public export
  JSType HTMLFrameSetElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              , WindowEventHandlers
              ]

namespace HTMLHRElement
  
  public export
  JSType HTMLHRElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLHeadElement
  
  public export
  JSType HTMLHeadElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLHeadingElement
  
  public export
  JSType HTMLHeadingElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLHtmlElement
  
  public export
  JSType HTMLHtmlElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLIFrameElement
  
  public export
  JSType HTMLIFrameElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLImageElement
  
  public export
  JSType HTMLImageElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLInputElement
  
  public export
  JSType HTMLInputElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLLIElement
  
  public export
  JSType HTMLLIElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLLabelElement
  
  public export
  JSType HTMLLabelElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLLegendElement
  
  public export
  JSType HTMLLegendElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLLinkElement
  
  public export
  JSType HTMLLinkElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , LinkStyle
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLMapElement
  
  public export
  JSType HTMLMapElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLMarqueeElement
  
  public export
  JSType HTMLMarqueeElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLMediaElement
  
  public export
  JSType HTMLMediaElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
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
  HAVE_NOTHING = 0
  
  public export
  NETWORK_EMPTY : UInt16
  NETWORK_EMPTY = 0
  
  public export
  NETWORK_IDLE : UInt16
  NETWORK_IDLE = 1
  
  public export
  NETWORK_LOADING : UInt16
  NETWORK_LOADING = 2
  
  public export
  NETWORK_NO_SOURCE : UInt16
  NETWORK_NO_SOURCE = 3

namespace HTMLMenuElement
  
  public export
  JSType HTMLMenuElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLMetaElement
  
  public export
  JSType HTMLMetaElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLMeterElement
  
  public export
  JSType HTMLMeterElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLModElement
  
  public export
  JSType HTMLModElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLOListElement
  
  public export
  JSType HTMLOListElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLObjectElement
  
  public export
  JSType HTMLObjectElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLOptGroupElement
  
  public export
  JSType HTMLOptGroupElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLOptionElement
  
  public export
  JSType HTMLOptionElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLOptionsCollection
  
  public export
  JSType HTMLOptionsCollection where
    parents =  [ HTMLCollection , Object ]

    mixins =  []

namespace HTMLOutputElement
  
  public export
  JSType HTMLOutputElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLParagraphElement
  
  public export
  JSType HTMLParagraphElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLParamElement
  
  public export
  JSType HTMLParamElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLPictureElement
  
  public export
  JSType HTMLPictureElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLPreElement
  
  public export
  JSType HTMLPreElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLProgressElement
  
  public export
  JSType HTMLProgressElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLQuoteElement
  
  public export
  JSType HTMLQuoteElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLScriptElement
  
  public export
  JSType HTMLScriptElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLSelectElement
  
  public export
  JSType HTMLSelectElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLSlotElement
  
  public export
  JSType HTMLSlotElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLSourceElement
  
  public export
  JSType HTMLSourceElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLSpanElement
  
  public export
  JSType HTMLSpanElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLStyleElement
  
  public export
  JSType HTMLStyleElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , LinkStyle
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLTableCaptionElement
  
  public export
  JSType HTMLTableCaptionElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLTableCellElement
  
  public export
  JSType HTMLTableCellElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLTableColElement
  
  public export
  JSType HTMLTableColElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLTableElement
  
  public export
  JSType HTMLTableElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLTableRowElement
  
  public export
  JSType HTMLTableRowElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLTableSectionElement
  
  public export
  JSType HTMLTableSectionElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLTemplateElement
  
  public export
  JSType HTMLTemplateElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLTextAreaElement
  
  public export
  JSType HTMLTextAreaElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLTimeElement
  
  public export
  JSType HTMLTimeElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLTitleElement
  
  public export
  JSType HTMLTitleElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLTrackElement
  
  public export
  JSType HTMLTrackElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
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
  NONE = 0

namespace HTMLUListElement
  
  public export
  JSType HTMLUListElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLUnknownElement
  
  public export
  JSType HTMLUnknownElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLVideoElement
  
  public export
  JSType HTMLVideoElement where
    parents =  [ HTMLMediaElement
               , HTMLElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HashChangeEvent
  
  public export
  JSType HashChangeEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace History
  
  public export
  JSType History where
    parents =  [ Object ]

    mixins =  []

namespace ImageBitmap
  
  public export
  JSType ImageBitmap where
    parents =  [ Object ]

    mixins =  []

namespace ImageBitmapRenderingContext
  
  public export
  JSType ImageBitmapRenderingContext where
    parents =  [ Object ]

    mixins =  []

namespace ImageData
  
  public export
  JSType ImageData where
    parents =  [ Object ]

    mixins =  []

namespace Location
  
  public export
  JSType Location where
    parents =  [ Object ]

    mixins =  []

namespace MediaError
  
  public export
  JSType MediaError where
    parents =  [ Object ]

    mixins =  []
  
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

namespace MessageChannel
  
  public export
  JSType MessageChannel where
    parents =  [ Object ]

    mixins =  []

namespace MessageEvent
  
  public export
  JSType MessageEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace MessagePort
  
  public export
  JSType MessagePort where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace MimeType
  
  public export
  JSType MimeType where
    parents =  [ Object ]

    mixins =  []

namespace MimeTypeArray
  
  public export
  JSType MimeTypeArray where
    parents =  [ Object ]

    mixins =  []

namespace Navigator
  
  public export
  JSType Navigator where
    parents =  [ Object ]

    mixins =  [ NavigatorConcurrentHardware
              , NavigatorContentUtils
              , NavigatorCookies
              , NavigatorID
              , NavigatorLanguage
              , NavigatorOnLine
              , NavigatorPlugins
              ]

namespace OffscreenCanvas
  
  public export
  JSType OffscreenCanvas where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace OffscreenCanvasRenderingContext2D
  
  public export
  JSType OffscreenCanvasRenderingContext2D where
    parents =  [ Object ]

    mixins =  [ CanvasCompositing
              , CanvasDrawImage
              , CanvasDrawPath
              , CanvasFillStrokeStyles
              , CanvasFilters
              , CanvasImageData
              , CanvasImageSmoothing
              , CanvasPath
              , CanvasPathDrawingStyles
              , CanvasRect
              , CanvasShadowStyles
              , CanvasState
              , CanvasText
              , CanvasTextDrawingStyles
              , CanvasTransform
              ]

namespace PageTransitionEvent
  
  public export
  JSType PageTransitionEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace Path2D
  
  public export
  JSType Path2D where
    parents =  [ Object ]

    mixins =  [ CanvasPath ]

namespace Plugin
  
  public export
  JSType Plugin where
    parents =  [ Object ]

    mixins =  []

namespace PluginArray
  
  public export
  JSType PluginArray where
    parents =  [ Object ]

    mixins =  []

namespace PopStateEvent
  
  public export
  JSType PopStateEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace PromiseRejectionEvent
  
  public export
  JSType PromiseRejectionEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace RadioNodeList
  
  public export
  JSType RadioNodeList where
    parents =  [ NodeList , Object ]

    mixins =  []

namespace SharedWorker
  
  public export
  JSType SharedWorker where
    parents =  [ EventTarget , Object ]

    mixins =  [ AbstractWorker ]

namespace SharedWorkerGlobalScope
  
  public export
  JSType SharedWorkerGlobalScope where
    parents =  [ WorkerGlobalScope , EventTarget , Object ]

    mixins =  []

namespace Storage
  
  public export
  JSType Storage where
    parents =  [ Object ]

    mixins =  []

namespace StorageEvent
  
  public export
  JSType StorageEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace SubmitEvent
  
  public export
  JSType SubmitEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace TextMetrics
  
  public export
  JSType TextMetrics where
    parents =  [ Object ]

    mixins =  []

namespace TextTrack
  
  public export
  JSType TextTrack where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace TextTrackCue
  
  public export
  JSType TextTrackCue where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace TextTrackCueList
  
  public export
  JSType TextTrackCueList where
    parents =  [ Object ]

    mixins =  []

namespace TextTrackList
  
  public export
  JSType TextTrackList where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace TimeRanges
  
  public export
  JSType TimeRanges where
    parents =  [ Object ]

    mixins =  []

namespace TrackEvent
  
  public export
  JSType TrackEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace ValidityState
  
  public export
  JSType ValidityState where
    parents =  [ Object ]

    mixins =  []

namespace VideoTrack
  
  public export
  JSType VideoTrack where
    parents =  [ Object ]

    mixins =  []

namespace VideoTrackList
  
  public export
  JSType VideoTrackList where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace WebSocket
  
  public export
  JSType WebSocket where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  public export
  CLOSED : UInt16
  CLOSED = 3
  
  public export
  CLOSING : UInt16
  CLOSING = 2
  
  public export
  CONNECTING : UInt16
  CONNECTING = 0
  
  public export
  OPEN : UInt16
  OPEN = 1

namespace Window
  
  public export
  JSType Window where
    parents =  [ EventTarget , Object ]

    mixins =  [ GlobalEventHandlers , WindowEventHandlers ]

namespace Worker
  
  public export
  JSType Worker where
    parents =  [ EventTarget , Object ]

    mixins =  [ AbstractWorker ]

namespace WorkerGlobalScope
  
  public export
  JSType WorkerGlobalScope where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace WorkerLocation
  
  public export
  JSType WorkerLocation where
    parents =  [ Object ]

    mixins =  []

namespace WorkerNavigator
  
  public export
  JSType WorkerNavigator where
    parents =  [ Object ]

    mixins =  [ NavigatorConcurrentHardware
              , NavigatorID
              , NavigatorLanguage
              , NavigatorOnLine
              ]

namespace Worklet
  
  public export
  JSType Worklet where
    parents =  [ Object ]

    mixins =  []

namespace WorkletGlobalScope
  
  public export
  JSType WorkletGlobalScope where
    parents =  [ Object ]

    mixins =  []

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------
































--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AssignedNodesOptions
  
  public export
  JSType AssignedNodesOptions where
    parents =  [ Object ]

    mixins =  []

namespace CanvasRenderingContext2DSettings
  
  public export
  JSType CanvasRenderingContext2DSettings where
    parents =  [ Object ]

    mixins =  []

namespace CloseEventInit
  
  public export
  JSType CloseEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace DragEventInit
  
  public export
  JSType DragEventInit where
    parents =  [ MouseEventInit
               , EventModifierInit
               , UIEventInit
               , EventInit
               , Object
               ]

    mixins =  []

namespace ElementDefinitionOptions
  
  public export
  JSType ElementDefinitionOptions where
    parents =  [ Object ]

    mixins =  []

namespace ErrorEventInit
  
  public export
  JSType ErrorEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace EventSourceInit
  
  public export
  JSType EventSourceInit where
    parents =  [ Object ]

    mixins =  []

namespace FocusOptions
  
  public export
  JSType FocusOptions where
    parents =  [ Object ]

    mixins =  []

namespace FormDataEventInit
  
  public export
  JSType FormDataEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace HashChangeEventInit
  
  public export
  JSType HashChangeEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace ImageBitmapOptions
  
  public export
  JSType ImageBitmapOptions where
    parents =  [ Object ]

    mixins =  []

namespace ImageBitmapRenderingContextSettings
  
  public export
  JSType ImageBitmapRenderingContextSettings where
    parents =  [ Object ]

    mixins =  []

namespace ImageEncodeOptions
  
  public export
  JSType ImageEncodeOptions where
    parents =  [ Object ]

    mixins =  []

namespace MessageEventInit
  
  public export
  JSType MessageEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace PageTransitionEventInit
  
  public export
  JSType PageTransitionEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace PopStateEventInit
  
  public export
  JSType PopStateEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace PostMessageOptions
  
  public export
  JSType PostMessageOptions where
    parents =  [ Object ]

    mixins =  []

namespace PromiseRejectionEventInit
  
  public export
  JSType PromiseRejectionEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace StorageEventInit
  
  public export
  JSType StorageEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace SubmitEventInit
  
  public export
  JSType SubmitEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace TrackEventInit
  
  public export
  JSType TrackEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace ValidityStateFlags
  
  public export
  JSType ValidityStateFlags where
    parents =  [ Object ]

    mixins =  []

namespace WindowPostMessageOptions
  
  public export
  JSType WindowPostMessageOptions where
    parents =  [ PostMessageOptions , Object ]

    mixins =  []

namespace WorkerOptions
  
  public export
  JSType WorkerOptions where
    parents =  [ Object ]

    mixins =  []

namespace WorkletOptions
  
  public export
  JSType WorkletOptions where
    parents =  [ Object ]

    mixins =  []

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------





