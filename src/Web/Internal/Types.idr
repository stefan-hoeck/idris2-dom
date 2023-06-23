module Web.Internal.Types

import JS
import public Web.Internal.AnimationTypes as Types
import public Web.Internal.ClipboardTypes as Types
import public Web.Internal.CssTypes as Types
import public Web.Internal.CssomviewTypes as Types
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

export %inline
Cast AbortController Object where cast = believe_me


export %inline
Cast AbortSignal EventTarget where cast = believe_me


export %inline
Cast AbortSignal Object where cast = believe_me


export %inline
Cast AbstractRange Object where cast = believe_me


export %inline
Cast Animation EventTarget where cast = believe_me


export %inline
Cast Animation Object where cast = believe_me


export %inline
Cast AnimationEffect Object where cast = believe_me


export %inline
Cast AnimationPlaybackEvent Event where cast = believe_me


export %inline
Cast AnimationPlaybackEvent Object where cast = believe_me


export %inline
Cast AnimationTimeline Object where cast = believe_me


export %inline
Cast Attr Node where cast = believe_me


export %inline
Cast Attr EventTarget where cast = believe_me


export %inline
Cast Attr Object where cast = believe_me


export %inline
Cast AudioTrack Object where cast = believe_me


export %inline
Cast AudioTrackList EventTarget where cast = believe_me


export %inline
Cast AudioTrackList Object where cast = believe_me


export %inline
Cast BarProp Object where cast = believe_me


export %inline
Cast BeforeUnloadEvent Event where cast = believe_me


export %inline
Cast BeforeUnloadEvent Object where cast = believe_me


export %inline
Cast Blob Object where cast = believe_me


export %inline
Cast BroadcastChannel EventTarget where cast = believe_me


export %inline
Cast BroadcastChannel Object where cast = believe_me


export %inline
Cast ByteLengthQueuingStrategy Object where cast = believe_me


export %inline
Cast CDATASection Text where cast = believe_me


export %inline
Cast CDATASection CharacterData where cast = believe_me


export %inline
Cast CDATASection Node where cast = believe_me


export %inline
Cast CDATASection EventTarget where cast = believe_me


export %inline
Cast CDATASection Object where cast = believe_me


export %inline
Cast CDATASection ChildNode where cast = believe_me


export %inline
Cast CDATASection GeometryUtils where cast = believe_me


export %inline
Cast CDATASection NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast CDATASection Slottable where cast = believe_me


export %inline
Cast CSSGroupingRule CSSRule where cast = believe_me


export %inline
Cast CSSGroupingRule Object where cast = believe_me


export %inline
Cast CSSImportRule CSSRule where cast = believe_me


export %inline
Cast CSSImportRule Object where cast = believe_me


export %inline
Cast CSSMarginRule CSSRule where cast = believe_me


export %inline
Cast CSSMarginRule Object where cast = believe_me


export %inline
Cast CSSNamespaceRule CSSRule where cast = believe_me


export %inline
Cast CSSNamespaceRule Object where cast = believe_me


export %inline
Cast CSSPageRule CSSGroupingRule where cast = believe_me


export %inline
Cast CSSPageRule CSSRule where cast = believe_me


export %inline
Cast CSSPageRule Object where cast = believe_me


export %inline
Cast CSSPseudoElement EventTarget where cast = believe_me


export %inline
Cast CSSPseudoElement Object where cast = believe_me


export %inline
Cast CSSPseudoElement Animatable where cast = believe_me


export %inline
Cast CSSPseudoElement GeometryUtils where cast = believe_me


export %inline
Cast CSSRule Object where cast = believe_me


export %inline
Cast CSSRuleList Object where cast = believe_me


export %inline
Cast CSSStyleDeclaration Object where cast = believe_me


export %inline
Cast CSSStyleRule CSSRule where cast = believe_me


export %inline
Cast CSSStyleRule Object where cast = believe_me


export %inline
Cast CSSStyleSheet StyleSheet where cast = believe_me


export %inline
Cast CSSStyleSheet Object where cast = believe_me


export %inline
Cast Cache Object where cast = believe_me


export %inline
Cast CacheStorage Object where cast = believe_me


export %inline
Cast CanvasGradient Object where cast = believe_me


export %inline
Cast CanvasPattern Object where cast = believe_me


export %inline
Cast CanvasRenderingContext2D Object where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasCompositing where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasDrawImage where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasDrawPath where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasFillStrokeStyles where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasFilters where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasImageData where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasImageSmoothing where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasPath where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasPathDrawingStyles where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasRect where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasShadowStyles where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasState where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasText where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasTextDrawingStyles where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasTransform where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasUserInterface where cast = believe_me


export %inline
Cast CaretPosition Object where cast = believe_me


export %inline
Cast CharacterData Node where cast = believe_me


export %inline
Cast CharacterData EventTarget where cast = believe_me


export %inline
Cast CharacterData Object where cast = believe_me


export %inline
Cast CharacterData ChildNode where cast = believe_me


export %inline
Cast CharacterData NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast Client Object where cast = believe_me


export %inline
Cast Clients Object where cast = believe_me


export %inline
Cast Clipboard EventTarget where cast = believe_me


export %inline
Cast Clipboard Object where cast = believe_me


export %inline
Cast ClipboardEvent Event where cast = believe_me


export %inline
Cast ClipboardEvent Object where cast = believe_me


export %inline
Cast ClipboardItem Object where cast = believe_me


export %inline
Cast CloseEvent Event where cast = believe_me


export %inline
Cast CloseEvent Object where cast = believe_me


export %inline
Cast Comment CharacterData where cast = believe_me


export %inline
Cast Comment Node where cast = believe_me


export %inline
Cast Comment EventTarget where cast = believe_me


export %inline
Cast Comment Object where cast = believe_me


export %inline
Cast Comment ChildNode where cast = believe_me


export %inline
Cast Comment NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast CompositionEvent UIEvent where cast = believe_me


export %inline
Cast CompositionEvent Event where cast = believe_me


export %inline
Cast CompositionEvent Object where cast = believe_me


export %inline
Cast ConstrainablePattern Object where cast = believe_me


export %inline
Cast CountQueuingStrategy Object where cast = believe_me


export %inline
Cast CustomElementRegistry Object where cast = believe_me


export %inline
Cast CustomEvent Event where cast = believe_me


export %inline
Cast CustomEvent Object where cast = believe_me


export %inline
Cast DOMException Object where cast = believe_me


export %inline
Cast DOMImplementation Object where cast = believe_me


export %inline
Cast DOMMatrix DOMMatrixReadOnly where cast = believe_me


export %inline
Cast DOMMatrix Object where cast = believe_me


export %inline
Cast DOMMatrixReadOnly Object where cast = believe_me


export %inline
Cast DOMParser Object where cast = believe_me


export %inline
Cast DOMPoint DOMPointReadOnly where cast = believe_me


export %inline
Cast DOMPoint Object where cast = believe_me


export %inline
Cast DOMPointReadOnly Object where cast = believe_me


export %inline
Cast DOMQuad Object where cast = believe_me


export %inline
Cast DOMRect DOMRectReadOnly where cast = believe_me


export %inline
Cast DOMRect Object where cast = believe_me


export %inline
Cast DOMRectList Object where cast = believe_me


export %inline
Cast DOMRectReadOnly Object where cast = believe_me


export %inline
Cast DOMStringList Object where cast = believe_me


export %inline
Cast DOMStringMap Object where cast = believe_me


export %inline
Cast DOMTokenList Object where cast = believe_me


export %inline
Cast DataTransfer Object where cast = believe_me


export %inline
Cast DataTransferItem Object where cast = believe_me


export %inline
Cast DataTransferItemList Object where cast = believe_me


export %inline
Cast DedicatedWorkerGlobalScope WorkerGlobalScope where cast = believe_me


export %inline
Cast DedicatedWorkerGlobalScope EventTarget where cast = believe_me


export %inline
Cast DedicatedWorkerGlobalScope Object where cast = believe_me


export %inline
Cast DedicatedWorkerGlobalScope WindowOrWorkerGlobalScope where cast = believe_me


export %inline
Cast Document Node where cast = believe_me


export %inline
Cast Document EventTarget where cast = believe_me


export %inline
Cast Document Object where cast = believe_me


export %inline
Cast Document DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast Document DocumentOrShadowRoot where cast = believe_me


export %inline
Cast Document GeometryUtils where cast = believe_me


export %inline
Cast Document GlobalEventHandlers where cast = believe_me


export %inline
Cast Document NonElementParentNode where cast = believe_me


export %inline
Cast Document ParentNode where cast = believe_me


export %inline
Cast Document XPathEvaluatorBase where cast = believe_me


export %inline
Cast DocumentFragment Node where cast = believe_me


export %inline
Cast DocumentFragment EventTarget where cast = believe_me


export %inline
Cast DocumentFragment Object where cast = believe_me


export %inline
Cast DocumentFragment NonElementParentNode where cast = believe_me


export %inline
Cast DocumentFragment ParentNode where cast = believe_me


export %inline
Cast DocumentTimeline AnimationTimeline where cast = believe_me


export %inline
Cast DocumentTimeline Object where cast = believe_me


export %inline
Cast DocumentType Node where cast = believe_me


export %inline
Cast DocumentType EventTarget where cast = believe_me


export %inline
Cast DocumentType Object where cast = believe_me


export %inline
Cast DocumentType ChildNode where cast = believe_me


export %inline
Cast DragEvent MouseEvent where cast = believe_me


export %inline
Cast DragEvent UIEvent where cast = believe_me


export %inline
Cast DragEvent Event where cast = believe_me


export %inline
Cast DragEvent Object where cast = believe_me


export %inline
Cast Element Node where cast = believe_me


export %inline
Cast Element EventTarget where cast = believe_me


export %inline
Cast Element Object where cast = believe_me


export %inline
Cast Element Animatable where cast = believe_me


export %inline
Cast Element ChildNode where cast = believe_me


export %inline
Cast Element GeometryUtils where cast = believe_me


export %inline
Cast Element InnerHTML where cast = believe_me


export %inline
Cast Element NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast Element ParentNode where cast = believe_me


export %inline
Cast Element Slottable where cast = believe_me


export %inline
Cast ElementInternals Object where cast = believe_me


export %inline
Cast ElementInternals ARIAMixin where cast = believe_me


export %inline
Cast ErrorEvent Event where cast = believe_me


export %inline
Cast ErrorEvent Object where cast = believe_me


export %inline
Cast Event Object where cast = believe_me


export %inline
Cast EventSource EventTarget where cast = believe_me


export %inline
Cast EventSource Object where cast = believe_me


export %inline
Cast EventTarget Object where cast = believe_me


export %inline
Cast ExtendableEvent Event where cast = believe_me


export %inline
Cast ExtendableEvent Object where cast = believe_me


export %inline
Cast ExtendableMessageEvent ExtendableEvent where cast = believe_me


export %inline
Cast ExtendableMessageEvent Event where cast = believe_me


export %inline
Cast ExtendableMessageEvent Object where cast = believe_me


export %inline
Cast External Object where cast = believe_me


export %inline
Cast FetchEvent ExtendableEvent where cast = believe_me


export %inline
Cast FetchEvent Event where cast = believe_me


export %inline
Cast FetchEvent Object where cast = believe_me


export %inline
Cast File Blob where cast = believe_me


export %inline
Cast File Object where cast = believe_me


export %inline
Cast FileList Object where cast = believe_me


export %inline
Cast FileReader EventTarget where cast = believe_me


export %inline
Cast FileReader Object where cast = believe_me


export %inline
Cast FileReaderSync Object where cast = believe_me


export %inline
Cast FocusEvent UIEvent where cast = believe_me


export %inline
Cast FocusEvent Event where cast = believe_me


export %inline
Cast FocusEvent Object where cast = believe_me


export %inline
Cast FormData Object where cast = believe_me


export %inline
Cast FormDataEvent Event where cast = believe_me


export %inline
Cast FormDataEvent Object where cast = believe_me


export %inline
Cast HTMLAllCollection Object where cast = believe_me


export %inline
Cast HTMLAnchorElement HTMLElement where cast = believe_me


export %inline
Cast HTMLAnchorElement Element where cast = believe_me


export %inline
Cast HTMLAnchorElement Node where cast = believe_me


export %inline
Cast HTMLAnchorElement EventTarget where cast = believe_me


export %inline
Cast HTMLAnchorElement Object where cast = believe_me


export %inline
Cast HTMLAnchorElement Animatable where cast = believe_me


export %inline
Cast HTMLAnchorElement ChildNode where cast = believe_me


export %inline
Cast HTMLAnchorElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLAnchorElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLAnchorElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLAnchorElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLAnchorElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLAnchorElement HTMLHyperlinkElementUtils where cast = believe_me


export %inline
Cast HTMLAnchorElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLAnchorElement InnerHTML where cast = believe_me


export %inline
Cast HTMLAnchorElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLAnchorElement ParentNode where cast = believe_me


export %inline
Cast HTMLAnchorElement Slottable where cast = believe_me


export %inline
Cast HTMLAreaElement HTMLElement where cast = believe_me


export %inline
Cast HTMLAreaElement Element where cast = believe_me


export %inline
Cast HTMLAreaElement Node where cast = believe_me


export %inline
Cast HTMLAreaElement EventTarget where cast = believe_me


export %inline
Cast HTMLAreaElement Object where cast = believe_me


export %inline
Cast HTMLAreaElement Animatable where cast = believe_me


export %inline
Cast HTMLAreaElement ChildNode where cast = believe_me


export %inline
Cast HTMLAreaElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLAreaElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLAreaElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLAreaElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLAreaElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLAreaElement HTMLHyperlinkElementUtils where cast = believe_me


export %inline
Cast HTMLAreaElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLAreaElement InnerHTML where cast = believe_me


export %inline
Cast HTMLAreaElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLAreaElement ParentNode where cast = believe_me


export %inline
Cast HTMLAreaElement Slottable where cast = believe_me


export %inline
Cast HTMLAudioElement HTMLMediaElement where cast = believe_me


export %inline
Cast HTMLAudioElement HTMLElement where cast = believe_me


export %inline
Cast HTMLAudioElement Element where cast = believe_me


export %inline
Cast HTMLAudioElement Node where cast = believe_me


export %inline
Cast HTMLAudioElement EventTarget where cast = believe_me


export %inline
Cast HTMLAudioElement Object where cast = believe_me


export %inline
Cast HTMLAudioElement Animatable where cast = believe_me


export %inline
Cast HTMLAudioElement ChildNode where cast = believe_me


export %inline
Cast HTMLAudioElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLAudioElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLAudioElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLAudioElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLAudioElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLAudioElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLAudioElement InnerHTML where cast = believe_me


export %inline
Cast HTMLAudioElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLAudioElement ParentNode where cast = believe_me


export %inline
Cast HTMLAudioElement Slottable where cast = believe_me


export %inline
Cast HTMLBRElement HTMLElement where cast = believe_me


export %inline
Cast HTMLBRElement Element where cast = believe_me


export %inline
Cast HTMLBRElement Node where cast = believe_me


export %inline
Cast HTMLBRElement EventTarget where cast = believe_me


export %inline
Cast HTMLBRElement Object where cast = believe_me


export %inline
Cast HTMLBRElement Animatable where cast = believe_me


export %inline
Cast HTMLBRElement ChildNode where cast = believe_me


export %inline
Cast HTMLBRElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLBRElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLBRElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLBRElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLBRElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLBRElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLBRElement InnerHTML where cast = believe_me


export %inline
Cast HTMLBRElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLBRElement ParentNode where cast = believe_me


export %inline
Cast HTMLBRElement Slottable where cast = believe_me


export %inline
Cast HTMLBaseElement HTMLElement where cast = believe_me


export %inline
Cast HTMLBaseElement Element where cast = believe_me


export %inline
Cast HTMLBaseElement Node where cast = believe_me


export %inline
Cast HTMLBaseElement EventTarget where cast = believe_me


export %inline
Cast HTMLBaseElement Object where cast = believe_me


export %inline
Cast HTMLBaseElement Animatable where cast = believe_me


export %inline
Cast HTMLBaseElement ChildNode where cast = believe_me


export %inline
Cast HTMLBaseElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLBaseElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLBaseElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLBaseElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLBaseElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLBaseElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLBaseElement InnerHTML where cast = believe_me


export %inline
Cast HTMLBaseElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLBaseElement ParentNode where cast = believe_me


export %inline
Cast HTMLBaseElement Slottable where cast = believe_me


export %inline
Cast HTMLBodyElement HTMLElement where cast = believe_me


export %inline
Cast HTMLBodyElement Element where cast = believe_me


export %inline
Cast HTMLBodyElement Node where cast = believe_me


export %inline
Cast HTMLBodyElement EventTarget where cast = believe_me


export %inline
Cast HTMLBodyElement Object where cast = believe_me


export %inline
Cast HTMLBodyElement Animatable where cast = believe_me


export %inline
Cast HTMLBodyElement ChildNode where cast = believe_me


export %inline
Cast HTMLBodyElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLBodyElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLBodyElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLBodyElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLBodyElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLBodyElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLBodyElement InnerHTML where cast = believe_me


export %inline
Cast HTMLBodyElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLBodyElement ParentNode where cast = believe_me


export %inline
Cast HTMLBodyElement Slottable where cast = believe_me


export %inline
Cast HTMLBodyElement WindowEventHandlers where cast = believe_me


export %inline
Cast HTMLButtonElement HTMLElement where cast = believe_me


export %inline
Cast HTMLButtonElement Element where cast = believe_me


export %inline
Cast HTMLButtonElement Node where cast = believe_me


export %inline
Cast HTMLButtonElement EventTarget where cast = believe_me


export %inline
Cast HTMLButtonElement Object where cast = believe_me


export %inline
Cast HTMLButtonElement Animatable where cast = believe_me


export %inline
Cast HTMLButtonElement ChildNode where cast = believe_me


export %inline
Cast HTMLButtonElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLButtonElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLButtonElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLButtonElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLButtonElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLButtonElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLButtonElement InnerHTML where cast = believe_me


export %inline
Cast HTMLButtonElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLButtonElement ParentNode where cast = believe_me


export %inline
Cast HTMLButtonElement Slottable where cast = believe_me


export %inline
Cast HTMLCanvasElement HTMLElement where cast = believe_me


export %inline
Cast HTMLCanvasElement Element where cast = believe_me


export %inline
Cast HTMLCanvasElement Node where cast = believe_me


export %inline
Cast HTMLCanvasElement EventTarget where cast = believe_me


export %inline
Cast HTMLCanvasElement Object where cast = believe_me


export %inline
Cast HTMLCanvasElement Animatable where cast = believe_me


export %inline
Cast HTMLCanvasElement ChildNode where cast = believe_me


export %inline
Cast HTMLCanvasElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLCanvasElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLCanvasElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLCanvasElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLCanvasElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLCanvasElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLCanvasElement InnerHTML where cast = believe_me


export %inline
Cast HTMLCanvasElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLCanvasElement ParentNode where cast = believe_me


export %inline
Cast HTMLCanvasElement Slottable where cast = believe_me


export %inline
Cast HTMLCollection Object where cast = believe_me


export %inline
Cast HTMLDListElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDListElement Element where cast = believe_me


export %inline
Cast HTMLDListElement Node where cast = believe_me


export %inline
Cast HTMLDListElement EventTarget where cast = believe_me


export %inline
Cast HTMLDListElement Object where cast = believe_me


export %inline
Cast HTMLDListElement Animatable where cast = believe_me


export %inline
Cast HTMLDListElement ChildNode where cast = believe_me


export %inline
Cast HTMLDListElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDListElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDListElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDListElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDListElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDListElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDListElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDListElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDListElement ParentNode where cast = believe_me


export %inline
Cast HTMLDListElement Slottable where cast = believe_me


export %inline
Cast HTMLDataElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDataElement Element where cast = believe_me


export %inline
Cast HTMLDataElement Node where cast = believe_me


export %inline
Cast HTMLDataElement EventTarget where cast = believe_me


export %inline
Cast HTMLDataElement Object where cast = believe_me


export %inline
Cast HTMLDataElement Animatable where cast = believe_me


export %inline
Cast HTMLDataElement ChildNode where cast = believe_me


export %inline
Cast HTMLDataElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDataElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDataElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDataElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDataElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDataElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDataElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDataElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDataElement ParentNode where cast = believe_me


export %inline
Cast HTMLDataElement Slottable where cast = believe_me


export %inline
Cast HTMLDataListElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDataListElement Element where cast = believe_me


export %inline
Cast HTMLDataListElement Node where cast = believe_me


export %inline
Cast HTMLDataListElement EventTarget where cast = believe_me


export %inline
Cast HTMLDataListElement Object where cast = believe_me


export %inline
Cast HTMLDataListElement Animatable where cast = believe_me


export %inline
Cast HTMLDataListElement ChildNode where cast = believe_me


export %inline
Cast HTMLDataListElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDataListElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDataListElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDataListElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDataListElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDataListElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDataListElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDataListElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDataListElement ParentNode where cast = believe_me


export %inline
Cast HTMLDataListElement Slottable where cast = believe_me


export %inline
Cast HTMLDetailsElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDetailsElement Element where cast = believe_me


export %inline
Cast HTMLDetailsElement Node where cast = believe_me


export %inline
Cast HTMLDetailsElement EventTarget where cast = believe_me


export %inline
Cast HTMLDetailsElement Object where cast = believe_me


export %inline
Cast HTMLDetailsElement Animatable where cast = believe_me


export %inline
Cast HTMLDetailsElement ChildNode where cast = believe_me


export %inline
Cast HTMLDetailsElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDetailsElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDetailsElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDetailsElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDetailsElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDetailsElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDetailsElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDetailsElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDetailsElement ParentNode where cast = believe_me


export %inline
Cast HTMLDetailsElement Slottable where cast = believe_me


export %inline
Cast HTMLDialogElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDialogElement Element where cast = believe_me


export %inline
Cast HTMLDialogElement Node where cast = believe_me


export %inline
Cast HTMLDialogElement EventTarget where cast = believe_me


export %inline
Cast HTMLDialogElement Object where cast = believe_me


export %inline
Cast HTMLDialogElement Animatable where cast = believe_me


export %inline
Cast HTMLDialogElement ChildNode where cast = believe_me


export %inline
Cast HTMLDialogElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDialogElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDialogElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDialogElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDialogElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDialogElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDialogElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDialogElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDialogElement ParentNode where cast = believe_me


export %inline
Cast HTMLDialogElement Slottable where cast = believe_me


export %inline
Cast HTMLDirectoryElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDirectoryElement Element where cast = believe_me


export %inline
Cast HTMLDirectoryElement Node where cast = believe_me


export %inline
Cast HTMLDirectoryElement EventTarget where cast = believe_me


export %inline
Cast HTMLDirectoryElement Object where cast = believe_me


export %inline
Cast HTMLDirectoryElement Animatable where cast = believe_me


export %inline
Cast HTMLDirectoryElement ChildNode where cast = believe_me


export %inline
Cast HTMLDirectoryElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDirectoryElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDirectoryElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDirectoryElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDirectoryElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDirectoryElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDirectoryElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDirectoryElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDirectoryElement ParentNode where cast = believe_me


export %inline
Cast HTMLDirectoryElement Slottable where cast = believe_me


export %inline
Cast HTMLDivElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDivElement Element where cast = believe_me


export %inline
Cast HTMLDivElement Node where cast = believe_me


export %inline
Cast HTMLDivElement EventTarget where cast = believe_me


export %inline
Cast HTMLDivElement Object where cast = believe_me


export %inline
Cast HTMLDivElement Animatable where cast = believe_me


export %inline
Cast HTMLDivElement ChildNode where cast = believe_me


export %inline
Cast HTMLDivElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDivElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDivElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDivElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDivElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDivElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDivElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDivElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDivElement ParentNode where cast = believe_me


export %inline
Cast HTMLDivElement Slottable where cast = believe_me


export %inline
Cast HTMLElement Element where cast = believe_me


export %inline
Cast HTMLElement Node where cast = believe_me


export %inline
Cast HTMLElement EventTarget where cast = believe_me


export %inline
Cast HTMLElement Object where cast = believe_me


export %inline
Cast HTMLElement Animatable where cast = believe_me


export %inline
Cast HTMLElement ChildNode where cast = believe_me


export %inline
Cast HTMLElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLElement InnerHTML where cast = believe_me


export %inline
Cast HTMLElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLElement ParentNode where cast = believe_me


export %inline
Cast HTMLElement Slottable where cast = believe_me


export %inline
Cast HTMLEmbedElement HTMLElement where cast = believe_me


export %inline
Cast HTMLEmbedElement Element where cast = believe_me


export %inline
Cast HTMLEmbedElement Node where cast = believe_me


export %inline
Cast HTMLEmbedElement EventTarget where cast = believe_me


export %inline
Cast HTMLEmbedElement Object where cast = believe_me


export %inline
Cast HTMLEmbedElement Animatable where cast = believe_me


export %inline
Cast HTMLEmbedElement ChildNode where cast = believe_me


export %inline
Cast HTMLEmbedElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLEmbedElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLEmbedElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLEmbedElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLEmbedElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLEmbedElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLEmbedElement InnerHTML where cast = believe_me


export %inline
Cast HTMLEmbedElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLEmbedElement ParentNode where cast = believe_me


export %inline
Cast HTMLEmbedElement Slottable where cast = believe_me


export %inline
Cast HTMLFieldSetElement HTMLElement where cast = believe_me


export %inline
Cast HTMLFieldSetElement Element where cast = believe_me


export %inline
Cast HTMLFieldSetElement Node where cast = believe_me


export %inline
Cast HTMLFieldSetElement EventTarget where cast = believe_me


export %inline
Cast HTMLFieldSetElement Object where cast = believe_me


export %inline
Cast HTMLFieldSetElement Animatable where cast = believe_me


export %inline
Cast HTMLFieldSetElement ChildNode where cast = believe_me


export %inline
Cast HTMLFieldSetElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLFieldSetElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLFieldSetElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLFieldSetElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLFieldSetElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLFieldSetElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLFieldSetElement InnerHTML where cast = believe_me


export %inline
Cast HTMLFieldSetElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLFieldSetElement ParentNode where cast = believe_me


export %inline
Cast HTMLFieldSetElement Slottable where cast = believe_me


export %inline
Cast HTMLFontElement HTMLElement where cast = believe_me


export %inline
Cast HTMLFontElement Element where cast = believe_me


export %inline
Cast HTMLFontElement Node where cast = believe_me


export %inline
Cast HTMLFontElement EventTarget where cast = believe_me


export %inline
Cast HTMLFontElement Object where cast = believe_me


export %inline
Cast HTMLFontElement Animatable where cast = believe_me


export %inline
Cast HTMLFontElement ChildNode where cast = believe_me


export %inline
Cast HTMLFontElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLFontElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLFontElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLFontElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLFontElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLFontElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLFontElement InnerHTML where cast = believe_me


export %inline
Cast HTMLFontElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLFontElement ParentNode where cast = believe_me


export %inline
Cast HTMLFontElement Slottable where cast = believe_me


export %inline
Cast HTMLFormControlsCollection HTMLCollection where cast = believe_me


export %inline
Cast HTMLFormControlsCollection Object where cast = believe_me


export %inline
Cast HTMLFormElement HTMLElement where cast = believe_me


export %inline
Cast HTMLFormElement Element where cast = believe_me


export %inline
Cast HTMLFormElement Node where cast = believe_me


export %inline
Cast HTMLFormElement EventTarget where cast = believe_me


export %inline
Cast HTMLFormElement Object where cast = believe_me


export %inline
Cast HTMLFormElement Animatable where cast = believe_me


export %inline
Cast HTMLFormElement ChildNode where cast = believe_me


export %inline
Cast HTMLFormElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLFormElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLFormElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLFormElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLFormElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLFormElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLFormElement InnerHTML where cast = believe_me


export %inline
Cast HTMLFormElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLFormElement ParentNode where cast = believe_me


export %inline
Cast HTMLFormElement Slottable where cast = believe_me


export %inline
Cast HTMLFrameElement HTMLElement where cast = believe_me


export %inline
Cast HTMLFrameElement Element where cast = believe_me


export %inline
Cast HTMLFrameElement Node where cast = believe_me


export %inline
Cast HTMLFrameElement EventTarget where cast = believe_me


export %inline
Cast HTMLFrameElement Object where cast = believe_me


export %inline
Cast HTMLFrameElement Animatable where cast = believe_me


export %inline
Cast HTMLFrameElement ChildNode where cast = believe_me


export %inline
Cast HTMLFrameElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLFrameElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLFrameElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLFrameElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLFrameElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLFrameElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLFrameElement InnerHTML where cast = believe_me


export %inline
Cast HTMLFrameElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLFrameElement ParentNode where cast = believe_me


export %inline
Cast HTMLFrameElement Slottable where cast = believe_me


export %inline
Cast HTMLFrameSetElement HTMLElement where cast = believe_me


export %inline
Cast HTMLFrameSetElement Element where cast = believe_me


export %inline
Cast HTMLFrameSetElement Node where cast = believe_me


export %inline
Cast HTMLFrameSetElement EventTarget where cast = believe_me


export %inline
Cast HTMLFrameSetElement Object where cast = believe_me


export %inline
Cast HTMLFrameSetElement Animatable where cast = believe_me


export %inline
Cast HTMLFrameSetElement ChildNode where cast = believe_me


export %inline
Cast HTMLFrameSetElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLFrameSetElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLFrameSetElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLFrameSetElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLFrameSetElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLFrameSetElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLFrameSetElement InnerHTML where cast = believe_me


export %inline
Cast HTMLFrameSetElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLFrameSetElement ParentNode where cast = believe_me


export %inline
Cast HTMLFrameSetElement Slottable where cast = believe_me


export %inline
Cast HTMLFrameSetElement WindowEventHandlers where cast = believe_me


export %inline
Cast HTMLHRElement HTMLElement where cast = believe_me


export %inline
Cast HTMLHRElement Element where cast = believe_me


export %inline
Cast HTMLHRElement Node where cast = believe_me


export %inline
Cast HTMLHRElement EventTarget where cast = believe_me


export %inline
Cast HTMLHRElement Object where cast = believe_me


export %inline
Cast HTMLHRElement Animatable where cast = believe_me


export %inline
Cast HTMLHRElement ChildNode where cast = believe_me


export %inline
Cast HTMLHRElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLHRElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLHRElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLHRElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLHRElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLHRElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLHRElement InnerHTML where cast = believe_me


export %inline
Cast HTMLHRElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLHRElement ParentNode where cast = believe_me


export %inline
Cast HTMLHRElement Slottable where cast = believe_me


export %inline
Cast HTMLHeadElement HTMLElement where cast = believe_me


export %inline
Cast HTMLHeadElement Element where cast = believe_me


export %inline
Cast HTMLHeadElement Node where cast = believe_me


export %inline
Cast HTMLHeadElement EventTarget where cast = believe_me


export %inline
Cast HTMLHeadElement Object where cast = believe_me


export %inline
Cast HTMLHeadElement Animatable where cast = believe_me


export %inline
Cast HTMLHeadElement ChildNode where cast = believe_me


export %inline
Cast HTMLHeadElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLHeadElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLHeadElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLHeadElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLHeadElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLHeadElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLHeadElement InnerHTML where cast = believe_me


export %inline
Cast HTMLHeadElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLHeadElement ParentNode where cast = believe_me


export %inline
Cast HTMLHeadElement Slottable where cast = believe_me


export %inline
Cast HTMLHeadingElement HTMLElement where cast = believe_me


export %inline
Cast HTMLHeadingElement Element where cast = believe_me


export %inline
Cast HTMLHeadingElement Node where cast = believe_me


export %inline
Cast HTMLHeadingElement EventTarget where cast = believe_me


export %inline
Cast HTMLHeadingElement Object where cast = believe_me


export %inline
Cast HTMLHeadingElement Animatable where cast = believe_me


export %inline
Cast HTMLHeadingElement ChildNode where cast = believe_me


export %inline
Cast HTMLHeadingElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLHeadingElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLHeadingElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLHeadingElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLHeadingElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLHeadingElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLHeadingElement InnerHTML where cast = believe_me


export %inline
Cast HTMLHeadingElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLHeadingElement ParentNode where cast = believe_me


export %inline
Cast HTMLHeadingElement Slottable where cast = believe_me


export %inline
Cast HTMLHtmlElement HTMLElement where cast = believe_me


export %inline
Cast HTMLHtmlElement Element where cast = believe_me


export %inline
Cast HTMLHtmlElement Node where cast = believe_me


export %inline
Cast HTMLHtmlElement EventTarget where cast = believe_me


export %inline
Cast HTMLHtmlElement Object where cast = believe_me


export %inline
Cast HTMLHtmlElement Animatable where cast = believe_me


export %inline
Cast HTMLHtmlElement ChildNode where cast = believe_me


export %inline
Cast HTMLHtmlElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLHtmlElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLHtmlElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLHtmlElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLHtmlElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLHtmlElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLHtmlElement InnerHTML where cast = believe_me


export %inline
Cast HTMLHtmlElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLHtmlElement ParentNode where cast = believe_me


export %inline
Cast HTMLHtmlElement Slottable where cast = believe_me


export %inline
Cast HTMLIFrameElement HTMLElement where cast = believe_me


export %inline
Cast HTMLIFrameElement Element where cast = believe_me


export %inline
Cast HTMLIFrameElement Node where cast = believe_me


export %inline
Cast HTMLIFrameElement EventTarget where cast = believe_me


export %inline
Cast HTMLIFrameElement Object where cast = believe_me


export %inline
Cast HTMLIFrameElement Animatable where cast = believe_me


export %inline
Cast HTMLIFrameElement ChildNode where cast = believe_me


export %inline
Cast HTMLIFrameElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLIFrameElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLIFrameElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLIFrameElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLIFrameElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLIFrameElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLIFrameElement InnerHTML where cast = believe_me


export %inline
Cast HTMLIFrameElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLIFrameElement ParentNode where cast = believe_me


export %inline
Cast HTMLIFrameElement Slottable where cast = believe_me


export %inline
Cast HTMLImageElement HTMLElement where cast = believe_me


export %inline
Cast HTMLImageElement Element where cast = believe_me


export %inline
Cast HTMLImageElement Node where cast = believe_me


export %inline
Cast HTMLImageElement EventTarget where cast = believe_me


export %inline
Cast HTMLImageElement Object where cast = believe_me


export %inline
Cast HTMLImageElement Animatable where cast = believe_me


export %inline
Cast HTMLImageElement ChildNode where cast = believe_me


export %inline
Cast HTMLImageElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLImageElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLImageElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLImageElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLImageElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLImageElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLImageElement InnerHTML where cast = believe_me


export %inline
Cast HTMLImageElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLImageElement ParentNode where cast = believe_me


export %inline
Cast HTMLImageElement Slottable where cast = believe_me


export %inline
Cast HTMLInputElement HTMLElement where cast = believe_me


export %inline
Cast HTMLInputElement Element where cast = believe_me


export %inline
Cast HTMLInputElement Node where cast = believe_me


export %inline
Cast HTMLInputElement EventTarget where cast = believe_me


export %inline
Cast HTMLInputElement Object where cast = believe_me


export %inline
Cast HTMLInputElement Animatable where cast = believe_me


export %inline
Cast HTMLInputElement ChildNode where cast = believe_me


export %inline
Cast HTMLInputElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLInputElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLInputElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLInputElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLInputElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLInputElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLInputElement InnerHTML where cast = believe_me


export %inline
Cast HTMLInputElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLInputElement ParentNode where cast = believe_me


export %inline
Cast HTMLInputElement Slottable where cast = believe_me


export %inline
Cast HTMLLIElement HTMLElement where cast = believe_me


export %inline
Cast HTMLLIElement Element where cast = believe_me


export %inline
Cast HTMLLIElement Node where cast = believe_me


export %inline
Cast HTMLLIElement EventTarget where cast = believe_me


export %inline
Cast HTMLLIElement Object where cast = believe_me


export %inline
Cast HTMLLIElement Animatable where cast = believe_me


export %inline
Cast HTMLLIElement ChildNode where cast = believe_me


export %inline
Cast HTMLLIElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLLIElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLLIElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLLIElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLLIElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLLIElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLLIElement InnerHTML where cast = believe_me


export %inline
Cast HTMLLIElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLLIElement ParentNode where cast = believe_me


export %inline
Cast HTMLLIElement Slottable where cast = believe_me


export %inline
Cast HTMLLabelElement HTMLElement where cast = believe_me


export %inline
Cast HTMLLabelElement Element where cast = believe_me


export %inline
Cast HTMLLabelElement Node where cast = believe_me


export %inline
Cast HTMLLabelElement EventTarget where cast = believe_me


export %inline
Cast HTMLLabelElement Object where cast = believe_me


export %inline
Cast HTMLLabelElement Animatable where cast = believe_me


export %inline
Cast HTMLLabelElement ChildNode where cast = believe_me


export %inline
Cast HTMLLabelElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLLabelElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLLabelElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLLabelElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLLabelElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLLabelElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLLabelElement InnerHTML where cast = believe_me


export %inline
Cast HTMLLabelElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLLabelElement ParentNode where cast = believe_me


export %inline
Cast HTMLLabelElement Slottable where cast = believe_me


export %inline
Cast HTMLLegendElement HTMLElement where cast = believe_me


export %inline
Cast HTMLLegendElement Element where cast = believe_me


export %inline
Cast HTMLLegendElement Node where cast = believe_me


export %inline
Cast HTMLLegendElement EventTarget where cast = believe_me


export %inline
Cast HTMLLegendElement Object where cast = believe_me


export %inline
Cast HTMLLegendElement Animatable where cast = believe_me


export %inline
Cast HTMLLegendElement ChildNode where cast = believe_me


export %inline
Cast HTMLLegendElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLLegendElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLLegendElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLLegendElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLLegendElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLLegendElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLLegendElement InnerHTML where cast = believe_me


export %inline
Cast HTMLLegendElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLLegendElement ParentNode where cast = believe_me


export %inline
Cast HTMLLegendElement Slottable where cast = believe_me


export %inline
Cast HTMLLinkElement HTMLElement where cast = believe_me


export %inline
Cast HTMLLinkElement Element where cast = believe_me


export %inline
Cast HTMLLinkElement Node where cast = believe_me


export %inline
Cast HTMLLinkElement EventTarget where cast = believe_me


export %inline
Cast HTMLLinkElement Object where cast = believe_me


export %inline
Cast HTMLLinkElement Animatable where cast = believe_me


export %inline
Cast HTMLLinkElement ChildNode where cast = believe_me


export %inline
Cast HTMLLinkElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLLinkElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLLinkElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLLinkElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLLinkElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLLinkElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLLinkElement InnerHTML where cast = believe_me


export %inline
Cast HTMLLinkElement LinkStyle where cast = believe_me


export %inline
Cast HTMLLinkElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLLinkElement ParentNode where cast = believe_me


export %inline
Cast HTMLLinkElement Slottable where cast = believe_me


export %inline
Cast HTMLMapElement HTMLElement where cast = believe_me


export %inline
Cast HTMLMapElement Element where cast = believe_me


export %inline
Cast HTMLMapElement Node where cast = believe_me


export %inline
Cast HTMLMapElement EventTarget where cast = believe_me


export %inline
Cast HTMLMapElement Object where cast = believe_me


export %inline
Cast HTMLMapElement Animatable where cast = believe_me


export %inline
Cast HTMLMapElement ChildNode where cast = believe_me


export %inline
Cast HTMLMapElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLMapElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLMapElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLMapElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLMapElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLMapElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLMapElement InnerHTML where cast = believe_me


export %inline
Cast HTMLMapElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLMapElement ParentNode where cast = believe_me


export %inline
Cast HTMLMapElement Slottable where cast = believe_me


export %inline
Cast HTMLMarqueeElement HTMLElement where cast = believe_me


export %inline
Cast HTMLMarqueeElement Element where cast = believe_me


export %inline
Cast HTMLMarqueeElement Node where cast = believe_me


export %inline
Cast HTMLMarqueeElement EventTarget where cast = believe_me


export %inline
Cast HTMLMarqueeElement Object where cast = believe_me


export %inline
Cast HTMLMarqueeElement Animatable where cast = believe_me


export %inline
Cast HTMLMarqueeElement ChildNode where cast = believe_me


export %inline
Cast HTMLMarqueeElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLMarqueeElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLMarqueeElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLMarqueeElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLMarqueeElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLMarqueeElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLMarqueeElement InnerHTML where cast = believe_me


export %inline
Cast HTMLMarqueeElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLMarqueeElement ParentNode where cast = believe_me


export %inline
Cast HTMLMarqueeElement Slottable where cast = believe_me


export %inline
Cast HTMLMediaElement HTMLElement where cast = believe_me


export %inline
Cast HTMLMediaElement Element where cast = believe_me


export %inline
Cast HTMLMediaElement Node where cast = believe_me


export %inline
Cast HTMLMediaElement EventTarget where cast = believe_me


export %inline
Cast HTMLMediaElement Object where cast = believe_me


export %inline
Cast HTMLMediaElement Animatable where cast = believe_me


export %inline
Cast HTMLMediaElement ChildNode where cast = believe_me


export %inline
Cast HTMLMediaElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLMediaElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLMediaElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLMediaElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLMediaElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLMediaElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLMediaElement InnerHTML where cast = believe_me


export %inline
Cast HTMLMediaElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLMediaElement ParentNode where cast = believe_me


export %inline
Cast HTMLMediaElement Slottable where cast = believe_me


export %inline
Cast HTMLMenuElement HTMLElement where cast = believe_me


export %inline
Cast HTMLMenuElement Element where cast = believe_me


export %inline
Cast HTMLMenuElement Node where cast = believe_me


export %inline
Cast HTMLMenuElement EventTarget where cast = believe_me


export %inline
Cast HTMLMenuElement Object where cast = believe_me


export %inline
Cast HTMLMenuElement Animatable where cast = believe_me


export %inline
Cast HTMLMenuElement ChildNode where cast = believe_me


export %inline
Cast HTMLMenuElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLMenuElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLMenuElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLMenuElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLMenuElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLMenuElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLMenuElement InnerHTML where cast = believe_me


export %inline
Cast HTMLMenuElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLMenuElement ParentNode where cast = believe_me


export %inline
Cast HTMLMenuElement Slottable where cast = believe_me


export %inline
Cast HTMLMetaElement HTMLElement where cast = believe_me


export %inline
Cast HTMLMetaElement Element where cast = believe_me


export %inline
Cast HTMLMetaElement Node where cast = believe_me


export %inline
Cast HTMLMetaElement EventTarget where cast = believe_me


export %inline
Cast HTMLMetaElement Object where cast = believe_me


export %inline
Cast HTMLMetaElement Animatable where cast = believe_me


export %inline
Cast HTMLMetaElement ChildNode where cast = believe_me


export %inline
Cast HTMLMetaElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLMetaElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLMetaElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLMetaElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLMetaElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLMetaElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLMetaElement InnerHTML where cast = believe_me


export %inline
Cast HTMLMetaElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLMetaElement ParentNode where cast = believe_me


export %inline
Cast HTMLMetaElement Slottable where cast = believe_me


export %inline
Cast HTMLMeterElement HTMLElement where cast = believe_me


export %inline
Cast HTMLMeterElement Element where cast = believe_me


export %inline
Cast HTMLMeterElement Node where cast = believe_me


export %inline
Cast HTMLMeterElement EventTarget where cast = believe_me


export %inline
Cast HTMLMeterElement Object where cast = believe_me


export %inline
Cast HTMLMeterElement Animatable where cast = believe_me


export %inline
Cast HTMLMeterElement ChildNode where cast = believe_me


export %inline
Cast HTMLMeterElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLMeterElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLMeterElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLMeterElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLMeterElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLMeterElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLMeterElement InnerHTML where cast = believe_me


export %inline
Cast HTMLMeterElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLMeterElement ParentNode where cast = believe_me


export %inline
Cast HTMLMeterElement Slottable where cast = believe_me


export %inline
Cast HTMLModElement HTMLElement where cast = believe_me


export %inline
Cast HTMLModElement Element where cast = believe_me


export %inline
Cast HTMLModElement Node where cast = believe_me


export %inline
Cast HTMLModElement EventTarget where cast = believe_me


export %inline
Cast HTMLModElement Object where cast = believe_me


export %inline
Cast HTMLModElement Animatable where cast = believe_me


export %inline
Cast HTMLModElement ChildNode where cast = believe_me


export %inline
Cast HTMLModElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLModElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLModElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLModElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLModElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLModElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLModElement InnerHTML where cast = believe_me


export %inline
Cast HTMLModElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLModElement ParentNode where cast = believe_me


export %inline
Cast HTMLModElement Slottable where cast = believe_me


export %inline
Cast HTMLOListElement HTMLElement where cast = believe_me


export %inline
Cast HTMLOListElement Element where cast = believe_me


export %inline
Cast HTMLOListElement Node where cast = believe_me


export %inline
Cast HTMLOListElement EventTarget where cast = believe_me


export %inline
Cast HTMLOListElement Object where cast = believe_me


export %inline
Cast HTMLOListElement Animatable where cast = believe_me


export %inline
Cast HTMLOListElement ChildNode where cast = believe_me


export %inline
Cast HTMLOListElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLOListElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLOListElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLOListElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLOListElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLOListElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLOListElement InnerHTML where cast = believe_me


export %inline
Cast HTMLOListElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLOListElement ParentNode where cast = believe_me


export %inline
Cast HTMLOListElement Slottable where cast = believe_me


export %inline
Cast HTMLObjectElement HTMLElement where cast = believe_me


export %inline
Cast HTMLObjectElement Element where cast = believe_me


export %inline
Cast HTMLObjectElement Node where cast = believe_me


export %inline
Cast HTMLObjectElement EventTarget where cast = believe_me


export %inline
Cast HTMLObjectElement Object where cast = believe_me


export %inline
Cast HTMLObjectElement Animatable where cast = believe_me


export %inline
Cast HTMLObjectElement ChildNode where cast = believe_me


export %inline
Cast HTMLObjectElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLObjectElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLObjectElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLObjectElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLObjectElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLObjectElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLObjectElement InnerHTML where cast = believe_me


export %inline
Cast HTMLObjectElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLObjectElement ParentNode where cast = believe_me


export %inline
Cast HTMLObjectElement Slottable where cast = believe_me


export %inline
Cast HTMLOptGroupElement HTMLElement where cast = believe_me


export %inline
Cast HTMLOptGroupElement Element where cast = believe_me


export %inline
Cast HTMLOptGroupElement Node where cast = believe_me


export %inline
Cast HTMLOptGroupElement EventTarget where cast = believe_me


export %inline
Cast HTMLOptGroupElement Object where cast = believe_me


export %inline
Cast HTMLOptGroupElement Animatable where cast = believe_me


export %inline
Cast HTMLOptGroupElement ChildNode where cast = believe_me


export %inline
Cast HTMLOptGroupElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLOptGroupElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLOptGroupElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLOptGroupElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLOptGroupElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLOptGroupElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLOptGroupElement InnerHTML where cast = believe_me


export %inline
Cast HTMLOptGroupElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLOptGroupElement ParentNode where cast = believe_me


export %inline
Cast HTMLOptGroupElement Slottable where cast = believe_me


export %inline
Cast HTMLOptionElement HTMLElement where cast = believe_me


export %inline
Cast HTMLOptionElement Element where cast = believe_me


export %inline
Cast HTMLOptionElement Node where cast = believe_me


export %inline
Cast HTMLOptionElement EventTarget where cast = believe_me


export %inline
Cast HTMLOptionElement Object where cast = believe_me


export %inline
Cast HTMLOptionElement Animatable where cast = believe_me


export %inline
Cast HTMLOptionElement ChildNode where cast = believe_me


export %inline
Cast HTMLOptionElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLOptionElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLOptionElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLOptionElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLOptionElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLOptionElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLOptionElement InnerHTML where cast = believe_me


export %inline
Cast HTMLOptionElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLOptionElement ParentNode where cast = believe_me


export %inline
Cast HTMLOptionElement Slottable where cast = believe_me


export %inline
Cast HTMLOptionsCollection HTMLCollection where cast = believe_me


export %inline
Cast HTMLOptionsCollection Object where cast = believe_me


export %inline
Cast HTMLOutputElement HTMLElement where cast = believe_me


export %inline
Cast HTMLOutputElement Element where cast = believe_me


export %inline
Cast HTMLOutputElement Node where cast = believe_me


export %inline
Cast HTMLOutputElement EventTarget where cast = believe_me


export %inline
Cast HTMLOutputElement Object where cast = believe_me


export %inline
Cast HTMLOutputElement Animatable where cast = believe_me


export %inline
Cast HTMLOutputElement ChildNode where cast = believe_me


export %inline
Cast HTMLOutputElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLOutputElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLOutputElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLOutputElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLOutputElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLOutputElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLOutputElement InnerHTML where cast = believe_me


export %inline
Cast HTMLOutputElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLOutputElement ParentNode where cast = believe_me


export %inline
Cast HTMLOutputElement Slottable where cast = believe_me


export %inline
Cast HTMLParagraphElement HTMLElement where cast = believe_me


export %inline
Cast HTMLParagraphElement Element where cast = believe_me


export %inline
Cast HTMLParagraphElement Node where cast = believe_me


export %inline
Cast HTMLParagraphElement EventTarget where cast = believe_me


export %inline
Cast HTMLParagraphElement Object where cast = believe_me


export %inline
Cast HTMLParagraphElement Animatable where cast = believe_me


export %inline
Cast HTMLParagraphElement ChildNode where cast = believe_me


export %inline
Cast HTMLParagraphElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLParagraphElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLParagraphElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLParagraphElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLParagraphElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLParagraphElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLParagraphElement InnerHTML where cast = believe_me


export %inline
Cast HTMLParagraphElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLParagraphElement ParentNode where cast = believe_me


export %inline
Cast HTMLParagraphElement Slottable where cast = believe_me


export %inline
Cast HTMLParamElement HTMLElement where cast = believe_me


export %inline
Cast HTMLParamElement Element where cast = believe_me


export %inline
Cast HTMLParamElement Node where cast = believe_me


export %inline
Cast HTMLParamElement EventTarget where cast = believe_me


export %inline
Cast HTMLParamElement Object where cast = believe_me


export %inline
Cast HTMLParamElement Animatable where cast = believe_me


export %inline
Cast HTMLParamElement ChildNode where cast = believe_me


export %inline
Cast HTMLParamElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLParamElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLParamElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLParamElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLParamElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLParamElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLParamElement InnerHTML where cast = believe_me


export %inline
Cast HTMLParamElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLParamElement ParentNode where cast = believe_me


export %inline
Cast HTMLParamElement Slottable where cast = believe_me


export %inline
Cast HTMLPictureElement HTMLElement where cast = believe_me


export %inline
Cast HTMLPictureElement Element where cast = believe_me


export %inline
Cast HTMLPictureElement Node where cast = believe_me


export %inline
Cast HTMLPictureElement EventTarget where cast = believe_me


export %inline
Cast HTMLPictureElement Object where cast = believe_me


export %inline
Cast HTMLPictureElement Animatable where cast = believe_me


export %inline
Cast HTMLPictureElement ChildNode where cast = believe_me


export %inline
Cast HTMLPictureElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLPictureElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLPictureElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLPictureElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLPictureElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLPictureElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLPictureElement InnerHTML where cast = believe_me


export %inline
Cast HTMLPictureElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLPictureElement ParentNode where cast = believe_me


export %inline
Cast HTMLPictureElement Slottable where cast = believe_me


export %inline
Cast HTMLPreElement HTMLElement where cast = believe_me


export %inline
Cast HTMLPreElement Element where cast = believe_me


export %inline
Cast HTMLPreElement Node where cast = believe_me


export %inline
Cast HTMLPreElement EventTarget where cast = believe_me


export %inline
Cast HTMLPreElement Object where cast = believe_me


export %inline
Cast HTMLPreElement Animatable where cast = believe_me


export %inline
Cast HTMLPreElement ChildNode where cast = believe_me


export %inline
Cast HTMLPreElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLPreElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLPreElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLPreElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLPreElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLPreElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLPreElement InnerHTML where cast = believe_me


export %inline
Cast HTMLPreElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLPreElement ParentNode where cast = believe_me


export %inline
Cast HTMLPreElement Slottable where cast = believe_me


export %inline
Cast HTMLProgressElement HTMLElement where cast = believe_me


export %inline
Cast HTMLProgressElement Element where cast = believe_me


export %inline
Cast HTMLProgressElement Node where cast = believe_me


export %inline
Cast HTMLProgressElement EventTarget where cast = believe_me


export %inline
Cast HTMLProgressElement Object where cast = believe_me


export %inline
Cast HTMLProgressElement Animatable where cast = believe_me


export %inline
Cast HTMLProgressElement ChildNode where cast = believe_me


export %inline
Cast HTMLProgressElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLProgressElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLProgressElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLProgressElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLProgressElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLProgressElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLProgressElement InnerHTML where cast = believe_me


export %inline
Cast HTMLProgressElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLProgressElement ParentNode where cast = believe_me


export %inline
Cast HTMLProgressElement Slottable where cast = believe_me


export %inline
Cast HTMLQuoteElement HTMLElement where cast = believe_me


export %inline
Cast HTMLQuoteElement Element where cast = believe_me


export %inline
Cast HTMLQuoteElement Node where cast = believe_me


export %inline
Cast HTMLQuoteElement EventTarget where cast = believe_me


export %inline
Cast HTMLQuoteElement Object where cast = believe_me


export %inline
Cast HTMLQuoteElement Animatable where cast = believe_me


export %inline
Cast HTMLQuoteElement ChildNode where cast = believe_me


export %inline
Cast HTMLQuoteElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLQuoteElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLQuoteElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLQuoteElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLQuoteElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLQuoteElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLQuoteElement InnerHTML where cast = believe_me


export %inline
Cast HTMLQuoteElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLQuoteElement ParentNode where cast = believe_me


export %inline
Cast HTMLQuoteElement Slottable where cast = believe_me


export %inline
Cast HTMLScriptElement HTMLElement where cast = believe_me


export %inline
Cast HTMLScriptElement Element where cast = believe_me


export %inline
Cast HTMLScriptElement Node where cast = believe_me


export %inline
Cast HTMLScriptElement EventTarget where cast = believe_me


export %inline
Cast HTMLScriptElement Object where cast = believe_me


export %inline
Cast HTMLScriptElement Animatable where cast = believe_me


export %inline
Cast HTMLScriptElement ChildNode where cast = believe_me


export %inline
Cast HTMLScriptElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLScriptElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLScriptElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLScriptElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLScriptElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLScriptElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLScriptElement InnerHTML where cast = believe_me


export %inline
Cast HTMLScriptElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLScriptElement ParentNode where cast = believe_me


export %inline
Cast HTMLScriptElement Slottable where cast = believe_me


export %inline
Cast HTMLSelectElement HTMLElement where cast = believe_me


export %inline
Cast HTMLSelectElement Element where cast = believe_me


export %inline
Cast HTMLSelectElement Node where cast = believe_me


export %inline
Cast HTMLSelectElement EventTarget where cast = believe_me


export %inline
Cast HTMLSelectElement Object where cast = believe_me


export %inline
Cast HTMLSelectElement Animatable where cast = believe_me


export %inline
Cast HTMLSelectElement ChildNode where cast = believe_me


export %inline
Cast HTMLSelectElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLSelectElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLSelectElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLSelectElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLSelectElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLSelectElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLSelectElement InnerHTML where cast = believe_me


export %inline
Cast HTMLSelectElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLSelectElement ParentNode where cast = believe_me


export %inline
Cast HTMLSelectElement Slottable where cast = believe_me


export %inline
Cast HTMLSlotElement HTMLElement where cast = believe_me


export %inline
Cast HTMLSlotElement Element where cast = believe_me


export %inline
Cast HTMLSlotElement Node where cast = believe_me


export %inline
Cast HTMLSlotElement EventTarget where cast = believe_me


export %inline
Cast HTMLSlotElement Object where cast = believe_me


export %inline
Cast HTMLSlotElement Animatable where cast = believe_me


export %inline
Cast HTMLSlotElement ChildNode where cast = believe_me


export %inline
Cast HTMLSlotElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLSlotElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLSlotElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLSlotElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLSlotElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLSlotElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLSlotElement InnerHTML where cast = believe_me


export %inline
Cast HTMLSlotElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLSlotElement ParentNode where cast = believe_me


export %inline
Cast HTMLSlotElement Slottable where cast = believe_me


export %inline
Cast HTMLSourceElement HTMLElement where cast = believe_me


export %inline
Cast HTMLSourceElement Element where cast = believe_me


export %inline
Cast HTMLSourceElement Node where cast = believe_me


export %inline
Cast HTMLSourceElement EventTarget where cast = believe_me


export %inline
Cast HTMLSourceElement Object where cast = believe_me


export %inline
Cast HTMLSourceElement Animatable where cast = believe_me


export %inline
Cast HTMLSourceElement ChildNode where cast = believe_me


export %inline
Cast HTMLSourceElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLSourceElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLSourceElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLSourceElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLSourceElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLSourceElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLSourceElement InnerHTML where cast = believe_me


export %inline
Cast HTMLSourceElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLSourceElement ParentNode where cast = believe_me


export %inline
Cast HTMLSourceElement Slottable where cast = believe_me


export %inline
Cast HTMLSpanElement HTMLElement where cast = believe_me


export %inline
Cast HTMLSpanElement Element where cast = believe_me


export %inline
Cast HTMLSpanElement Node where cast = believe_me


export %inline
Cast HTMLSpanElement EventTarget where cast = believe_me


export %inline
Cast HTMLSpanElement Object where cast = believe_me


export %inline
Cast HTMLSpanElement Animatable where cast = believe_me


export %inline
Cast HTMLSpanElement ChildNode where cast = believe_me


export %inline
Cast HTMLSpanElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLSpanElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLSpanElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLSpanElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLSpanElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLSpanElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLSpanElement InnerHTML where cast = believe_me


export %inline
Cast HTMLSpanElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLSpanElement ParentNode where cast = believe_me


export %inline
Cast HTMLSpanElement Slottable where cast = believe_me


export %inline
Cast HTMLStyleElement HTMLElement where cast = believe_me


export %inline
Cast HTMLStyleElement Element where cast = believe_me


export %inline
Cast HTMLStyleElement Node where cast = believe_me


export %inline
Cast HTMLStyleElement EventTarget where cast = believe_me


export %inline
Cast HTMLStyleElement Object where cast = believe_me


export %inline
Cast HTMLStyleElement Animatable where cast = believe_me


export %inline
Cast HTMLStyleElement ChildNode where cast = believe_me


export %inline
Cast HTMLStyleElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLStyleElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLStyleElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLStyleElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLStyleElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLStyleElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLStyleElement InnerHTML where cast = believe_me


export %inline
Cast HTMLStyleElement LinkStyle where cast = believe_me


export %inline
Cast HTMLStyleElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLStyleElement ParentNode where cast = believe_me


export %inline
Cast HTMLStyleElement Slottable where cast = believe_me


export %inline
Cast HTMLTableCaptionElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTableCaptionElement Element where cast = believe_me


export %inline
Cast HTMLTableCaptionElement Node where cast = believe_me


export %inline
Cast HTMLTableCaptionElement EventTarget where cast = believe_me


export %inline
Cast HTMLTableCaptionElement Object where cast = believe_me


export %inline
Cast HTMLTableCaptionElement Animatable where cast = believe_me


export %inline
Cast HTMLTableCaptionElement ChildNode where cast = believe_me


export %inline
Cast HTMLTableCaptionElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTableCaptionElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTableCaptionElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTableCaptionElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTableCaptionElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTableCaptionElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTableCaptionElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTableCaptionElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTableCaptionElement ParentNode where cast = believe_me


export %inline
Cast HTMLTableCaptionElement Slottable where cast = believe_me


export %inline
Cast HTMLTableCellElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTableCellElement Element where cast = believe_me


export %inline
Cast HTMLTableCellElement Node where cast = believe_me


export %inline
Cast HTMLTableCellElement EventTarget where cast = believe_me


export %inline
Cast HTMLTableCellElement Object where cast = believe_me


export %inline
Cast HTMLTableCellElement Animatable where cast = believe_me


export %inline
Cast HTMLTableCellElement ChildNode where cast = believe_me


export %inline
Cast HTMLTableCellElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTableCellElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTableCellElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTableCellElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTableCellElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTableCellElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTableCellElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTableCellElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTableCellElement ParentNode where cast = believe_me


export %inline
Cast HTMLTableCellElement Slottable where cast = believe_me


export %inline
Cast HTMLTableColElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTableColElement Element where cast = believe_me


export %inline
Cast HTMLTableColElement Node where cast = believe_me


export %inline
Cast HTMLTableColElement EventTarget where cast = believe_me


export %inline
Cast HTMLTableColElement Object where cast = believe_me


export %inline
Cast HTMLTableColElement Animatable where cast = believe_me


export %inline
Cast HTMLTableColElement ChildNode where cast = believe_me


export %inline
Cast HTMLTableColElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTableColElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTableColElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTableColElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTableColElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTableColElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTableColElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTableColElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTableColElement ParentNode where cast = believe_me


export %inline
Cast HTMLTableColElement Slottable where cast = believe_me


export %inline
Cast HTMLTableElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTableElement Element where cast = believe_me


export %inline
Cast HTMLTableElement Node where cast = believe_me


export %inline
Cast HTMLTableElement EventTarget where cast = believe_me


export %inline
Cast HTMLTableElement Object where cast = believe_me


export %inline
Cast HTMLTableElement Animatable where cast = believe_me


export %inline
Cast HTMLTableElement ChildNode where cast = believe_me


export %inline
Cast HTMLTableElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTableElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTableElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTableElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTableElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTableElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTableElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTableElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTableElement ParentNode where cast = believe_me


export %inline
Cast HTMLTableElement Slottable where cast = believe_me


export %inline
Cast HTMLTableRowElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTableRowElement Element where cast = believe_me


export %inline
Cast HTMLTableRowElement Node where cast = believe_me


export %inline
Cast HTMLTableRowElement EventTarget where cast = believe_me


export %inline
Cast HTMLTableRowElement Object where cast = believe_me


export %inline
Cast HTMLTableRowElement Animatable where cast = believe_me


export %inline
Cast HTMLTableRowElement ChildNode where cast = believe_me


export %inline
Cast HTMLTableRowElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTableRowElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTableRowElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTableRowElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTableRowElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTableRowElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTableRowElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTableRowElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTableRowElement ParentNode where cast = believe_me


export %inline
Cast HTMLTableRowElement Slottable where cast = believe_me


export %inline
Cast HTMLTableSectionElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTableSectionElement Element where cast = believe_me


export %inline
Cast HTMLTableSectionElement Node where cast = believe_me


export %inline
Cast HTMLTableSectionElement EventTarget where cast = believe_me


export %inline
Cast HTMLTableSectionElement Object where cast = believe_me


export %inline
Cast HTMLTableSectionElement Animatable where cast = believe_me


export %inline
Cast HTMLTableSectionElement ChildNode where cast = believe_me


export %inline
Cast HTMLTableSectionElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTableSectionElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTableSectionElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTableSectionElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTableSectionElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTableSectionElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTableSectionElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTableSectionElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTableSectionElement ParentNode where cast = believe_me


export %inline
Cast HTMLTableSectionElement Slottable where cast = believe_me


export %inline
Cast HTMLTemplateElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTemplateElement Element where cast = believe_me


export %inline
Cast HTMLTemplateElement Node where cast = believe_me


export %inline
Cast HTMLTemplateElement EventTarget where cast = believe_me


export %inline
Cast HTMLTemplateElement Object where cast = believe_me


export %inline
Cast HTMLTemplateElement Animatable where cast = believe_me


export %inline
Cast HTMLTemplateElement ChildNode where cast = believe_me


export %inline
Cast HTMLTemplateElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTemplateElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTemplateElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTemplateElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTemplateElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTemplateElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTemplateElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTemplateElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTemplateElement ParentNode where cast = believe_me


export %inline
Cast HTMLTemplateElement Slottable where cast = believe_me


export %inline
Cast HTMLTextAreaElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTextAreaElement Element where cast = believe_me


export %inline
Cast HTMLTextAreaElement Node where cast = believe_me


export %inline
Cast HTMLTextAreaElement EventTarget where cast = believe_me


export %inline
Cast HTMLTextAreaElement Object where cast = believe_me


export %inline
Cast HTMLTextAreaElement Animatable where cast = believe_me


export %inline
Cast HTMLTextAreaElement ChildNode where cast = believe_me


export %inline
Cast HTMLTextAreaElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTextAreaElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTextAreaElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTextAreaElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTextAreaElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTextAreaElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTextAreaElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTextAreaElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTextAreaElement ParentNode where cast = believe_me


export %inline
Cast HTMLTextAreaElement Slottable where cast = believe_me


export %inline
Cast HTMLTimeElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTimeElement Element where cast = believe_me


export %inline
Cast HTMLTimeElement Node where cast = believe_me


export %inline
Cast HTMLTimeElement EventTarget where cast = believe_me


export %inline
Cast HTMLTimeElement Object where cast = believe_me


export %inline
Cast HTMLTimeElement Animatable where cast = believe_me


export %inline
Cast HTMLTimeElement ChildNode where cast = believe_me


export %inline
Cast HTMLTimeElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTimeElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTimeElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTimeElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTimeElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTimeElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTimeElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTimeElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTimeElement ParentNode where cast = believe_me


export %inline
Cast HTMLTimeElement Slottable where cast = believe_me


export %inline
Cast HTMLTitleElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTitleElement Element where cast = believe_me


export %inline
Cast HTMLTitleElement Node where cast = believe_me


export %inline
Cast HTMLTitleElement EventTarget where cast = believe_me


export %inline
Cast HTMLTitleElement Object where cast = believe_me


export %inline
Cast HTMLTitleElement Animatable where cast = believe_me


export %inline
Cast HTMLTitleElement ChildNode where cast = believe_me


export %inline
Cast HTMLTitleElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTitleElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTitleElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTitleElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTitleElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTitleElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTitleElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTitleElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTitleElement ParentNode where cast = believe_me


export %inline
Cast HTMLTitleElement Slottable where cast = believe_me


export %inline
Cast HTMLTrackElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTrackElement Element where cast = believe_me


export %inline
Cast HTMLTrackElement Node where cast = believe_me


export %inline
Cast HTMLTrackElement EventTarget where cast = believe_me


export %inline
Cast HTMLTrackElement Object where cast = believe_me


export %inline
Cast HTMLTrackElement Animatable where cast = believe_me


export %inline
Cast HTMLTrackElement ChildNode where cast = believe_me


export %inline
Cast HTMLTrackElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTrackElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTrackElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTrackElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTrackElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTrackElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTrackElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTrackElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTrackElement ParentNode where cast = believe_me


export %inline
Cast HTMLTrackElement Slottable where cast = believe_me


export %inline
Cast HTMLUListElement HTMLElement where cast = believe_me


export %inline
Cast HTMLUListElement Element where cast = believe_me


export %inline
Cast HTMLUListElement Node where cast = believe_me


export %inline
Cast HTMLUListElement EventTarget where cast = believe_me


export %inline
Cast HTMLUListElement Object where cast = believe_me


export %inline
Cast HTMLUListElement Animatable where cast = believe_me


export %inline
Cast HTMLUListElement ChildNode where cast = believe_me


export %inline
Cast HTMLUListElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLUListElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLUListElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLUListElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLUListElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLUListElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLUListElement InnerHTML where cast = believe_me


export %inline
Cast HTMLUListElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLUListElement ParentNode where cast = believe_me


export %inline
Cast HTMLUListElement Slottable where cast = believe_me


export %inline
Cast HTMLUnknownElement HTMLElement where cast = believe_me


export %inline
Cast HTMLUnknownElement Element where cast = believe_me


export %inline
Cast HTMLUnknownElement Node where cast = believe_me


export %inline
Cast HTMLUnknownElement EventTarget where cast = believe_me


export %inline
Cast HTMLUnknownElement Object where cast = believe_me


export %inline
Cast HTMLUnknownElement Animatable where cast = believe_me


export %inline
Cast HTMLUnknownElement ChildNode where cast = believe_me


export %inline
Cast HTMLUnknownElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLUnknownElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLUnknownElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLUnknownElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLUnknownElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLUnknownElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLUnknownElement InnerHTML where cast = believe_me


export %inline
Cast HTMLUnknownElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLUnknownElement ParentNode where cast = believe_me


export %inline
Cast HTMLUnknownElement Slottable where cast = believe_me


export %inline
Cast HTMLVideoElement HTMLMediaElement where cast = believe_me


export %inline
Cast HTMLVideoElement HTMLElement where cast = believe_me


export %inline
Cast HTMLVideoElement Element where cast = believe_me


export %inline
Cast HTMLVideoElement Node where cast = believe_me


export %inline
Cast HTMLVideoElement EventTarget where cast = believe_me


export %inline
Cast HTMLVideoElement Object where cast = believe_me


export %inline
Cast HTMLVideoElement Animatable where cast = believe_me


export %inline
Cast HTMLVideoElement ChildNode where cast = believe_me


export %inline
Cast HTMLVideoElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLVideoElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLVideoElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLVideoElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLVideoElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLVideoElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLVideoElement InnerHTML where cast = believe_me


export %inline
Cast HTMLVideoElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLVideoElement ParentNode where cast = believe_me


export %inline
Cast HTMLVideoElement Slottable where cast = believe_me


export %inline
Cast HashChangeEvent Event where cast = believe_me


export %inline
Cast HashChangeEvent Object where cast = believe_me


export %inline
Cast Headers Object where cast = believe_me


export %inline
Cast History Object where cast = believe_me


export %inline
Cast IDBCursor Object where cast = believe_me


export %inline
Cast IDBCursorWithValue IDBCursor where cast = believe_me


export %inline
Cast IDBCursorWithValue Object where cast = believe_me


export %inline
Cast IDBDatabase EventTarget where cast = believe_me


export %inline
Cast IDBDatabase Object where cast = believe_me


export %inline
Cast IDBFactory Object where cast = believe_me


export %inline
Cast IDBIndex Object where cast = believe_me


export %inline
Cast IDBKeyRange Object where cast = believe_me


export %inline
Cast IDBObjectStore Object where cast = believe_me


export %inline
Cast IDBOpenDBRequest IDBRequest where cast = believe_me


export %inline
Cast IDBOpenDBRequest EventTarget where cast = believe_me


export %inline
Cast IDBOpenDBRequest Object where cast = believe_me


export %inline
Cast IDBRequest EventTarget where cast = believe_me


export %inline
Cast IDBRequest Object where cast = believe_me


export %inline
Cast IDBTransaction EventTarget where cast = believe_me


export %inline
Cast IDBTransaction Object where cast = believe_me


export %inline
Cast IDBVersionChangeEvent Event where cast = believe_me


export %inline
Cast IDBVersionChangeEvent Object where cast = believe_me


export %inline
Cast ImageBitmap Object where cast = believe_me


export %inline
Cast ImageBitmapRenderingContext Object where cast = believe_me


export %inline
Cast ImageData Object where cast = believe_me


export %inline
Cast InputDeviceInfo MediaDeviceInfo where cast = believe_me


export %inline
Cast InputDeviceInfo Object where cast = believe_me


export %inline
Cast InputEvent UIEvent where cast = believe_me


export %inline
Cast InputEvent Event where cast = believe_me


export %inline
Cast InputEvent Object where cast = believe_me


export %inline
Cast KeyboardEvent UIEvent where cast = believe_me


export %inline
Cast KeyboardEvent Event where cast = believe_me


export %inline
Cast KeyboardEvent Object where cast = believe_me


export %inline
Cast KeyframeEffect AnimationEffect where cast = believe_me


export %inline
Cast KeyframeEffect Object where cast = believe_me


export %inline
Cast Location Object where cast = believe_me


export %inline
Cast MathMLElement Element where cast = believe_me


export %inline
Cast MathMLElement Node where cast = believe_me


export %inline
Cast MathMLElement EventTarget where cast = believe_me


export %inline
Cast MathMLElement Object where cast = believe_me


export %inline
Cast MathMLElement Animatable where cast = believe_me


export %inline
Cast MathMLElement ChildNode where cast = believe_me


export %inline
Cast MathMLElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast MathMLElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast MathMLElement GeometryUtils where cast = believe_me


export %inline
Cast MathMLElement GlobalEventHandlers where cast = believe_me


export %inline
Cast MathMLElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast MathMLElement InnerHTML where cast = believe_me


export %inline
Cast MathMLElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast MathMLElement ParentNode where cast = believe_me


export %inline
Cast MathMLElement Slottable where cast = believe_me


export %inline
Cast MediaDeviceInfo Object where cast = believe_me


export %inline
Cast MediaDevices EventTarget where cast = believe_me


export %inline
Cast MediaDevices Object where cast = believe_me


export %inline
Cast MediaError Object where cast = believe_me


export %inline
Cast MediaList Object where cast = believe_me


export %inline
Cast MediaQueryList EventTarget where cast = believe_me


export %inline
Cast MediaQueryList Object where cast = believe_me


export %inline
Cast MediaQueryListEvent Event where cast = believe_me


export %inline
Cast MediaQueryListEvent Object where cast = believe_me


export %inline
Cast MediaSource EventTarget where cast = believe_me


export %inline
Cast MediaSource Object where cast = believe_me


export %inline
Cast MediaStream EventTarget where cast = believe_me


export %inline
Cast MediaStream Object where cast = believe_me


export %inline
Cast MediaStreamTrack EventTarget where cast = believe_me


export %inline
Cast MediaStreamTrack Object where cast = believe_me


export %inline
Cast MediaStreamTrackEvent Event where cast = believe_me


export %inline
Cast MediaStreamTrackEvent Object where cast = believe_me


export %inline
Cast MessageChannel Object where cast = believe_me


export %inline
Cast MessageEvent Event where cast = believe_me


export %inline
Cast MessageEvent Object where cast = believe_me


export %inline
Cast MessagePort EventTarget where cast = believe_me


export %inline
Cast MessagePort Object where cast = believe_me


export %inline
Cast MimeType Object where cast = believe_me


export %inline
Cast MimeTypeArray Object where cast = believe_me


export %inline
Cast MouseEvent UIEvent where cast = believe_me


export %inline
Cast MouseEvent Event where cast = believe_me


export %inline
Cast MouseEvent Object where cast = believe_me


export %inline
Cast MutationObserver Object where cast = believe_me


export %inline
Cast MutationRecord Object where cast = believe_me


export %inline
Cast NamedNodeMap Object where cast = believe_me


export %inline
Cast NavigationPreloadManager Object where cast = believe_me


export %inline
Cast Navigator Object where cast = believe_me


export %inline
Cast Navigator NavigatorConcurrentHardware where cast = believe_me


export %inline
Cast Navigator NavigatorContentUtils where cast = believe_me


export %inline
Cast Navigator NavigatorCookies where cast = believe_me


export %inline
Cast Navigator NavigatorID where cast = believe_me


export %inline
Cast Navigator NavigatorLanguage where cast = believe_me


export %inline
Cast Navigator NavigatorOnLine where cast = believe_me


export %inline
Cast Navigator NavigatorPlugins where cast = believe_me


export %inline
Cast Node EventTarget where cast = believe_me


export %inline
Cast Node Object where cast = believe_me


export %inline
Cast NodeIterator Object where cast = believe_me


export %inline
Cast NodeList Object where cast = believe_me


export %inline
Cast OffscreenCanvas EventTarget where cast = believe_me


export %inline
Cast OffscreenCanvas Object where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D Object where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasCompositing where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasDrawImage where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasDrawPath where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasFillStrokeStyles where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasFilters where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasImageData where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasImageSmoothing where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasPath where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasPathDrawingStyles where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasRect where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasShadowStyles where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasState where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasText where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasTextDrawingStyles where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasTransform where cast = believe_me


export %inline
Cast OverconstrainedError DOMException where cast = believe_me


export %inline
Cast OverconstrainedError Object where cast = believe_me


export %inline
Cast PageTransitionEvent Event where cast = believe_me


export %inline
Cast PageTransitionEvent Object where cast = believe_me


export %inline
Cast Path2D Object where cast = believe_me


export %inline
Cast Path2D CanvasPath where cast = believe_me


export %inline
Cast Performance EventTarget where cast = believe_me


export %inline
Cast Performance Object where cast = believe_me


export %inline
Cast PermissionStatus EventTarget where cast = believe_me


export %inline
Cast PermissionStatus Object where cast = believe_me


export %inline
Cast Permissions Object where cast = believe_me


export %inline
Cast Plugin Object where cast = believe_me


export %inline
Cast PluginArray Object where cast = believe_me


export %inline
Cast PopStateEvent Event where cast = believe_me


export %inline
Cast PopStateEvent Object where cast = believe_me


export %inline
Cast ProcessingInstruction CharacterData where cast = believe_me


export %inline
Cast ProcessingInstruction Node where cast = believe_me


export %inline
Cast ProcessingInstruction EventTarget where cast = believe_me


export %inline
Cast ProcessingInstruction Object where cast = believe_me


export %inline
Cast ProcessingInstruction ChildNode where cast = believe_me


export %inline
Cast ProcessingInstruction LinkStyle where cast = believe_me


export %inline
Cast ProcessingInstruction NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast ProgressEvent Event where cast = believe_me


export %inline
Cast ProgressEvent Object where cast = believe_me


export %inline
Cast PromiseRejectionEvent Event where cast = believe_me


export %inline
Cast PromiseRejectionEvent Object where cast = believe_me


export %inline
Cast RadioNodeList NodeList where cast = believe_me


export %inline
Cast RadioNodeList Object where cast = believe_me


export %inline
Cast Range AbstractRange where cast = believe_me


export %inline
Cast Range Object where cast = believe_me


export %inline
Cast ReadableByteStreamController Object where cast = believe_me


export %inline
Cast ReadableStream Object where cast = believe_me


export %inline
Cast ReadableStreamBYOBReader Object where cast = believe_me


export %inline
Cast ReadableStreamBYOBReader ReadableStreamGenericReader where cast = believe_me


export %inline
Cast ReadableStreamBYOBRequest Object where cast = believe_me


export %inline
Cast ReadableStreamDefaultController Object where cast = believe_me


export %inline
Cast ReadableStreamDefaultReader Object where cast = believe_me


export %inline
Cast ReadableStreamDefaultReader ReadableStreamGenericReader where cast = believe_me


export %inline
Cast Request Object where cast = believe_me


export %inline
Cast Request Body where cast = believe_me


export %inline
Cast Response Object where cast = believe_me


export %inline
Cast Response Body where cast = believe_me


export %inline
Cast SVGAElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGAElement SVGElement where cast = believe_me


export %inline
Cast SVGAElement Element where cast = believe_me


export %inline
Cast SVGAElement Node where cast = believe_me


export %inline
Cast SVGAElement EventTarget where cast = believe_me


export %inline
Cast SVGAElement Object where cast = believe_me


export %inline
Cast SVGAElement Animatable where cast = believe_me


export %inline
Cast SVGAElement ChildNode where cast = believe_me


export %inline
Cast SVGAElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGAElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGAElement GeometryUtils where cast = believe_me


export %inline
Cast SVGAElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGAElement HTMLHyperlinkElementUtils where cast = believe_me


export %inline
Cast SVGAElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGAElement InnerHTML where cast = believe_me


export %inline
Cast SVGAElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGAElement ParentNode where cast = believe_me


export %inline
Cast SVGAElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGAElement SVGTests where cast = believe_me


export %inline
Cast SVGAElement SVGURIReference where cast = believe_me


export %inline
Cast SVGAElement Slottable where cast = believe_me


export %inline
Cast SVGAngle Object where cast = believe_me


export %inline
Cast SVGAnimatedAngle Object where cast = believe_me


export %inline
Cast SVGAnimatedBoolean Object where cast = believe_me


export %inline
Cast SVGAnimatedEnumeration Object where cast = believe_me


export %inline
Cast SVGAnimatedInteger Object where cast = believe_me


export %inline
Cast SVGAnimatedLength Object where cast = believe_me


export %inline
Cast SVGAnimatedLengthList Object where cast = believe_me


export %inline
Cast SVGAnimatedNumber Object where cast = believe_me


export %inline
Cast SVGAnimatedNumberList Object where cast = believe_me


export %inline
Cast SVGAnimatedPreserveAspectRatio Object where cast = believe_me


export %inline
Cast SVGAnimatedRect Object where cast = believe_me


export %inline
Cast SVGAnimatedString Object where cast = believe_me


export %inline
Cast SVGAnimatedTransformList Object where cast = believe_me


export %inline
Cast SVGCircleElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGCircleElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGCircleElement SVGElement where cast = believe_me


export %inline
Cast SVGCircleElement Element where cast = believe_me


export %inline
Cast SVGCircleElement Node where cast = believe_me


export %inline
Cast SVGCircleElement EventTarget where cast = believe_me


export %inline
Cast SVGCircleElement Object where cast = believe_me


export %inline
Cast SVGCircleElement Animatable where cast = believe_me


export %inline
Cast SVGCircleElement ChildNode where cast = believe_me


export %inline
Cast SVGCircleElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGCircleElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGCircleElement GeometryUtils where cast = believe_me


export %inline
Cast SVGCircleElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGCircleElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGCircleElement InnerHTML where cast = believe_me


export %inline
Cast SVGCircleElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGCircleElement ParentNode where cast = believe_me


export %inline
Cast SVGCircleElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGCircleElement SVGTests where cast = believe_me


export %inline
Cast SVGCircleElement Slottable where cast = believe_me


export %inline
Cast SVGDefsElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGDefsElement SVGElement where cast = believe_me


export %inline
Cast SVGDefsElement Element where cast = believe_me


export %inline
Cast SVGDefsElement Node where cast = believe_me


export %inline
Cast SVGDefsElement EventTarget where cast = believe_me


export %inline
Cast SVGDefsElement Object where cast = believe_me


export %inline
Cast SVGDefsElement Animatable where cast = believe_me


export %inline
Cast SVGDefsElement ChildNode where cast = believe_me


export %inline
Cast SVGDefsElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGDefsElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGDefsElement GeometryUtils where cast = believe_me


export %inline
Cast SVGDefsElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGDefsElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGDefsElement InnerHTML where cast = believe_me


export %inline
Cast SVGDefsElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGDefsElement ParentNode where cast = believe_me


export %inline
Cast SVGDefsElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGDefsElement SVGTests where cast = believe_me


export %inline
Cast SVGDefsElement Slottable where cast = believe_me


export %inline
Cast SVGDescElement SVGElement where cast = believe_me


export %inline
Cast SVGDescElement Element where cast = believe_me


export %inline
Cast SVGDescElement Node where cast = believe_me


export %inline
Cast SVGDescElement EventTarget where cast = believe_me


export %inline
Cast SVGDescElement Object where cast = believe_me


export %inline
Cast SVGDescElement Animatable where cast = believe_me


export %inline
Cast SVGDescElement ChildNode where cast = believe_me


export %inline
Cast SVGDescElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGDescElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGDescElement GeometryUtils where cast = believe_me


export %inline
Cast SVGDescElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGDescElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGDescElement InnerHTML where cast = believe_me


export %inline
Cast SVGDescElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGDescElement ParentNode where cast = believe_me


export %inline
Cast SVGDescElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGDescElement Slottable where cast = believe_me


export %inline
Cast SVGElement Element where cast = believe_me


export %inline
Cast SVGElement Node where cast = believe_me


export %inline
Cast SVGElement EventTarget where cast = believe_me


export %inline
Cast SVGElement Object where cast = believe_me


export %inline
Cast SVGElement Animatable where cast = believe_me


export %inline
Cast SVGElement ChildNode where cast = believe_me


export %inline
Cast SVGElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGElement GeometryUtils where cast = believe_me


export %inline
Cast SVGElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGElement InnerHTML where cast = believe_me


export %inline
Cast SVGElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGElement ParentNode where cast = believe_me


export %inline
Cast SVGElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGElement Slottable where cast = believe_me


export %inline
Cast SVGEllipseElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGEllipseElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGEllipseElement SVGElement where cast = believe_me


export %inline
Cast SVGEllipseElement Element where cast = believe_me


export %inline
Cast SVGEllipseElement Node where cast = believe_me


export %inline
Cast SVGEllipseElement EventTarget where cast = believe_me


export %inline
Cast SVGEllipseElement Object where cast = believe_me


export %inline
Cast SVGEllipseElement Animatable where cast = believe_me


export %inline
Cast SVGEllipseElement ChildNode where cast = believe_me


export %inline
Cast SVGEllipseElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGEllipseElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGEllipseElement GeometryUtils where cast = believe_me


export %inline
Cast SVGEllipseElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGEllipseElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGEllipseElement InnerHTML where cast = believe_me


export %inline
Cast SVGEllipseElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGEllipseElement ParentNode where cast = believe_me


export %inline
Cast SVGEllipseElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGEllipseElement SVGTests where cast = believe_me


export %inline
Cast SVGEllipseElement Slottable where cast = believe_me


export %inline
Cast SVGForeignObjectElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGForeignObjectElement SVGElement where cast = believe_me


export %inline
Cast SVGForeignObjectElement Element where cast = believe_me


export %inline
Cast SVGForeignObjectElement Node where cast = believe_me


export %inline
Cast SVGForeignObjectElement EventTarget where cast = believe_me


export %inline
Cast SVGForeignObjectElement Object where cast = believe_me


export %inline
Cast SVGForeignObjectElement Animatable where cast = believe_me


export %inline
Cast SVGForeignObjectElement ChildNode where cast = believe_me


export %inline
Cast SVGForeignObjectElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGForeignObjectElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGForeignObjectElement GeometryUtils where cast = believe_me


export %inline
Cast SVGForeignObjectElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGForeignObjectElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGForeignObjectElement InnerHTML where cast = believe_me


export %inline
Cast SVGForeignObjectElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGForeignObjectElement ParentNode where cast = believe_me


export %inline
Cast SVGForeignObjectElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGForeignObjectElement SVGTests where cast = believe_me


export %inline
Cast SVGForeignObjectElement Slottable where cast = believe_me


export %inline
Cast SVGGElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGGElement SVGElement where cast = believe_me


export %inline
Cast SVGGElement Element where cast = believe_me


export %inline
Cast SVGGElement Node where cast = believe_me


export %inline
Cast SVGGElement EventTarget where cast = believe_me


export %inline
Cast SVGGElement Object where cast = believe_me


export %inline
Cast SVGGElement Animatable where cast = believe_me


export %inline
Cast SVGGElement ChildNode where cast = believe_me


export %inline
Cast SVGGElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGGElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGGElement GeometryUtils where cast = believe_me


export %inline
Cast SVGGElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGGElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGGElement InnerHTML where cast = believe_me


export %inline
Cast SVGGElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGGElement ParentNode where cast = believe_me


export %inline
Cast SVGGElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGGElement SVGTests where cast = believe_me


export %inline
Cast SVGGElement Slottable where cast = believe_me


export %inline
Cast SVGGeometryElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGGeometryElement SVGElement where cast = believe_me


export %inline
Cast SVGGeometryElement Element where cast = believe_me


export %inline
Cast SVGGeometryElement Node where cast = believe_me


export %inline
Cast SVGGeometryElement EventTarget where cast = believe_me


export %inline
Cast SVGGeometryElement Object where cast = believe_me


export %inline
Cast SVGGeometryElement Animatable where cast = believe_me


export %inline
Cast SVGGeometryElement ChildNode where cast = believe_me


export %inline
Cast SVGGeometryElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGGeometryElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGGeometryElement GeometryUtils where cast = believe_me


export %inline
Cast SVGGeometryElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGGeometryElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGGeometryElement InnerHTML where cast = believe_me


export %inline
Cast SVGGeometryElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGGeometryElement ParentNode where cast = believe_me


export %inline
Cast SVGGeometryElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGGeometryElement SVGTests where cast = believe_me


export %inline
Cast SVGGeometryElement Slottable where cast = believe_me


export %inline
Cast SVGGradientElement SVGElement where cast = believe_me


export %inline
Cast SVGGradientElement Element where cast = believe_me


export %inline
Cast SVGGradientElement Node where cast = believe_me


export %inline
Cast SVGGradientElement EventTarget where cast = believe_me


export %inline
Cast SVGGradientElement Object where cast = believe_me


export %inline
Cast SVGGradientElement Animatable where cast = believe_me


export %inline
Cast SVGGradientElement ChildNode where cast = believe_me


export %inline
Cast SVGGradientElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGGradientElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGGradientElement GeometryUtils where cast = believe_me


export %inline
Cast SVGGradientElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGGradientElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGGradientElement InnerHTML where cast = believe_me


export %inline
Cast SVGGradientElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGGradientElement ParentNode where cast = believe_me


export %inline
Cast SVGGradientElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGGradientElement SVGURIReference where cast = believe_me


export %inline
Cast SVGGradientElement Slottable where cast = believe_me


export %inline
Cast SVGGraphicsElement SVGElement where cast = believe_me


export %inline
Cast SVGGraphicsElement Element where cast = believe_me


export %inline
Cast SVGGraphicsElement Node where cast = believe_me


export %inline
Cast SVGGraphicsElement EventTarget where cast = believe_me


export %inline
Cast SVGGraphicsElement Object where cast = believe_me


export %inline
Cast SVGGraphicsElement Animatable where cast = believe_me


export %inline
Cast SVGGraphicsElement ChildNode where cast = believe_me


export %inline
Cast SVGGraphicsElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGGraphicsElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGGraphicsElement GeometryUtils where cast = believe_me


export %inline
Cast SVGGraphicsElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGGraphicsElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGGraphicsElement InnerHTML where cast = believe_me


export %inline
Cast SVGGraphicsElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGGraphicsElement ParentNode where cast = believe_me


export %inline
Cast SVGGraphicsElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGGraphicsElement SVGTests where cast = believe_me


export %inline
Cast SVGGraphicsElement Slottable where cast = believe_me


export %inline
Cast SVGImageElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGImageElement SVGElement where cast = believe_me


export %inline
Cast SVGImageElement Element where cast = believe_me


export %inline
Cast SVGImageElement Node where cast = believe_me


export %inline
Cast SVGImageElement EventTarget where cast = believe_me


export %inline
Cast SVGImageElement Object where cast = believe_me


export %inline
Cast SVGImageElement Animatable where cast = believe_me


export %inline
Cast SVGImageElement ChildNode where cast = believe_me


export %inline
Cast SVGImageElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGImageElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGImageElement GeometryUtils where cast = believe_me


export %inline
Cast SVGImageElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGImageElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGImageElement InnerHTML where cast = believe_me


export %inline
Cast SVGImageElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGImageElement ParentNode where cast = believe_me


export %inline
Cast SVGImageElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGImageElement SVGTests where cast = believe_me


export %inline
Cast SVGImageElement SVGURIReference where cast = believe_me


export %inline
Cast SVGImageElement Slottable where cast = believe_me


export %inline
Cast SVGLength Object where cast = believe_me


export %inline
Cast SVGLengthList Object where cast = believe_me


export %inline
Cast SVGLineElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGLineElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGLineElement SVGElement where cast = believe_me


export %inline
Cast SVGLineElement Element where cast = believe_me


export %inline
Cast SVGLineElement Node where cast = believe_me


export %inline
Cast SVGLineElement EventTarget where cast = believe_me


export %inline
Cast SVGLineElement Object where cast = believe_me


export %inline
Cast SVGLineElement Animatable where cast = believe_me


export %inline
Cast SVGLineElement ChildNode where cast = believe_me


export %inline
Cast SVGLineElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGLineElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGLineElement GeometryUtils where cast = believe_me


export %inline
Cast SVGLineElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGLineElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGLineElement InnerHTML where cast = believe_me


export %inline
Cast SVGLineElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGLineElement ParentNode where cast = believe_me


export %inline
Cast SVGLineElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGLineElement SVGTests where cast = believe_me


export %inline
Cast SVGLineElement Slottable where cast = believe_me


export %inline
Cast SVGLinearGradientElement SVGGradientElement where cast = believe_me


export %inline
Cast SVGLinearGradientElement SVGElement where cast = believe_me


export %inline
Cast SVGLinearGradientElement Element where cast = believe_me


export %inline
Cast SVGLinearGradientElement Node where cast = believe_me


export %inline
Cast SVGLinearGradientElement EventTarget where cast = believe_me


export %inline
Cast SVGLinearGradientElement Object where cast = believe_me


export %inline
Cast SVGLinearGradientElement Animatable where cast = believe_me


export %inline
Cast SVGLinearGradientElement ChildNode where cast = believe_me


export %inline
Cast SVGLinearGradientElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGLinearGradientElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGLinearGradientElement GeometryUtils where cast = believe_me


export %inline
Cast SVGLinearGradientElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGLinearGradientElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGLinearGradientElement InnerHTML where cast = believe_me


export %inline
Cast SVGLinearGradientElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGLinearGradientElement ParentNode where cast = believe_me


export %inline
Cast SVGLinearGradientElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGLinearGradientElement SVGURIReference where cast = believe_me


export %inline
Cast SVGLinearGradientElement Slottable where cast = believe_me


export %inline
Cast SVGMarkerElement SVGElement where cast = believe_me


export %inline
Cast SVGMarkerElement Element where cast = believe_me


export %inline
Cast SVGMarkerElement Node where cast = believe_me


export %inline
Cast SVGMarkerElement EventTarget where cast = believe_me


export %inline
Cast SVGMarkerElement Object where cast = believe_me


export %inline
Cast SVGMarkerElement Animatable where cast = believe_me


export %inline
Cast SVGMarkerElement ChildNode where cast = believe_me


export %inline
Cast SVGMarkerElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGMarkerElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGMarkerElement GeometryUtils where cast = believe_me


export %inline
Cast SVGMarkerElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGMarkerElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGMarkerElement InnerHTML where cast = believe_me


export %inline
Cast SVGMarkerElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGMarkerElement ParentNode where cast = believe_me


export %inline
Cast SVGMarkerElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGMarkerElement SVGFitToViewBox where cast = believe_me


export %inline
Cast SVGMarkerElement Slottable where cast = believe_me


export %inline
Cast SVGMetadataElement SVGElement where cast = believe_me


export %inline
Cast SVGMetadataElement Element where cast = believe_me


export %inline
Cast SVGMetadataElement Node where cast = believe_me


export %inline
Cast SVGMetadataElement EventTarget where cast = believe_me


export %inline
Cast SVGMetadataElement Object where cast = believe_me


export %inline
Cast SVGMetadataElement Animatable where cast = believe_me


export %inline
Cast SVGMetadataElement ChildNode where cast = believe_me


export %inline
Cast SVGMetadataElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGMetadataElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGMetadataElement GeometryUtils where cast = believe_me


export %inline
Cast SVGMetadataElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGMetadataElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGMetadataElement InnerHTML where cast = believe_me


export %inline
Cast SVGMetadataElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGMetadataElement ParentNode where cast = believe_me


export %inline
Cast SVGMetadataElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGMetadataElement Slottable where cast = believe_me


export %inline
Cast SVGNumber Object where cast = believe_me


export %inline
Cast SVGNumberList Object where cast = believe_me


export %inline
Cast SVGPathElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGPathElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGPathElement SVGElement where cast = believe_me


export %inline
Cast SVGPathElement Element where cast = believe_me


export %inline
Cast SVGPathElement Node where cast = believe_me


export %inline
Cast SVGPathElement EventTarget where cast = believe_me


export %inline
Cast SVGPathElement Object where cast = believe_me


export %inline
Cast SVGPathElement Animatable where cast = believe_me


export %inline
Cast SVGPathElement ChildNode where cast = believe_me


export %inline
Cast SVGPathElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGPathElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGPathElement GeometryUtils where cast = believe_me


export %inline
Cast SVGPathElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGPathElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGPathElement InnerHTML where cast = believe_me


export %inline
Cast SVGPathElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGPathElement ParentNode where cast = believe_me


export %inline
Cast SVGPathElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGPathElement SVGTests where cast = believe_me


export %inline
Cast SVGPathElement Slottable where cast = believe_me


export %inline
Cast SVGPatternElement SVGElement where cast = believe_me


export %inline
Cast SVGPatternElement Element where cast = believe_me


export %inline
Cast SVGPatternElement Node where cast = believe_me


export %inline
Cast SVGPatternElement EventTarget where cast = believe_me


export %inline
Cast SVGPatternElement Object where cast = believe_me


export %inline
Cast SVGPatternElement Animatable where cast = believe_me


export %inline
Cast SVGPatternElement ChildNode where cast = believe_me


export %inline
Cast SVGPatternElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGPatternElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGPatternElement GeometryUtils where cast = believe_me


export %inline
Cast SVGPatternElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGPatternElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGPatternElement InnerHTML where cast = believe_me


export %inline
Cast SVGPatternElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGPatternElement ParentNode where cast = believe_me


export %inline
Cast SVGPatternElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGPatternElement SVGFitToViewBox where cast = believe_me


export %inline
Cast SVGPatternElement SVGURIReference where cast = believe_me


export %inline
Cast SVGPatternElement Slottable where cast = believe_me


export %inline
Cast SVGPointList Object where cast = believe_me


export %inline
Cast SVGPolygonElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGPolygonElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGPolygonElement SVGElement where cast = believe_me


export %inline
Cast SVGPolygonElement Element where cast = believe_me


export %inline
Cast SVGPolygonElement Node where cast = believe_me


export %inline
Cast SVGPolygonElement EventTarget where cast = believe_me


export %inline
Cast SVGPolygonElement Object where cast = believe_me


export %inline
Cast SVGPolygonElement Animatable where cast = believe_me


export %inline
Cast SVGPolygonElement ChildNode where cast = believe_me


export %inline
Cast SVGPolygonElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGPolygonElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGPolygonElement GeometryUtils where cast = believe_me


export %inline
Cast SVGPolygonElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGPolygonElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGPolygonElement InnerHTML where cast = believe_me


export %inline
Cast SVGPolygonElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGPolygonElement ParentNode where cast = believe_me


export %inline
Cast SVGPolygonElement SVGAnimatedPoints where cast = believe_me


export %inline
Cast SVGPolygonElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGPolygonElement SVGTests where cast = believe_me


export %inline
Cast SVGPolygonElement Slottable where cast = believe_me


export %inline
Cast SVGPolylineElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGPolylineElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGPolylineElement SVGElement where cast = believe_me


export %inline
Cast SVGPolylineElement Element where cast = believe_me


export %inline
Cast SVGPolylineElement Node where cast = believe_me


export %inline
Cast SVGPolylineElement EventTarget where cast = believe_me


export %inline
Cast SVGPolylineElement Object where cast = believe_me


export %inline
Cast SVGPolylineElement Animatable where cast = believe_me


export %inline
Cast SVGPolylineElement ChildNode where cast = believe_me


export %inline
Cast SVGPolylineElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGPolylineElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGPolylineElement GeometryUtils where cast = believe_me


export %inline
Cast SVGPolylineElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGPolylineElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGPolylineElement InnerHTML where cast = believe_me


export %inline
Cast SVGPolylineElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGPolylineElement ParentNode where cast = believe_me


export %inline
Cast SVGPolylineElement SVGAnimatedPoints where cast = believe_me


export %inline
Cast SVGPolylineElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGPolylineElement SVGTests where cast = believe_me


export %inline
Cast SVGPolylineElement Slottable where cast = believe_me


export %inline
Cast SVGPreserveAspectRatio Object where cast = believe_me


export %inline
Cast SVGRadialGradientElement SVGGradientElement where cast = believe_me


export %inline
Cast SVGRadialGradientElement SVGElement where cast = believe_me


export %inline
Cast SVGRadialGradientElement Element where cast = believe_me


export %inline
Cast SVGRadialGradientElement Node where cast = believe_me


export %inline
Cast SVGRadialGradientElement EventTarget where cast = believe_me


export %inline
Cast SVGRadialGradientElement Object where cast = believe_me


export %inline
Cast SVGRadialGradientElement Animatable where cast = believe_me


export %inline
Cast SVGRadialGradientElement ChildNode where cast = believe_me


export %inline
Cast SVGRadialGradientElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGRadialGradientElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGRadialGradientElement GeometryUtils where cast = believe_me


export %inline
Cast SVGRadialGradientElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGRadialGradientElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGRadialGradientElement InnerHTML where cast = believe_me


export %inline
Cast SVGRadialGradientElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGRadialGradientElement ParentNode where cast = believe_me


export %inline
Cast SVGRadialGradientElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGRadialGradientElement SVGURIReference where cast = believe_me


export %inline
Cast SVGRadialGradientElement Slottable where cast = believe_me


export %inline
Cast SVGRectElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGRectElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGRectElement SVGElement where cast = believe_me


export %inline
Cast SVGRectElement Element where cast = believe_me


export %inline
Cast SVGRectElement Node where cast = believe_me


export %inline
Cast SVGRectElement EventTarget where cast = believe_me


export %inline
Cast SVGRectElement Object where cast = believe_me


export %inline
Cast SVGRectElement Animatable where cast = believe_me


export %inline
Cast SVGRectElement ChildNode where cast = believe_me


export %inline
Cast SVGRectElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGRectElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGRectElement GeometryUtils where cast = believe_me


export %inline
Cast SVGRectElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGRectElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGRectElement InnerHTML where cast = believe_me


export %inline
Cast SVGRectElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGRectElement ParentNode where cast = believe_me


export %inline
Cast SVGRectElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGRectElement SVGTests where cast = believe_me


export %inline
Cast SVGRectElement Slottable where cast = believe_me


export %inline
Cast SVGSVGElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGSVGElement SVGElement where cast = believe_me


export %inline
Cast SVGSVGElement Element where cast = believe_me


export %inline
Cast SVGSVGElement Node where cast = believe_me


export %inline
Cast SVGSVGElement EventTarget where cast = believe_me


export %inline
Cast SVGSVGElement Object where cast = believe_me


export %inline
Cast SVGSVGElement Animatable where cast = believe_me


export %inline
Cast SVGSVGElement ChildNode where cast = believe_me


export %inline
Cast SVGSVGElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGSVGElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGSVGElement GeometryUtils where cast = believe_me


export %inline
Cast SVGSVGElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGSVGElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGSVGElement InnerHTML where cast = believe_me


export %inline
Cast SVGSVGElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGSVGElement ParentNode where cast = believe_me


export %inline
Cast SVGSVGElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGSVGElement SVGFitToViewBox where cast = believe_me


export %inline
Cast SVGSVGElement SVGTests where cast = believe_me


export %inline
Cast SVGSVGElement Slottable where cast = believe_me


export %inline
Cast SVGSVGElement WindowEventHandlers where cast = believe_me


export %inline
Cast SVGScriptElement SVGElement where cast = believe_me


export %inline
Cast SVGScriptElement Element where cast = believe_me


export %inline
Cast SVGScriptElement Node where cast = believe_me


export %inline
Cast SVGScriptElement EventTarget where cast = believe_me


export %inline
Cast SVGScriptElement Object where cast = believe_me


export %inline
Cast SVGScriptElement Animatable where cast = believe_me


export %inline
Cast SVGScriptElement ChildNode where cast = believe_me


export %inline
Cast SVGScriptElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGScriptElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGScriptElement GeometryUtils where cast = believe_me


export %inline
Cast SVGScriptElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGScriptElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGScriptElement InnerHTML where cast = believe_me


export %inline
Cast SVGScriptElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGScriptElement ParentNode where cast = believe_me


export %inline
Cast SVGScriptElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGScriptElement SVGURIReference where cast = believe_me


export %inline
Cast SVGScriptElement Slottable where cast = believe_me


export %inline
Cast SVGStopElement SVGElement where cast = believe_me


export %inline
Cast SVGStopElement Element where cast = believe_me


export %inline
Cast SVGStopElement Node where cast = believe_me


export %inline
Cast SVGStopElement EventTarget where cast = believe_me


export %inline
Cast SVGStopElement Object where cast = believe_me


export %inline
Cast SVGStopElement Animatable where cast = believe_me


export %inline
Cast SVGStopElement ChildNode where cast = believe_me


export %inline
Cast SVGStopElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGStopElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGStopElement GeometryUtils where cast = believe_me


export %inline
Cast SVGStopElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGStopElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGStopElement InnerHTML where cast = believe_me


export %inline
Cast SVGStopElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGStopElement ParentNode where cast = believe_me


export %inline
Cast SVGStopElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGStopElement Slottable where cast = believe_me


export %inline
Cast SVGStringList Object where cast = believe_me


export %inline
Cast SVGStyleElement SVGElement where cast = believe_me


export %inline
Cast SVGStyleElement Element where cast = believe_me


export %inline
Cast SVGStyleElement Node where cast = believe_me


export %inline
Cast SVGStyleElement EventTarget where cast = believe_me


export %inline
Cast SVGStyleElement Object where cast = believe_me


export %inline
Cast SVGStyleElement Animatable where cast = believe_me


export %inline
Cast SVGStyleElement ChildNode where cast = believe_me


export %inline
Cast SVGStyleElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGStyleElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGStyleElement GeometryUtils where cast = believe_me


export %inline
Cast SVGStyleElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGStyleElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGStyleElement InnerHTML where cast = believe_me


export %inline
Cast SVGStyleElement LinkStyle where cast = believe_me


export %inline
Cast SVGStyleElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGStyleElement ParentNode where cast = believe_me


export %inline
Cast SVGStyleElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGStyleElement Slottable where cast = believe_me


export %inline
Cast SVGSwitchElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGSwitchElement SVGElement where cast = believe_me


export %inline
Cast SVGSwitchElement Element where cast = believe_me


export %inline
Cast SVGSwitchElement Node where cast = believe_me


export %inline
Cast SVGSwitchElement EventTarget where cast = believe_me


export %inline
Cast SVGSwitchElement Object where cast = believe_me


export %inline
Cast SVGSwitchElement Animatable where cast = believe_me


export %inline
Cast SVGSwitchElement ChildNode where cast = believe_me


export %inline
Cast SVGSwitchElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGSwitchElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGSwitchElement GeometryUtils where cast = believe_me


export %inline
Cast SVGSwitchElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGSwitchElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGSwitchElement InnerHTML where cast = believe_me


export %inline
Cast SVGSwitchElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGSwitchElement ParentNode where cast = believe_me


export %inline
Cast SVGSwitchElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGSwitchElement SVGTests where cast = believe_me


export %inline
Cast SVGSwitchElement Slottable where cast = believe_me


export %inline
Cast SVGSymbolElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGSymbolElement SVGElement where cast = believe_me


export %inline
Cast SVGSymbolElement Element where cast = believe_me


export %inline
Cast SVGSymbolElement Node where cast = believe_me


export %inline
Cast SVGSymbolElement EventTarget where cast = believe_me


export %inline
Cast SVGSymbolElement Object where cast = believe_me


export %inline
Cast SVGSymbolElement Animatable where cast = believe_me


export %inline
Cast SVGSymbolElement ChildNode where cast = believe_me


export %inline
Cast SVGSymbolElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGSymbolElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGSymbolElement GeometryUtils where cast = believe_me


export %inline
Cast SVGSymbolElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGSymbolElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGSymbolElement InnerHTML where cast = believe_me


export %inline
Cast SVGSymbolElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGSymbolElement ParentNode where cast = believe_me


export %inline
Cast SVGSymbolElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGSymbolElement SVGFitToViewBox where cast = believe_me


export %inline
Cast SVGSymbolElement SVGTests where cast = believe_me


export %inline
Cast SVGSymbolElement Slottable where cast = believe_me


export %inline
Cast SVGTSpanElement SVGTextPositioningElement where cast = believe_me


export %inline
Cast SVGTSpanElement SVGTextContentElement where cast = believe_me


export %inline
Cast SVGTSpanElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGTSpanElement SVGElement where cast = believe_me


export %inline
Cast SVGTSpanElement Element where cast = believe_me


export %inline
Cast SVGTSpanElement Node where cast = believe_me


export %inline
Cast SVGTSpanElement EventTarget where cast = believe_me


export %inline
Cast SVGTSpanElement Object where cast = believe_me


export %inline
Cast SVGTSpanElement Animatable where cast = believe_me


export %inline
Cast SVGTSpanElement ChildNode where cast = believe_me


export %inline
Cast SVGTSpanElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGTSpanElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGTSpanElement GeometryUtils where cast = believe_me


export %inline
Cast SVGTSpanElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGTSpanElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGTSpanElement InnerHTML where cast = believe_me


export %inline
Cast SVGTSpanElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGTSpanElement ParentNode where cast = believe_me


export %inline
Cast SVGTSpanElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGTSpanElement SVGTests where cast = believe_me


export %inline
Cast SVGTSpanElement Slottable where cast = believe_me


export %inline
Cast SVGTextContentElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGTextContentElement SVGElement where cast = believe_me


export %inline
Cast SVGTextContentElement Element where cast = believe_me


export %inline
Cast SVGTextContentElement Node where cast = believe_me


export %inline
Cast SVGTextContentElement EventTarget where cast = believe_me


export %inline
Cast SVGTextContentElement Object where cast = believe_me


export %inline
Cast SVGTextContentElement Animatable where cast = believe_me


export %inline
Cast SVGTextContentElement ChildNode where cast = believe_me


export %inline
Cast SVGTextContentElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGTextContentElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGTextContentElement GeometryUtils where cast = believe_me


export %inline
Cast SVGTextContentElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGTextContentElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGTextContentElement InnerHTML where cast = believe_me


export %inline
Cast SVGTextContentElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGTextContentElement ParentNode where cast = believe_me


export %inline
Cast SVGTextContentElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGTextContentElement SVGTests where cast = believe_me


export %inline
Cast SVGTextContentElement Slottable where cast = believe_me


export %inline
Cast SVGTextElement SVGTextPositioningElement where cast = believe_me


export %inline
Cast SVGTextElement SVGTextContentElement where cast = believe_me


export %inline
Cast SVGTextElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGTextElement SVGElement where cast = believe_me


export %inline
Cast SVGTextElement Element where cast = believe_me


export %inline
Cast SVGTextElement Node where cast = believe_me


export %inline
Cast SVGTextElement EventTarget where cast = believe_me


export %inline
Cast SVGTextElement Object where cast = believe_me


export %inline
Cast SVGTextElement Animatable where cast = believe_me


export %inline
Cast SVGTextElement ChildNode where cast = believe_me


export %inline
Cast SVGTextElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGTextElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGTextElement GeometryUtils where cast = believe_me


export %inline
Cast SVGTextElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGTextElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGTextElement InnerHTML where cast = believe_me


export %inline
Cast SVGTextElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGTextElement ParentNode where cast = believe_me


export %inline
Cast SVGTextElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGTextElement SVGTests where cast = believe_me


export %inline
Cast SVGTextElement Slottable where cast = believe_me


export %inline
Cast SVGTextPathElement SVGTextContentElement where cast = believe_me


export %inline
Cast SVGTextPathElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGTextPathElement SVGElement where cast = believe_me


export %inline
Cast SVGTextPathElement Element where cast = believe_me


export %inline
Cast SVGTextPathElement Node where cast = believe_me


export %inline
Cast SVGTextPathElement EventTarget where cast = believe_me


export %inline
Cast SVGTextPathElement Object where cast = believe_me


export %inline
Cast SVGTextPathElement Animatable where cast = believe_me


export %inline
Cast SVGTextPathElement ChildNode where cast = believe_me


export %inline
Cast SVGTextPathElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGTextPathElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGTextPathElement GeometryUtils where cast = believe_me


export %inline
Cast SVGTextPathElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGTextPathElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGTextPathElement InnerHTML where cast = believe_me


export %inline
Cast SVGTextPathElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGTextPathElement ParentNode where cast = believe_me


export %inline
Cast SVGTextPathElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGTextPathElement SVGTests where cast = believe_me


export %inline
Cast SVGTextPathElement SVGURIReference where cast = believe_me


export %inline
Cast SVGTextPathElement Slottable where cast = believe_me


export %inline
Cast SVGTextPositioningElement SVGTextContentElement where cast = believe_me


export %inline
Cast SVGTextPositioningElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGTextPositioningElement SVGElement where cast = believe_me


export %inline
Cast SVGTextPositioningElement Element where cast = believe_me


export %inline
Cast SVGTextPositioningElement Node where cast = believe_me


export %inline
Cast SVGTextPositioningElement EventTarget where cast = believe_me


export %inline
Cast SVGTextPositioningElement Object where cast = believe_me


export %inline
Cast SVGTextPositioningElement Animatable where cast = believe_me


export %inline
Cast SVGTextPositioningElement ChildNode where cast = believe_me


export %inline
Cast SVGTextPositioningElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGTextPositioningElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGTextPositioningElement GeometryUtils where cast = believe_me


export %inline
Cast SVGTextPositioningElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGTextPositioningElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGTextPositioningElement InnerHTML where cast = believe_me


export %inline
Cast SVGTextPositioningElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGTextPositioningElement ParentNode where cast = believe_me


export %inline
Cast SVGTextPositioningElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGTextPositioningElement SVGTests where cast = believe_me


export %inline
Cast SVGTextPositioningElement Slottable where cast = believe_me


export %inline
Cast SVGTitleElement SVGElement where cast = believe_me


export %inline
Cast SVGTitleElement Element where cast = believe_me


export %inline
Cast SVGTitleElement Node where cast = believe_me


export %inline
Cast SVGTitleElement EventTarget where cast = believe_me


export %inline
Cast SVGTitleElement Object where cast = believe_me


export %inline
Cast SVGTitleElement Animatable where cast = believe_me


export %inline
Cast SVGTitleElement ChildNode where cast = believe_me


export %inline
Cast SVGTitleElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGTitleElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGTitleElement GeometryUtils where cast = believe_me


export %inline
Cast SVGTitleElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGTitleElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGTitleElement InnerHTML where cast = believe_me


export %inline
Cast SVGTitleElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGTitleElement ParentNode where cast = believe_me


export %inline
Cast SVGTitleElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGTitleElement Slottable where cast = believe_me


export %inline
Cast SVGTransform Object where cast = believe_me


export %inline
Cast SVGTransformList Object where cast = believe_me


export %inline
Cast SVGUnitTypes Object where cast = believe_me


export %inline
Cast SVGUseElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGUseElement SVGElement where cast = believe_me


export %inline
Cast SVGUseElement Element where cast = believe_me


export %inline
Cast SVGUseElement Node where cast = believe_me


export %inline
Cast SVGUseElement EventTarget where cast = believe_me


export %inline
Cast SVGUseElement Object where cast = believe_me


export %inline
Cast SVGUseElement Animatable where cast = believe_me


export %inline
Cast SVGUseElement ChildNode where cast = believe_me


export %inline
Cast SVGUseElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGUseElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGUseElement GeometryUtils where cast = believe_me


export %inline
Cast SVGUseElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGUseElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGUseElement InnerHTML where cast = believe_me


export %inline
Cast SVGUseElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGUseElement ParentNode where cast = believe_me


export %inline
Cast SVGUseElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGUseElement SVGTests where cast = believe_me


export %inline
Cast SVGUseElement SVGURIReference where cast = believe_me


export %inline
Cast SVGUseElement Slottable where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot ShadowRoot where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot DocumentFragment where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot Node where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot EventTarget where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot Object where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot DocumentOrShadowRoot where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot InnerHTML where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot NonElementParentNode where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot ParentNode where cast = believe_me


export %inline
Cast SVGViewElement SVGElement where cast = believe_me


export %inline
Cast SVGViewElement Element where cast = believe_me


export %inline
Cast SVGViewElement Node where cast = believe_me


export %inline
Cast SVGViewElement EventTarget where cast = believe_me


export %inline
Cast SVGViewElement Object where cast = believe_me


export %inline
Cast SVGViewElement Animatable where cast = believe_me


export %inline
Cast SVGViewElement ChildNode where cast = believe_me


export %inline
Cast SVGViewElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGViewElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGViewElement GeometryUtils where cast = believe_me


export %inline
Cast SVGViewElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGViewElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGViewElement InnerHTML where cast = believe_me


export %inline
Cast SVGViewElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGViewElement ParentNode where cast = believe_me


export %inline
Cast SVGViewElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGViewElement SVGFitToViewBox where cast = believe_me


export %inline
Cast SVGViewElement Slottable where cast = believe_me


export %inline
Cast Screen Object where cast = believe_me


export %inline
Cast ServiceWorker EventTarget where cast = believe_me


export %inline
Cast ServiceWorker Object where cast = believe_me


export %inline
Cast ServiceWorker AbstractWorker where cast = believe_me


export %inline
Cast ServiceWorkerContainer EventTarget where cast = believe_me


export %inline
Cast ServiceWorkerContainer Object where cast = believe_me


export %inline
Cast ServiceWorkerGlobalScope WorkerGlobalScope where cast = believe_me


export %inline
Cast ServiceWorkerGlobalScope EventTarget where cast = believe_me


export %inline
Cast ServiceWorkerGlobalScope Object where cast = believe_me


export %inline
Cast ServiceWorkerGlobalScope WindowOrWorkerGlobalScope where cast = believe_me


export %inline
Cast ServiceWorkerRegistration EventTarget where cast = believe_me


export %inline
Cast ServiceWorkerRegistration Object where cast = believe_me


export %inline
Cast ShadowAnimation Animation where cast = believe_me


export %inline
Cast ShadowAnimation EventTarget where cast = believe_me


export %inline
Cast ShadowAnimation Object where cast = believe_me


export %inline
Cast ShadowRoot DocumentFragment where cast = believe_me


export %inline
Cast ShadowRoot Node where cast = believe_me


export %inline
Cast ShadowRoot EventTarget where cast = believe_me


export %inline
Cast ShadowRoot Object where cast = believe_me


export %inline
Cast ShadowRoot DocumentOrShadowRoot where cast = believe_me


export %inline
Cast ShadowRoot InnerHTML where cast = believe_me


export %inline
Cast ShadowRoot NonElementParentNode where cast = believe_me


export %inline
Cast ShadowRoot ParentNode where cast = believe_me


export %inline
Cast SharedWorker EventTarget where cast = believe_me


export %inline
Cast SharedWorker Object where cast = believe_me


export %inline
Cast SharedWorker AbstractWorker where cast = believe_me


export %inline
Cast SharedWorkerGlobalScope WorkerGlobalScope where cast = believe_me


export %inline
Cast SharedWorkerGlobalScope EventTarget where cast = believe_me


export %inline
Cast SharedWorkerGlobalScope Object where cast = believe_me


export %inline
Cast SharedWorkerGlobalScope WindowOrWorkerGlobalScope where cast = believe_me


export %inline
Cast SourceBuffer EventTarget where cast = believe_me


export %inline
Cast SourceBuffer Object where cast = believe_me


export %inline
Cast SourceBufferList EventTarget where cast = believe_me


export %inline
Cast SourceBufferList Object where cast = believe_me


export %inline
Cast StaticRange AbstractRange where cast = believe_me


export %inline
Cast StaticRange Object where cast = believe_me


export %inline
Cast Storage Object where cast = believe_me


export %inline
Cast StorageEvent Event where cast = believe_me


export %inline
Cast StorageEvent Object where cast = believe_me


export %inline
Cast StyleSheet Object where cast = believe_me


export %inline
Cast StyleSheetList Object where cast = believe_me


export %inline
Cast SubmitEvent Event where cast = believe_me


export %inline
Cast SubmitEvent Object where cast = believe_me


export %inline
Cast Text CharacterData where cast = believe_me


export %inline
Cast Text Node where cast = believe_me


export %inline
Cast Text EventTarget where cast = believe_me


export %inline
Cast Text Object where cast = believe_me


export %inline
Cast Text ChildNode where cast = believe_me


export %inline
Cast Text GeometryUtils where cast = believe_me


export %inline
Cast Text NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast Text Slottable where cast = believe_me


export %inline
Cast TextMetrics Object where cast = believe_me


export %inline
Cast TextTrack EventTarget where cast = believe_me


export %inline
Cast TextTrack Object where cast = believe_me


export %inline
Cast TextTrackCue EventTarget where cast = believe_me


export %inline
Cast TextTrackCue Object where cast = believe_me


export %inline
Cast TextTrackCueList Object where cast = believe_me


export %inline
Cast TextTrackList EventTarget where cast = believe_me


export %inline
Cast TextTrackList Object where cast = believe_me


export %inline
Cast TimeRanges Object where cast = believe_me


export %inline
Cast TrackEvent Event where cast = believe_me


export %inline
Cast TrackEvent Object where cast = believe_me


export %inline
Cast TransformStream Object where cast = believe_me


export %inline
Cast TransformStreamDefaultController Object where cast = believe_me


export %inline
Cast TreeWalker Object where cast = believe_me


export %inline
Cast UIEvent Event where cast = believe_me


export %inline
Cast UIEvent Object where cast = believe_me


export %inline
Cast URL Object where cast = believe_me


export %inline
Cast URLSearchParams Object where cast = believe_me


export %inline
Cast ValidityState Object where cast = believe_me


export %inline
Cast VideoTrack Object where cast = believe_me


export %inline
Cast VideoTrackList EventTarget where cast = believe_me


export %inline
Cast VideoTrackList Object where cast = believe_me


export %inline
Cast VisualViewport EventTarget where cast = believe_me


export %inline
Cast VisualViewport Object where cast = believe_me


export %inline
Cast WebGL2RenderingContext Object where cast = believe_me


export %inline
Cast WebGL2RenderingContext WebGL2RenderingContextBase where cast = believe_me


export %inline
Cast WebGL2RenderingContext WebGL2RenderingContextOverloads where cast = believe_me


export %inline
Cast WebGL2RenderingContext WebGLRenderingContextBase where cast = believe_me


export %inline
Cast WebGLActiveInfo Object where cast = believe_me


export %inline
Cast WebGLBuffer WebGLObject where cast = believe_me


export %inline
Cast WebGLBuffer Object where cast = believe_me


export %inline
Cast WebGLFramebuffer WebGLObject where cast = believe_me


export %inline
Cast WebGLFramebuffer Object where cast = believe_me


export %inline
Cast WebGLObject Object where cast = believe_me


export %inline
Cast WebGLProgram WebGLObject where cast = believe_me


export %inline
Cast WebGLProgram Object where cast = believe_me


export %inline
Cast WebGLQuery WebGLObject where cast = believe_me


export %inline
Cast WebGLQuery Object where cast = believe_me


export %inline
Cast WebGLRenderbuffer WebGLObject where cast = believe_me


export %inline
Cast WebGLRenderbuffer Object where cast = believe_me


export %inline
Cast WebGLRenderingContext Object where cast = believe_me


export %inline
Cast WebGLRenderingContext WebGLRenderingContextBase where cast = believe_me


export %inline
Cast WebGLRenderingContext WebGLRenderingContextOverloads where cast = believe_me


export %inline
Cast WebGLSampler WebGLObject where cast = believe_me


export %inline
Cast WebGLSampler Object where cast = believe_me


export %inline
Cast WebGLShader WebGLObject where cast = believe_me


export %inline
Cast WebGLShader Object where cast = believe_me


export %inline
Cast WebGLShaderPrecisionFormat Object where cast = believe_me


export %inline
Cast WebGLSync WebGLObject where cast = believe_me


export %inline
Cast WebGLSync Object where cast = believe_me


export %inline
Cast WebGLTexture WebGLObject where cast = believe_me


export %inline
Cast WebGLTexture Object where cast = believe_me


export %inline
Cast WebGLTransformFeedback WebGLObject where cast = believe_me


export %inline
Cast WebGLTransformFeedback Object where cast = believe_me


export %inline
Cast WebGLUniformLocation Object where cast = believe_me


export %inline
Cast WebGLVertexArrayObject WebGLObject where cast = believe_me


export %inline
Cast WebGLVertexArrayObject Object where cast = believe_me


export %inline
Cast WebSocket EventTarget where cast = believe_me


export %inline
Cast WebSocket Object where cast = believe_me


export %inline
Cast WheelEvent MouseEvent where cast = believe_me


export %inline
Cast WheelEvent UIEvent where cast = believe_me


export %inline
Cast WheelEvent Event where cast = believe_me


export %inline
Cast WheelEvent Object where cast = believe_me


export %inline
Cast Window EventTarget where cast = believe_me


export %inline
Cast Window Object where cast = believe_me


export %inline
Cast Window GlobalEventHandlers where cast = believe_me


export %inline
Cast Window WindowEventHandlers where cast = believe_me


export %inline
Cast Window WindowLocalStorage where cast = believe_me


export %inline
Cast Window WindowOrWorkerGlobalScope where cast = believe_me


export %inline
Cast WindowClient Client where cast = believe_me


export %inline
Cast WindowClient Object where cast = believe_me


export %inline
Cast Worker EventTarget where cast = believe_me


export %inline
Cast Worker Object where cast = believe_me


export %inline
Cast Worker AbstractWorker where cast = believe_me


export %inline
Cast WorkerGlobalScope EventTarget where cast = believe_me


export %inline
Cast WorkerGlobalScope Object where cast = believe_me


export %inline
Cast WorkerGlobalScope WindowOrWorkerGlobalScope where cast = believe_me


export %inline
Cast WorkerLocation Object where cast = believe_me


export %inline
Cast WorkerNavigator Object where cast = believe_me


export %inline
Cast WorkerNavigator NavigatorConcurrentHardware where cast = believe_me


export %inline
Cast WorkerNavigator NavigatorID where cast = believe_me


export %inline
Cast WorkerNavigator NavigatorLanguage where cast = believe_me


export %inline
Cast WorkerNavigator NavigatorOnLine where cast = believe_me


export %inline
Cast Worklet Object where cast = believe_me


export %inline
Cast WorkletGlobalScope Object where cast = believe_me


export %inline
Cast WritableStream Object where cast = believe_me


export %inline
Cast WritableStreamDefaultController Object where cast = believe_me


export %inline
Cast WritableStreamDefaultWriter Object where cast = believe_me


export %inline
Cast XMLDocument Document where cast = believe_me


export %inline
Cast XMLDocument Node where cast = believe_me


export %inline
Cast XMLDocument EventTarget where cast = believe_me


export %inline
Cast XMLDocument Object where cast = believe_me


export %inline
Cast XMLDocument DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast XMLDocument DocumentOrShadowRoot where cast = believe_me


export %inline
Cast XMLDocument GeometryUtils where cast = believe_me


export %inline
Cast XMLDocument GlobalEventHandlers where cast = believe_me


export %inline
Cast XMLDocument NonElementParentNode where cast = believe_me


export %inline
Cast XMLDocument ParentNode where cast = believe_me


export %inline
Cast XMLDocument XPathEvaluatorBase where cast = believe_me


export %inline
Cast XMLHttpRequest XMLHttpRequestEventTarget where cast = believe_me


export %inline
Cast XMLHttpRequest EventTarget where cast = believe_me


export %inline
Cast XMLHttpRequest Object where cast = believe_me


export %inline
Cast XMLHttpRequestEventTarget EventTarget where cast = believe_me


export %inline
Cast XMLHttpRequestEventTarget Object where cast = believe_me


export %inline
Cast XMLHttpRequestUpload XMLHttpRequestEventTarget where cast = believe_me


export %inline
Cast XMLHttpRequestUpload EventTarget where cast = believe_me


export %inline
Cast XMLHttpRequestUpload Object where cast = believe_me


export %inline
Cast XMLSerializer Object where cast = believe_me


export %inline
Cast XPathEvaluator Object where cast = believe_me


export %inline
Cast XPathEvaluator XPathEvaluatorBase where cast = believe_me


export %inline
Cast XPathExpression Object where cast = believe_me


export %inline
Cast XPathResult Object where cast = believe_me


export %inline
Cast AddEventListenerOptions EventListenerOptions where cast = believe_me


export %inline
Cast AddEventListenerOptions Object where cast = believe_me


export %inline
Cast AnimationPlaybackEventInit EventInit where cast = believe_me


export %inline
Cast AnimationPlaybackEventInit Object where cast = believe_me


export %inline
Cast AssignedNodesOptions Object where cast = believe_me


export %inline
Cast BaseComputedKeyframe Object where cast = believe_me


export %inline
Cast BaseKeyframe Object where cast = believe_me


export %inline
Cast BasePropertyIndexedKeyframe Object where cast = believe_me


export %inline
Cast BlobPropertyBag Object where cast = believe_me


export %inline
Cast BoxQuadOptions Object where cast = believe_me


export %inline
Cast CacheQueryOptions Object where cast = believe_me


export %inline
Cast CameraDevicePermissionDescriptor DevicePermissionDescriptor where cast = believe_me


export %inline
Cast CameraDevicePermissionDescriptor PermissionDescriptor where cast = believe_me


export %inline
Cast CameraDevicePermissionDescriptor Object where cast = believe_me


export %inline
Cast CanvasRenderingContext2DSettings Object where cast = believe_me


export %inline
Cast Capabilities Object where cast = believe_me


export %inline
Cast CheckVisibilityOptions Object where cast = believe_me


export %inline
Cast ClientQueryOptions Object where cast = believe_me


export %inline
Cast ClipboardEventInit EventInit where cast = believe_me


export %inline
Cast ClipboardEventInit Object where cast = believe_me


export %inline
Cast ClipboardItemOptions Object where cast = believe_me


export %inline
Cast ClipboardPermissionDescriptor PermissionDescriptor where cast = believe_me


export %inline
Cast ClipboardPermissionDescriptor Object where cast = believe_me


export %inline
Cast CloseEventInit EventInit where cast = believe_me


export %inline
Cast CloseEventInit Object where cast = believe_me


export %inline
Cast CompositionEventInit UIEventInit where cast = believe_me


export %inline
Cast CompositionEventInit EventInit where cast = believe_me


export %inline
Cast CompositionEventInit Object where cast = believe_me


export %inline
Cast ComputedEffectTiming EffectTiming where cast = believe_me


export %inline
Cast ComputedEffectTiming Object where cast = believe_me


export %inline
Cast ConstrainBooleanParameters Object where cast = believe_me


export %inline
Cast ConstrainDOMStringParameters Object where cast = believe_me


export %inline
Cast ConstrainDoubleRange DoubleRange where cast = believe_me


export %inline
Cast ConstrainDoubleRange Object where cast = believe_me


export %inline
Cast ConstrainULongRange ULongRange where cast = believe_me


export %inline
Cast ConstrainULongRange Object where cast = believe_me


export %inline
Cast ConstraintSet Object where cast = believe_me


export %inline
Cast Constraints ConstraintSet where cast = believe_me


export %inline
Cast Constraints Object where cast = believe_me


export %inline
Cast ConvertCoordinateOptions Object where cast = believe_me


export %inline
Cast CustomEventInit EventInit where cast = believe_me


export %inline
Cast CustomEventInit Object where cast = believe_me


export %inline
Cast DOMMatrix2DInit Object where cast = believe_me


export %inline
Cast DOMMatrixInit DOMMatrix2DInit where cast = believe_me


export %inline
Cast DOMMatrixInit Object where cast = believe_me


export %inline
Cast DOMPointInit Object where cast = believe_me


export %inline
Cast DOMQuadInit Object where cast = believe_me


export %inline
Cast DOMRectInit Object where cast = believe_me


export %inline
Cast DevicePermissionDescriptor PermissionDescriptor where cast = believe_me


export %inline
Cast DevicePermissionDescriptor Object where cast = believe_me


export %inline
Cast DocumentTimelineOptions Object where cast = believe_me


export %inline
Cast DoubleRange Object where cast = believe_me


export %inline
Cast DragEventInit MouseEventInit where cast = believe_me


export %inline
Cast DragEventInit EventModifierInit where cast = believe_me


export %inline
Cast DragEventInit UIEventInit where cast = believe_me


export %inline
Cast DragEventInit EventInit where cast = believe_me


export %inline
Cast DragEventInit Object where cast = believe_me


export %inline
Cast EffectTiming Object where cast = believe_me


export %inline
Cast ElementCreationOptions Object where cast = believe_me


export %inline
Cast ElementDefinitionOptions Object where cast = believe_me


export %inline
Cast ErrorEventInit EventInit where cast = believe_me


export %inline
Cast ErrorEventInit Object where cast = believe_me


export %inline
Cast EventInit Object where cast = believe_me


export %inline
Cast EventListenerOptions Object where cast = believe_me


export %inline
Cast EventModifierInit UIEventInit where cast = believe_me


export %inline
Cast EventModifierInit EventInit where cast = believe_me


export %inline
Cast EventModifierInit Object where cast = believe_me


export %inline
Cast EventSourceInit Object where cast = believe_me


export %inline
Cast ExtendableEventInit EventInit where cast = believe_me


export %inline
Cast ExtendableEventInit Object where cast = believe_me


export %inline
Cast ExtendableMessageEventInit ExtendableEventInit where cast = believe_me


export %inline
Cast ExtendableMessageEventInit EventInit where cast = believe_me


export %inline
Cast ExtendableMessageEventInit Object where cast = believe_me


export %inline
Cast FetchEventInit ExtendableEventInit where cast = believe_me


export %inline
Cast FetchEventInit EventInit where cast = believe_me


export %inline
Cast FetchEventInit Object where cast = believe_me


export %inline
Cast FilePropertyBag BlobPropertyBag where cast = believe_me


export %inline
Cast FilePropertyBag Object where cast = believe_me


export %inline
Cast FocusEventInit UIEventInit where cast = believe_me


export %inline
Cast FocusEventInit EventInit where cast = believe_me


export %inline
Cast FocusEventInit Object where cast = believe_me


export %inline
Cast FocusOptions Object where cast = believe_me


export %inline
Cast FormDataEventInit EventInit where cast = believe_me


export %inline
Cast FormDataEventInit Object where cast = believe_me


export %inline
Cast GetRootNodeOptions Object where cast = believe_me


export %inline
Cast HashChangeEventInit EventInit where cast = believe_me


export %inline
Cast HashChangeEventInit Object where cast = believe_me


export %inline
Cast IDBDatabaseInfo Object where cast = believe_me


export %inline
Cast IDBIndexParameters Object where cast = believe_me


export %inline
Cast IDBObjectStoreParameters Object where cast = believe_me


export %inline
Cast IDBTransactionOptions Object where cast = believe_me


export %inline
Cast IDBVersionChangeEventInit EventInit where cast = believe_me


export %inline
Cast IDBVersionChangeEventInit Object where cast = believe_me


export %inline
Cast ImageBitmapOptions Object where cast = believe_me


export %inline
Cast ImageBitmapRenderingContextSettings Object where cast = believe_me


export %inline
Cast ImageEncodeOptions Object where cast = believe_me


export %inline
Cast InputEventInit UIEventInit where cast = believe_me


export %inline
Cast InputEventInit EventInit where cast = believe_me


export %inline
Cast InputEventInit Object where cast = believe_me


export %inline
Cast KeyboardEventInit EventModifierInit where cast = believe_me


export %inline
Cast KeyboardEventInit UIEventInit where cast = believe_me


export %inline
Cast KeyboardEventInit EventInit where cast = believe_me


export %inline
Cast KeyboardEventInit Object where cast = believe_me


export %inline
Cast KeyframeAnimationOptions KeyframeEffectOptions where cast = believe_me


export %inline
Cast KeyframeAnimationOptions EffectTiming where cast = believe_me


export %inline
Cast KeyframeAnimationOptions Object where cast = believe_me


export %inline
Cast KeyframeEffectOptions EffectTiming where cast = believe_me


export %inline
Cast KeyframeEffectOptions Object where cast = believe_me


export %inline
Cast MediaQueryListEventInit EventInit where cast = believe_me


export %inline
Cast MediaQueryListEventInit Object where cast = believe_me


export %inline
Cast MediaStreamConstraints Object where cast = believe_me


export %inline
Cast MediaStreamTrackEventInit EventInit where cast = believe_me


export %inline
Cast MediaStreamTrackEventInit Object where cast = believe_me


export %inline
Cast MediaTrackCapabilities Object where cast = believe_me


export %inline
Cast MediaTrackConstraintSet Object where cast = believe_me


export %inline
Cast MediaTrackConstraints MediaTrackConstraintSet where cast = believe_me


export %inline
Cast MediaTrackConstraints Object where cast = believe_me


export %inline
Cast MediaTrackSettings Object where cast = believe_me


export %inline
Cast MediaTrackSupportedConstraints Object where cast = believe_me


export %inline
Cast MessageEventInit EventInit where cast = believe_me


export %inline
Cast MessageEventInit Object where cast = believe_me


export %inline
Cast MidiPermissionDescriptor PermissionDescriptor where cast = believe_me


export %inline
Cast MidiPermissionDescriptor Object where cast = believe_me


export %inline
Cast MouseEventInit EventModifierInit where cast = believe_me


export %inline
Cast MouseEventInit UIEventInit where cast = believe_me


export %inline
Cast MouseEventInit EventInit where cast = believe_me


export %inline
Cast MouseEventInit Object where cast = believe_me


export %inline
Cast MultiCacheQueryOptions CacheQueryOptions where cast = believe_me


export %inline
Cast MultiCacheQueryOptions Object where cast = believe_me


export %inline
Cast MutationObserverInit Object where cast = believe_me


export %inline
Cast NavigationPreloadState Object where cast = believe_me


export %inline
Cast OptionalEffectTiming Object where cast = believe_me


export %inline
Cast PageTransitionEventInit EventInit where cast = believe_me


export %inline
Cast PageTransitionEventInit Object where cast = believe_me


export %inline
Cast PermissionDescriptor Object where cast = believe_me


export %inline
Cast PermissionSetParameters Object where cast = believe_me


export %inline
Cast PopStateEventInit EventInit where cast = believe_me


export %inline
Cast PopStateEventInit Object where cast = believe_me


export %inline
Cast PostMessageOptions Object where cast = believe_me


export %inline
Cast ProgressEventInit EventInit where cast = believe_me


export %inline
Cast ProgressEventInit Object where cast = believe_me


export %inline
Cast PromiseRejectionEventInit EventInit where cast = believe_me


export %inline
Cast PromiseRejectionEventInit Object where cast = believe_me


export %inline
Cast PushPermissionDescriptor PermissionDescriptor where cast = believe_me


export %inline
Cast PushPermissionDescriptor Object where cast = believe_me


export %inline
Cast QueuingStrategy Object where cast = believe_me


export %inline
Cast QueuingStrategyInit Object where cast = believe_me


export %inline
Cast ReadableStreamBYOBReadResult Object where cast = believe_me


export %inline
Cast ReadableStreamDefaultReadResult Object where cast = believe_me


export %inline
Cast ReadableStreamGetReaderOptions Object where cast = believe_me


export %inline
Cast ReadableStreamIteratorOptions Object where cast = believe_me


export %inline
Cast ReadableWritablePair Object where cast = believe_me


export %inline
Cast RegistrationOptions Object where cast = believe_me


export %inline
Cast RequestInit Object where cast = believe_me


export %inline
Cast ResponseInit Object where cast = believe_me


export %inline
Cast SVGBoundingBoxOptions Object where cast = believe_me


export %inline
Cast ScrollIntoViewOptions ScrollOptions where cast = believe_me


export %inline
Cast ScrollIntoViewOptions Object where cast = believe_me


export %inline
Cast ScrollOptions Object where cast = believe_me


export %inline
Cast ScrollToOptions ScrollOptions where cast = believe_me


export %inline
Cast ScrollToOptions Object where cast = believe_me


export %inline
Cast Settings Object where cast = believe_me


export %inline
Cast ShadowRootInit Object where cast = believe_me


export %inline
Cast StaticRangeInit Object where cast = believe_me


export %inline
Cast StorageEventInit EventInit where cast = believe_me


export %inline
Cast StorageEventInit Object where cast = believe_me


export %inline
Cast StreamPipeOptions Object where cast = believe_me


export %inline
Cast StructuredSerializeOptions Object where cast = believe_me


export %inline
Cast SubmitEventInit EventInit where cast = believe_me


export %inline
Cast SubmitEventInit Object where cast = believe_me


export %inline
Cast TrackEventInit EventInit where cast = believe_me


export %inline
Cast TrackEventInit Object where cast = believe_me


export %inline
Cast Transformer Object where cast = believe_me


export %inline
Cast UIEventInit EventInit where cast = believe_me


export %inline
Cast UIEventInit Object where cast = believe_me


export %inline
Cast ULongRange Object where cast = believe_me


export %inline
Cast UnderlyingSink Object where cast = believe_me


export %inline
Cast UnderlyingSource Object where cast = believe_me


export %inline
Cast ValidityStateFlags Object where cast = believe_me


export %inline
Cast WebGLContextAttributes Object where cast = believe_me


export %inline
Cast WheelEventInit MouseEventInit where cast = believe_me


export %inline
Cast WheelEventInit EventModifierInit where cast = believe_me


export %inline
Cast WheelEventInit UIEventInit where cast = believe_me


export %inline
Cast WheelEventInit EventInit where cast = believe_me


export %inline
Cast WheelEventInit Object where cast = believe_me


export %inline
Cast WindowPostMessageOptions PostMessageOptions where cast = believe_me


export %inline
Cast WindowPostMessageOptions Object where cast = believe_me


export %inline
Cast WorkerOptions Object where cast = believe_me


export %inline
Cast WorkletOptions Object where cast = believe_me

