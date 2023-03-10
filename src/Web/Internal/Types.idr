module Web.Internal.Types

import JS
import public Web.Internal.AnimationTypes as Types
import public Web.Internal.ClipboardTypes as Types
import public Web.Internal.CssTypes as Types
import public Web.Internal.DomTypes as Types
import public Web.Internal.FetchTypes as Types
import public Web.Internal.FileTypes as Types
import public Web.Internal.GeometryTypes as Types
import public Web.Internal.HtmlTypes as Types
import public Web.Internal.IndexedDBTypes as Types
import public Web.Internal.MediasourceTypes as Types
import public Web.Internal.MediastreamTypes as Types
import public Web.Internal.PermissionsTypes as Types
import public Web.Internal.ServiceworkerTypes as Types
import public Web.Internal.StreamsTypes as Types
import public Web.Internal.SvgTypes as Types
import public Web.Internal.UIEventsTypes as Types
import public Web.Internal.UrlTypes as Types
import public Web.Internal.VisibilityTypes as Types
import public Web.Internal.WebglTypes as Types
import public Web.Internal.WebidlTypes as Types
import public Web.Internal.XhrTypes as Types

%default total


--------------------------------------------------------------------------------
--          Inheritance
--------------------------------------------------------------------------------

public export
JSType AbortController where
  parents = [Object]

  mixins = []


public export
JSType AbortSignal where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType AbstractRange where
  parents = [Object]

  mixins = []


public export
JSType Animation where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType AnimationEffect where
  parents = [Object]

  mixins = []


public export
JSType AnimationPlaybackEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType AnimationTimeline where
  parents = [Object]

  mixins = []


public export
JSType Attr where
  parents = [Node, EventTarget, Object]

  mixins = []


public export
JSType AudioTrack where
  parents = [Object]

  mixins = []


public export
JSType AudioTrackList where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType BarProp where
  parents = [Object]

  mixins = []


public export
JSType BeforeUnloadEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType Blob where
  parents = [Object]

  mixins = []


public export
JSType BroadcastChannel where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType ByteLengthQueuingStrategy where
  parents = [Object]

  mixins = []


public export
JSType CDATASection where
  parents = [Text, CharacterData, Node, EventTarget, Object]

  mixins = [ChildNode, NonDocumentTypeChildNode, Slottable]


public export
JSType CSSGroupingRule where
  parents = [CSSRule, Object]

  mixins = []


public export
JSType CSSImportRule where
  parents = [CSSRule, Object]

  mixins = []


public export
JSType CSSMarginRule where
  parents = [CSSRule, Object]

  mixins = []


public export
JSType CSSNamespaceRule where
  parents = [CSSRule, Object]

  mixins = []


public export
JSType CSSPageRule where
  parents = [CSSGroupingRule, CSSRule, Object]

  mixins = []


public export
JSType CSSPseudoElement where
  parents = [EventTarget, Object]

  mixins = [Animatable]


public export
JSType CSSRule where
  parents = [Object]

  mixins = []


public export
JSType CSSRuleList where
  parents = [Object]

  mixins = []


public export
JSType CSSStyleDeclaration where
  parents = [Object]

  mixins = []


public export
JSType CSSStyleRule where
  parents = [CSSRule, Object]

  mixins = []


public export
JSType CSSStyleSheet where
  parents = [StyleSheet, Object]

  mixins = []


public export
JSType Cache where
  parents = [Object]

  mixins = []


public export
JSType CacheStorage where
  parents = [Object]

  mixins = []


public export
JSType CanvasGradient where
  parents = [Object]

  mixins = []


public export
JSType CanvasPattern where
  parents = [Object]

  mixins = []


public export
JSType CanvasRenderingContext2D where
  parents = [Object]

  mixins =
    [ CanvasCompositing
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


public export
JSType CharacterData where
  parents = [Node, EventTarget, Object]

  mixins = [ChildNode, NonDocumentTypeChildNode]


public export
JSType Client where
  parents = [Object]

  mixins = []


public export
JSType Clients where
  parents = [Object]

  mixins = []


public export
JSType Clipboard where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType ClipboardEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType ClipboardItem where
  parents = [Object]

  mixins = []


public export
JSType CloseEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType Comment where
  parents = [CharacterData, Node, EventTarget, Object]

  mixins = [ChildNode, NonDocumentTypeChildNode]


public export
JSType CompositionEvent where
  parents = [UIEvent, Event, Object]

  mixins = []


public export
JSType ConstrainablePattern where
  parents = [Object]

  mixins = []


public export
JSType CountQueuingStrategy where
  parents = [Object]

  mixins = []


public export
JSType CustomElementRegistry where
  parents = [Object]

  mixins = []


public export
JSType CustomEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType DOMException where
  parents = [Object]

  mixins = []


public export
JSType DOMImplementation where
  parents = [Object]

  mixins = []


public export
JSType DOMMatrix where
  parents = [DOMMatrixReadOnly, Object]

  mixins = []


public export
JSType DOMMatrixReadOnly where
  parents = [Object]

  mixins = []


public export
JSType DOMParser where
  parents = [Object]

  mixins = []


public export
JSType DOMPoint where
  parents = [DOMPointReadOnly, Object]

  mixins = []


public export
JSType DOMPointReadOnly where
  parents = [Object]

  mixins = []


public export
JSType DOMQuad where
  parents = [Object]

  mixins = []


public export
JSType DOMRect where
  parents = [DOMRectReadOnly, Object]

  mixins = []


public export
JSType DOMRectList where
  parents = [Object]

  mixins = []


public export
JSType DOMRectReadOnly where
  parents = [Object]

  mixins = []


public export
JSType DOMStringList where
  parents = [Object]

  mixins = []


public export
JSType DOMStringMap where
  parents = [Object]

  mixins = []


public export
JSType DOMTokenList where
  parents = [Object]

  mixins = []


public export
JSType DataTransfer where
  parents = [Object]

  mixins = []


public export
JSType DataTransferItem where
  parents = [Object]

  mixins = []


public export
JSType DataTransferItemList where
  parents = [Object]

  mixins = []


public export
JSType DedicatedWorkerGlobalScope where
  parents = [WorkerGlobalScope, EventTarget, Object]

  mixins = [WindowOrWorkerGlobalScope]


public export
JSType Document where
  parents = [Node, EventTarget, Object]

  mixins =
    [ DocumentAndElementEventHandlers
    , DocumentOrShadowRoot
    , GlobalEventHandlers
    , NonElementParentNode
    , ParentNode
    , XPathEvaluatorBase
    ]


public export
JSType DocumentFragment where
  parents = [Node, EventTarget, Object]

  mixins = [NonElementParentNode, ParentNode]


public export
JSType DocumentTimeline where
  parents = [AnimationTimeline, Object]

  mixins = []


public export
JSType DocumentType where
  parents = [Node, EventTarget, Object]

  mixins = [ChildNode]


public export
JSType DragEvent where
  parents = [MouseEvent, UIEvent, Event, Object]

  mixins = []


public export
JSType Element where
  parents = [Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType ElementInternals where
  parents = [Object]

  mixins = [ARIAMixin]


public export
JSType ErrorEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType Event where
  parents = [Object]

  mixins = []


public export
JSType EventSource where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType EventTarget where
  parents = [Object]

  mixins = []


public export
JSType ExtendableEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType ExtendableMessageEvent where
  parents = [ExtendableEvent, Event, Object]

  mixins = []


public export
JSType External where
  parents = [Object]

  mixins = []


public export
JSType FetchEvent where
  parents = [ExtendableEvent, Event, Object]

  mixins = []


public export
JSType File where
  parents = [Blob, Object]

  mixins = []


public export
JSType FileList where
  parents = [Object]

  mixins = []


public export
JSType FileReader where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType FileReaderSync where
  parents = [Object]

  mixins = []


public export
JSType FocusEvent where
  parents = [UIEvent, Event, Object]

  mixins = []


public export
JSType FormData where
  parents = [Object]

  mixins = []


public export
JSType FormDataEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType HTMLAllCollection where
  parents = [Object]

  mixins = []


public export
JSType HTMLAnchorElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLHyperlinkElementUtils
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLAreaElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLHyperlinkElementUtils
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLAudioElement where
  parents = [HTMLMediaElement, HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLBRElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLBaseElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLBodyElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    , WindowEventHandlers
    ]


public export
JSType HTMLButtonElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLCanvasElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLCollection where
  parents = [Object]

  mixins = []


public export
JSType HTMLDListElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLDataElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLDataListElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLDetailsElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLDialogElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLDirectoryElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLDivElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLElement where
  parents = [Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLEmbedElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLFieldSetElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLFontElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLFormControlsCollection where
  parents = [HTMLCollection, Object]

  mixins = []


public export
JSType HTMLFormElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLFrameElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLFrameSetElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    , WindowEventHandlers
    ]


public export
JSType HTMLHRElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLHeadElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLHeadingElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLHtmlElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLIFrameElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLImageElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLInputElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLLIElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLLabelElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLLegendElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLLinkElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , LinkStyle
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLMapElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLMarqueeElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLMediaElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLMenuElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLMetaElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLMeterElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLModElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLOListElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLObjectElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLOptGroupElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLOptionElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLOptionsCollection where
  parents = [HTMLCollection, Object]

  mixins = []


public export
JSType HTMLOutputElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLParagraphElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLParamElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLPictureElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLPreElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLProgressElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLQuoteElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLScriptElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLSelectElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLSlotElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLSourceElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLSpanElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLStyleElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , LinkStyle
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLTableCaptionElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLTableCellElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLTableColElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLTableElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLTableRowElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLTableSectionElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLTemplateElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLTextAreaElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLTimeElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLTitleElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLTrackElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLUListElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLUnknownElement where
  parents = [HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HTMLVideoElement where
  parents = [HTMLMediaElement, HTMLElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , ElementContentEditable
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType HashChangeEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType Headers where
  parents = [Object]

  mixins = []


public export
JSType History where
  parents = [Object]

  mixins = []


public export
JSType IDBCursor where
  parents = [Object]

  mixins = []


public export
JSType IDBCursorWithValue where
  parents = [IDBCursor, Object]

  mixins = []


public export
JSType IDBDatabase where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType IDBFactory where
  parents = [Object]

  mixins = []


public export
JSType IDBIndex where
  parents = [Object]

  mixins = []


public export
JSType IDBKeyRange where
  parents = [Object]

  mixins = []


public export
JSType IDBObjectStore where
  parents = [Object]

  mixins = []


public export
JSType IDBOpenDBRequest where
  parents = [IDBRequest, EventTarget, Object]

  mixins = []


public export
JSType IDBRequest where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType IDBTransaction where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType IDBVersionChangeEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType ImageBitmap where
  parents = [Object]

  mixins = []


public export
JSType ImageBitmapRenderingContext where
  parents = [Object]

  mixins = []


public export
JSType ImageData where
  parents = [Object]

  mixins = []


public export
JSType InputDeviceInfo where
  parents = [MediaDeviceInfo, Object]

  mixins = []


public export
JSType InputEvent where
  parents = [UIEvent, Event, Object]

  mixins = []


public export
JSType KeyboardEvent where
  parents = [UIEvent, Event, Object]

  mixins = []


public export
JSType KeyframeEffect where
  parents = [AnimationEffect, Object]

  mixins = []


public export
JSType Location where
  parents = [Object]

  mixins = []


public export
JSType MathMLElement where
  parents = [Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , Slottable
    ]


public export
JSType MediaDeviceInfo where
  parents = [Object]

  mixins = []


public export
JSType MediaDevices where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType MediaError where
  parents = [Object]

  mixins = []


public export
JSType MediaList where
  parents = [Object]

  mixins = []


public export
JSType MediaSource where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType MediaStream where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType MediaStreamTrack where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType MediaStreamTrackEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType MessageChannel where
  parents = [Object]

  mixins = []


public export
JSType MessageEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType MessagePort where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType MimeType where
  parents = [Object]

  mixins = []


public export
JSType MimeTypeArray where
  parents = [Object]

  mixins = []


public export
JSType MouseEvent where
  parents = [UIEvent, Event, Object]

  mixins = []


public export
JSType MutationObserver where
  parents = [Object]

  mixins = []


public export
JSType MutationRecord where
  parents = [Object]

  mixins = []


public export
JSType NamedNodeMap where
  parents = [Object]

  mixins = []


public export
JSType NavigationPreloadManager where
  parents = [Object]

  mixins = []


public export
JSType Navigator where
  parents = [Object]

  mixins =
    [ NavigatorConcurrentHardware
    , NavigatorContentUtils
    , NavigatorCookies
    , NavigatorID
    , NavigatorLanguage
    , NavigatorOnLine
    , NavigatorPlugins
    ]


public export
JSType Node where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType NodeIterator where
  parents = [Object]

  mixins = []


public export
JSType NodeList where
  parents = [Object]

  mixins = []


public export
JSType OffscreenCanvas where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType OffscreenCanvasRenderingContext2D where
  parents = [Object]

  mixins =
    [ CanvasCompositing
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


public export
JSType OverconstrainedError where
  parents = [DOMException, Object]

  mixins = []


public export
JSType PageTransitionEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType Path2D where
  parents = [Object]

  mixins = [CanvasPath]


public export
JSType Performance where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType PermissionStatus where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType Permissions where
  parents = [Object]

  mixins = []


public export
JSType Plugin where
  parents = [Object]

  mixins = []


public export
JSType PluginArray where
  parents = [Object]

  mixins = []


public export
JSType PopStateEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType ProcessingInstruction where
  parents = [CharacterData, Node, EventTarget, Object]

  mixins = [ChildNode, LinkStyle, NonDocumentTypeChildNode]


public export
JSType ProgressEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType PromiseRejectionEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType RadioNodeList where
  parents = [NodeList, Object]

  mixins = []


public export
JSType Range where
  parents = [AbstractRange, Object]

  mixins = []


public export
JSType ReadableByteStreamController where
  parents = [Object]

  mixins = []


public export
JSType ReadableStream where
  parents = [Object]

  mixins = []


public export
JSType ReadableStreamBYOBReader where
  parents = [Object]

  mixins = [ReadableStreamGenericReader]


public export
JSType ReadableStreamBYOBRequest where
  parents = [Object]

  mixins = []


public export
JSType ReadableStreamDefaultController where
  parents = [Object]

  mixins = []


public export
JSType ReadableStreamDefaultReader where
  parents = [Object]

  mixins = [ReadableStreamGenericReader]


public export
JSType Request where
  parents = [Object]

  mixins = [Body]


public export
JSType Response where
  parents = [Object]

  mixins = [Body]


public export
JSType SVGAElement where
  parents = [SVGGraphicsElement, SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLHyperlinkElementUtils
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , SVGURIReference
    , Slottable
    ]


public export
JSType SVGAngle where
  parents = [Object]

  mixins = []


public export
JSType SVGAnimatedAngle where
  parents = [Object]

  mixins = []


public export
JSType SVGAnimatedBoolean where
  parents = [Object]

  mixins = []


public export
JSType SVGAnimatedEnumeration where
  parents = [Object]

  mixins = []


public export
JSType SVGAnimatedInteger where
  parents = [Object]

  mixins = []


public export
JSType SVGAnimatedLength where
  parents = [Object]

  mixins = []


public export
JSType SVGAnimatedLengthList where
  parents = [Object]

  mixins = []


public export
JSType SVGAnimatedNumber where
  parents = [Object]

  mixins = []


public export
JSType SVGAnimatedNumberList where
  parents = [Object]

  mixins = []


public export
JSType SVGAnimatedPreserveAspectRatio where
  parents = [Object]

  mixins = []


public export
JSType SVGAnimatedRect where
  parents = [Object]

  mixins = []


public export
JSType SVGAnimatedString where
  parents = [Object]

  mixins = []


public export
JSType SVGAnimatedTransformList where
  parents = [Object]

  mixins = []


public export
JSType SVGCircleElement where
  parents =
    [ SVGGeometryElement
    , SVGGraphicsElement
    , SVGElement
    , Element
    , Node
    , EventTarget
    , Object
    ]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGDefsElement where
  parents = [SVGGraphicsElement, SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGDescElement where
  parents = [SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , Slottable
    ]


public export
JSType SVGElement where
  parents = [Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , Slottable
    ]


public export
JSType SVGEllipseElement where
  parents =
    [ SVGGeometryElement
    , SVGGraphicsElement
    , SVGElement
    , Element
    , Node
    , EventTarget
    , Object
    ]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGForeignObjectElement where
  parents = [SVGGraphicsElement, SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGGElement where
  parents = [SVGGraphicsElement, SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGGeometryElement where
  parents = [SVGGraphicsElement, SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGGradientElement where
  parents = [SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGURIReference
    , Slottable
    ]


public export
JSType SVGGraphicsElement where
  parents = [SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGImageElement where
  parents = [SVGGraphicsElement, SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , SVGURIReference
    , Slottable
    ]


public export
JSType SVGLength where
  parents = [Object]

  mixins = []


public export
JSType SVGLengthList where
  parents = [Object]

  mixins = []


public export
JSType SVGLineElement where
  parents =
    [ SVGGeometryElement
    , SVGGraphicsElement
    , SVGElement
    , Element
    , Node
    , EventTarget
    , Object
    ]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGLinearGradientElement where
  parents = [SVGGradientElement, SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGURIReference
    , Slottable
    ]


public export
JSType SVGMarkerElement where
  parents = [SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGFitToViewBox
    , Slottable
    ]


public export
JSType SVGMetadataElement where
  parents = [SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , Slottable
    ]


public export
JSType SVGNumber where
  parents = [Object]

  mixins = []


public export
JSType SVGNumberList where
  parents = [Object]

  mixins = []


public export
JSType SVGPathElement where
  parents =
    [ SVGGeometryElement
    , SVGGraphicsElement
    , SVGElement
    , Element
    , Node
    , EventTarget
    , Object
    ]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGPatternElement where
  parents = [SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGFitToViewBox
    , SVGURIReference
    , Slottable
    ]


public export
JSType SVGPointList where
  parents = [Object]

  mixins = []


public export
JSType SVGPolygonElement where
  parents =
    [ SVGGeometryElement
    , SVGGraphicsElement
    , SVGElement
    , Element
    , Node
    , EventTarget
    , Object
    ]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGAnimatedPoints
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGPolylineElement where
  parents =
    [ SVGGeometryElement
    , SVGGraphicsElement
    , SVGElement
    , Element
    , Node
    , EventTarget
    , Object
    ]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGAnimatedPoints
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGPreserveAspectRatio where
  parents = [Object]

  mixins = []


public export
JSType SVGRadialGradientElement where
  parents = [SVGGradientElement, SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGURIReference
    , Slottable
    ]


public export
JSType SVGRectElement where
  parents =
    [ SVGGeometryElement
    , SVGGraphicsElement
    , SVGElement
    , Element
    , Node
    , EventTarget
    , Object
    ]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGSVGElement where
  parents = [SVGGraphicsElement, SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGFitToViewBox
    , SVGTests
    , Slottable
    , WindowEventHandlers
    ]


public export
JSType SVGScriptElement where
  parents = [SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGURIReference
    , Slottable
    ]


public export
JSType SVGStopElement where
  parents = [SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , Slottable
    ]


public export
JSType SVGStringList where
  parents = [Object]

  mixins = []


public export
JSType SVGStyleElement where
  parents = [SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , LinkStyle
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , Slottable
    ]


public export
JSType SVGSwitchElement where
  parents = [SVGGraphicsElement, SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGSymbolElement where
  parents = [SVGGraphicsElement, SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGFitToViewBox
    , SVGTests
    , Slottable
    ]


public export
JSType SVGTSpanElement where
  parents =
    [ SVGTextPositioningElement
    , SVGTextContentElement
    , SVGGraphicsElement
    , SVGElement
    , Element
    , Node
    , EventTarget
    , Object
    ]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGTextContentElement where
  parents = [SVGGraphicsElement, SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGTextElement where
  parents =
    [ SVGTextPositioningElement
    , SVGTextContentElement
    , SVGGraphicsElement
    , SVGElement
    , Element
    , Node
    , EventTarget
    , Object
    ]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGTextPathElement where
  parents =
    [ SVGTextContentElement
    , SVGGraphicsElement
    , SVGElement
    , Element
    , Node
    , EventTarget
    , Object
    ]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , SVGURIReference
    , Slottable
    ]


public export
JSType SVGTextPositioningElement where
  parents =
    [ SVGTextContentElement
    , SVGGraphicsElement
    , SVGElement
    , Element
    , Node
    , EventTarget
    , Object
    ]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , Slottable
    ]


public export
JSType SVGTitleElement where
  parents = [SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , Slottable
    ]


public export
JSType SVGTransform where
  parents = [Object]

  mixins = []


public export
JSType SVGTransformList where
  parents = [Object]

  mixins = []


public export
JSType SVGUnitTypes where
  parents = [Object]

  mixins = []


public export
JSType SVGUseElement where
  parents = [SVGGraphicsElement, SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGTests
    , SVGURIReference
    , Slottable
    ]


public export
JSType SVGUseElementShadowRoot where
  parents = [ShadowRoot, DocumentFragment, Node, EventTarget, Object]

  mixins = [DocumentOrShadowRoot, InnerHTML, NonElementParentNode, ParentNode]


public export
JSType SVGViewElement where
  parents = [SVGElement, Element, Node, EventTarget, Object]

  mixins =
    [ Animatable
    , ChildNode
    , DocumentAndElementEventHandlers
    , ElementCSSInlineStyle
    , GlobalEventHandlers
    , HTMLOrSVGElement
    , InnerHTML
    , NonDocumentTypeChildNode
    , ParentNode
    , SVGElementInstance
    , SVGFitToViewBox
    , Slottable
    ]


public export
JSType ServiceWorker where
  parents = [EventTarget, Object]

  mixins = [AbstractWorker]


public export
JSType ServiceWorkerContainer where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType ServiceWorkerGlobalScope where
  parents = [WorkerGlobalScope, EventTarget, Object]

  mixins = [WindowOrWorkerGlobalScope]


public export
JSType ServiceWorkerRegistration where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType ShadowAnimation where
  parents = [Animation, EventTarget, Object]

  mixins = []


public export
JSType ShadowRoot where
  parents = [DocumentFragment, Node, EventTarget, Object]

  mixins = [DocumentOrShadowRoot, InnerHTML, NonElementParentNode, ParentNode]


public export
JSType SharedWorker where
  parents = [EventTarget, Object]

  mixins = [AbstractWorker]


public export
JSType SharedWorkerGlobalScope where
  parents = [WorkerGlobalScope, EventTarget, Object]

  mixins = [WindowOrWorkerGlobalScope]


public export
JSType SourceBuffer where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType SourceBufferList where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType StaticRange where
  parents = [AbstractRange, Object]

  mixins = []


public export
JSType Storage where
  parents = [Object]

  mixins = []


public export
JSType StorageEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType StyleSheet where
  parents = [Object]

  mixins = []


public export
JSType StyleSheetList where
  parents = [Object]

  mixins = []


public export
JSType SubmitEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType Text where
  parents = [CharacterData, Node, EventTarget, Object]

  mixins = [ChildNode, NonDocumentTypeChildNode, Slottable]


public export
JSType TextMetrics where
  parents = [Object]

  mixins = []


public export
JSType TextTrack where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType TextTrackCue where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType TextTrackCueList where
  parents = [Object]

  mixins = []


public export
JSType TextTrackList where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType TimeRanges where
  parents = [Object]

  mixins = []


public export
JSType TrackEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType TransformStream where
  parents = [Object]

  mixins = []


public export
JSType TransformStreamDefaultController where
  parents = [Object]

  mixins = []


public export
JSType TreeWalker where
  parents = [Object]

  mixins = []


public export
JSType UIEvent where
  parents = [Event, Object]

  mixins = []


public export
JSType URL where
  parents = [Object]

  mixins = []


public export
JSType URLSearchParams where
  parents = [Object]

  mixins = []


public export
JSType ValidityState where
  parents = [Object]

  mixins = []


public export
JSType VideoTrack where
  parents = [Object]

  mixins = []


public export
JSType VideoTrackList where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType WebGL2RenderingContext where
  parents = [Object]

  mixins =
    [ WebGL2RenderingContextBase
    , WebGL2RenderingContextOverloads
    , WebGLRenderingContextBase
    ]


public export
JSType WebGLActiveInfo where
  parents = [Object]

  mixins = []


public export
JSType WebGLBuffer where
  parents = [WebGLObject, Object]

  mixins = []


public export
JSType WebGLFramebuffer where
  parents = [WebGLObject, Object]

  mixins = []


public export
JSType WebGLObject where
  parents = [Object]

  mixins = []


public export
JSType WebGLProgram where
  parents = [WebGLObject, Object]

  mixins = []


public export
JSType WebGLQuery where
  parents = [WebGLObject, Object]

  mixins = []


public export
JSType WebGLRenderbuffer where
  parents = [WebGLObject, Object]

  mixins = []


public export
JSType WebGLRenderingContext where
  parents = [Object]

  mixins = [WebGLRenderingContextBase, WebGLRenderingContextOverloads]


public export
JSType WebGLSampler where
  parents = [WebGLObject, Object]

  mixins = []


public export
JSType WebGLShader where
  parents = [WebGLObject, Object]

  mixins = []


public export
JSType WebGLShaderPrecisionFormat where
  parents = [Object]

  mixins = []


public export
JSType WebGLSync where
  parents = [WebGLObject, Object]

  mixins = []


public export
JSType WebGLTexture where
  parents = [WebGLObject, Object]

  mixins = []


public export
JSType WebGLTransformFeedback where
  parents = [WebGLObject, Object]

  mixins = []


public export
JSType WebGLUniformLocation where
  parents = [Object]

  mixins = []


public export
JSType WebGLVertexArrayObject where
  parents = [WebGLObject, Object]

  mixins = []


public export
JSType WebSocket where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType WheelEvent where
  parents = [MouseEvent, UIEvent, Event, Object]

  mixins = []


public export
JSType Window where
  parents = [EventTarget, Object]

  mixins =
    [ GlobalEventHandlers
    , WindowEventHandlers
    , WindowLocalStorage
    , WindowOrWorkerGlobalScope
    ]


public export
JSType WindowClient where
  parents = [Client, Object]

  mixins = []


public export
JSType Worker where
  parents = [EventTarget, Object]

  mixins = [AbstractWorker]


public export
JSType WorkerGlobalScope where
  parents = [EventTarget, Object]

  mixins = [WindowOrWorkerGlobalScope]


public export
JSType WorkerLocation where
  parents = [Object]

  mixins = []


public export
JSType WorkerNavigator where
  parents = [Object]

  mixins =
    [ NavigatorConcurrentHardware
    , NavigatorID
    , NavigatorLanguage
    , NavigatorOnLine
    ]


public export
JSType Worklet where
  parents = [Object]

  mixins = []


public export
JSType WorkletGlobalScope where
  parents = [Object]

  mixins = []


public export
JSType WritableStream where
  parents = [Object]

  mixins = []


public export
JSType WritableStreamDefaultController where
  parents = [Object]

  mixins = []


public export
JSType WritableStreamDefaultWriter where
  parents = [Object]

  mixins = []


public export
JSType XMLDocument where
  parents = [Document, Node, EventTarget, Object]

  mixins =
    [ DocumentAndElementEventHandlers
    , DocumentOrShadowRoot
    , GlobalEventHandlers
    , NonElementParentNode
    , ParentNode
    , XPathEvaluatorBase
    ]


public export
JSType XMLHttpRequest where
  parents = [XMLHttpRequestEventTarget, EventTarget, Object]

  mixins = []


public export
JSType XMLHttpRequestEventTarget where
  parents = [EventTarget, Object]

  mixins = []


public export
JSType XMLHttpRequestUpload where
  parents = [XMLHttpRequestEventTarget, EventTarget, Object]

  mixins = []


public export
JSType XMLSerializer where
  parents = [Object]

  mixins = []


public export
JSType XPathEvaluator where
  parents = [Object]

  mixins = [XPathEvaluatorBase]


public export
JSType XPathExpression where
  parents = [Object]

  mixins = []


public export
JSType XPathResult where
  parents = [Object]

  mixins = []


public export
JSType AddEventListenerOptions where
  parents = [EventListenerOptions, Object]

  mixins = []


public export
JSType AnimationPlaybackEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType AssignedNodesOptions where
  parents = [Object]

  mixins = []


public export
JSType BaseComputedKeyframe where
  parents = [Object]

  mixins = []


public export
JSType BaseKeyframe where
  parents = [Object]

  mixins = []


public export
JSType BasePropertyIndexedKeyframe where
  parents = [Object]

  mixins = []


public export
JSType BlobPropertyBag where
  parents = [Object]

  mixins = []


public export
JSType CacheQueryOptions where
  parents = [Object]

  mixins = []


public export
JSType CameraDevicePermissionDescriptor where
  parents = [DevicePermissionDescriptor, PermissionDescriptor, Object]

  mixins = []


public export
JSType CanvasRenderingContext2DSettings where
  parents = [Object]

  mixins = []


public export
JSType Capabilities where
  parents = [Object]

  mixins = []


public export
JSType ClientQueryOptions where
  parents = [Object]

  mixins = []


public export
JSType ClipboardEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType ClipboardItemOptions where
  parents = [Object]

  mixins = []


public export
JSType ClipboardPermissionDescriptor where
  parents = [PermissionDescriptor, Object]

  mixins = []


public export
JSType CloseEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType CompositionEventInit where
  parents = [UIEventInit, EventInit, Object]

  mixins = []


public export
JSType ComputedEffectTiming where
  parents = [EffectTiming, Object]

  mixins = []


public export
JSType ConstrainBooleanParameters where
  parents = [Object]

  mixins = []


public export
JSType ConstrainDOMStringParameters where
  parents = [Object]

  mixins = []


public export
JSType ConstrainDoubleRange where
  parents = [DoubleRange, Object]

  mixins = []


public export
JSType ConstrainULongRange where
  parents = [ULongRange, Object]

  mixins = []


public export
JSType ConstraintSet where
  parents = [Object]

  mixins = []


public export
JSType Constraints where
  parents = [ConstraintSet, Object]

  mixins = []


public export
JSType CustomEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType DOMMatrix2DInit where
  parents = [Object]

  mixins = []


public export
JSType DOMMatrixInit where
  parents = [DOMMatrix2DInit, Object]

  mixins = []


public export
JSType DOMPointInit where
  parents = [Object]

  mixins = []


public export
JSType DOMQuadInit where
  parents = [Object]

  mixins = []


public export
JSType DOMRectInit where
  parents = [Object]

  mixins = []


public export
JSType DevicePermissionDescriptor where
  parents = [PermissionDescriptor, Object]

  mixins = []


public export
JSType DocumentTimelineOptions where
  parents = [Object]

  mixins = []


public export
JSType DoubleRange where
  parents = [Object]

  mixins = []


public export
JSType DragEventInit where
  parents = [MouseEventInit, EventModifierInit, UIEventInit, EventInit, Object]

  mixins = []


public export
JSType EffectTiming where
  parents = [Object]

  mixins = []


public export
JSType ElementCreationOptions where
  parents = [Object]

  mixins = []


public export
JSType ElementDefinitionOptions where
  parents = [Object]

  mixins = []


public export
JSType ErrorEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType EventInit where
  parents = [Object]

  mixins = []


public export
JSType EventListenerOptions where
  parents = [Object]

  mixins = []


public export
JSType EventModifierInit where
  parents = [UIEventInit, EventInit, Object]

  mixins = []


public export
JSType EventSourceInit where
  parents = [Object]

  mixins = []


public export
JSType ExtendableEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType ExtendableMessageEventInit where
  parents = [ExtendableEventInit, EventInit, Object]

  mixins = []


public export
JSType FetchEventInit where
  parents = [ExtendableEventInit, EventInit, Object]

  mixins = []


public export
JSType FilePropertyBag where
  parents = [BlobPropertyBag, Object]

  mixins = []


public export
JSType FocusEventInit where
  parents = [UIEventInit, EventInit, Object]

  mixins = []


public export
JSType FocusOptions where
  parents = [Object]

  mixins = []


public export
JSType FormDataEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType GetRootNodeOptions where
  parents = [Object]

  mixins = []


public export
JSType HashChangeEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType IDBDatabaseInfo where
  parents = [Object]

  mixins = []


public export
JSType IDBIndexParameters where
  parents = [Object]

  mixins = []


public export
JSType IDBObjectStoreParameters where
  parents = [Object]

  mixins = []


public export
JSType IDBTransactionOptions where
  parents = [Object]

  mixins = []


public export
JSType IDBVersionChangeEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType ImageBitmapOptions where
  parents = [Object]

  mixins = []


public export
JSType ImageBitmapRenderingContextSettings where
  parents = [Object]

  mixins = []


public export
JSType ImageEncodeOptions where
  parents = [Object]

  mixins = []


public export
JSType InputEventInit where
  parents = [UIEventInit, EventInit, Object]

  mixins = []


public export
JSType KeyboardEventInit where
  parents = [EventModifierInit, UIEventInit, EventInit, Object]

  mixins = []


public export
JSType KeyframeAnimationOptions where
  parents = [KeyframeEffectOptions, EffectTiming, Object]

  mixins = []


public export
JSType KeyframeEffectOptions where
  parents = [EffectTiming, Object]

  mixins = []


public export
JSType MediaStreamConstraints where
  parents = [Object]

  mixins = []


public export
JSType MediaStreamTrackEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType MediaTrackCapabilities where
  parents = [Object]

  mixins = []


public export
JSType MediaTrackConstraintSet where
  parents = [Object]

  mixins = []


public export
JSType MediaTrackConstraints where
  parents = [MediaTrackConstraintSet, Object]

  mixins = []


public export
JSType MediaTrackSettings where
  parents = [Object]

  mixins = []


public export
JSType MediaTrackSupportedConstraints where
  parents = [Object]

  mixins = []


public export
JSType MessageEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType MidiPermissionDescriptor where
  parents = [PermissionDescriptor, Object]

  mixins = []


public export
JSType MouseEventInit where
  parents = [EventModifierInit, UIEventInit, EventInit, Object]

  mixins = []


public export
JSType MultiCacheQueryOptions where
  parents = [CacheQueryOptions, Object]

  mixins = []


public export
JSType MutationObserverInit where
  parents = [Object]

  mixins = []


public export
JSType NavigationPreloadState where
  parents = [Object]

  mixins = []


public export
JSType OptionalEffectTiming where
  parents = [Object]

  mixins = []


public export
JSType PageTransitionEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType PermissionDescriptor where
  parents = [Object]

  mixins = []


public export
JSType PermissionSetParameters where
  parents = [Object]

  mixins = []


public export
JSType PopStateEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType PostMessageOptions where
  parents = [Object]

  mixins = []


public export
JSType ProgressEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType PromiseRejectionEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType PushPermissionDescriptor where
  parents = [PermissionDescriptor, Object]

  mixins = []


public export
JSType QueuingStrategy where
  parents = [Object]

  mixins = []


public export
JSType QueuingStrategyInit where
  parents = [Object]

  mixins = []


public export
JSType ReadableStreamBYOBReadResult where
  parents = [Object]

  mixins = []


public export
JSType ReadableStreamDefaultReadResult where
  parents = [Object]

  mixins = []


public export
JSType ReadableStreamGetReaderOptions where
  parents = [Object]

  mixins = []


public export
JSType ReadableStreamIteratorOptions where
  parents = [Object]

  mixins = []


public export
JSType ReadableWritablePair where
  parents = [Object]

  mixins = []


public export
JSType RegistrationOptions where
  parents = [Object]

  mixins = []


public export
JSType RequestInit where
  parents = [Object]

  mixins = []


public export
JSType ResponseInit where
  parents = [Object]

  mixins = []


public export
JSType SVGBoundingBoxOptions where
  parents = [Object]

  mixins = []


public export
JSType Settings where
  parents = [Object]

  mixins = []


public export
JSType ShadowRootInit where
  parents = [Object]

  mixins = []


public export
JSType StaticRangeInit where
  parents = [Object]

  mixins = []


public export
JSType StorageEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType StreamPipeOptions where
  parents = [Object]

  mixins = []


public export
JSType StructuredSerializeOptions where
  parents = [Object]

  mixins = []


public export
JSType SubmitEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType TrackEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType Transformer where
  parents = [Object]

  mixins = []


public export
JSType UIEventInit where
  parents = [EventInit, Object]

  mixins = []


public export
JSType ULongRange where
  parents = [Object]

  mixins = []


public export
JSType UnderlyingSink where
  parents = [Object]

  mixins = []


public export
JSType UnderlyingSource where
  parents = [Object]

  mixins = []


public export
JSType ValidityStateFlags where
  parents = [Object]

  mixins = []


public export
JSType WebGLContextAttributes where
  parents = [Object]

  mixins = []


public export
JSType WheelEventInit where
  parents = [MouseEventInit, EventModifierInit, UIEventInit, EventInit, Object]

  mixins = []


public export
JSType WindowPostMessageOptions where
  parents = [PostMessageOptions, Object]

  mixins = []


public export
JSType WorkerOptions where
  parents = [Object]

  mixins = []


public export
JSType WorkletOptions where
  parents = [Object]

  mixins = []
