module JS.DOM.Raw.Html

import JS.DOM.Raw.Types

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