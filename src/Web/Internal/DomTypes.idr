module Web.Internal.DomTypes

import JS

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace ShadowRootMode

  public export
  data ShadowRootMode = Open | Closed

  public export
  Show ShadowRootMode where
    show Open = "open"
    show Closed = "closed"

  public export
  Eq ShadowRootMode where
    (==) = (==) `on` show

  public export
  Ord ShadowRootMode where
    compare = compare `on` show

  public export
  read : String -> Maybe ShadowRootMode
  read "open" = Just Open
  read "closed" = Just Closed
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (ShadowRootMode.read s)}
             -> ShadowRootMode
  fromString s = fromJust $ read s

  export
  ToFFI ShadowRootMode String where
    toFFI = show

  export
  FromFFI ShadowRootMode String where
    fromFFI = read

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data AbortController : Type where [external]

export
ToFFI AbortController AbortController where toFFI = id

export
FromFFI AbortController AbortController where fromFFI = Just

export
SafeCast AbortController where
  safeCast = unsafeCastOnPrototypeName "AbortController"

export data AbortSignal : Type where [external]

export
ToFFI AbortSignal AbortSignal where toFFI = id

export
FromFFI AbortSignal AbortSignal where fromFFI = Just

export
SafeCast AbortSignal where
  safeCast = unsafeCastOnPrototypeName "AbortSignal"

export data AbstractRange : Type where [external]

export
ToFFI AbstractRange AbstractRange where toFFI = id

export
FromFFI AbstractRange AbstractRange where fromFFI = Just

export
SafeCast AbstractRange where
  safeCast = unsafeCastOnPrototypeName "AbstractRange"

export data Attr : Type where [external]

export
ToFFI Attr Attr where toFFI = id

export
FromFFI Attr Attr where fromFFI = Just

export
SafeCast Attr where
  safeCast = unsafeCastOnPrototypeName "Attr"

export data CDATASection : Type where [external]

export
ToFFI CDATASection CDATASection where toFFI = id

export
FromFFI CDATASection CDATASection where fromFFI = Just

export
SafeCast CDATASection where
  safeCast = unsafeCastOnPrototypeName "CDATASection"

export data CharacterData : Type where [external]

export
ToFFI CharacterData CharacterData where toFFI = id

export
FromFFI CharacterData CharacterData where fromFFI = Just

export
SafeCast CharacterData where
  safeCast = unsafeCastOnPrototypeName "CharacterData"

export data Comment : Type where [external]

export
ToFFI Comment Comment where toFFI = id

export
FromFFI Comment Comment where fromFFI = Just

export
SafeCast Comment where
  safeCast = unsafeCastOnPrototypeName "Comment"

export data CustomEvent : Type where [external]

export
ToFFI CustomEvent CustomEvent where toFFI = id

export
FromFFI CustomEvent CustomEvent where fromFFI = Just

export
SafeCast CustomEvent where
  safeCast = unsafeCastOnPrototypeName "CustomEvent"

export data DOMImplementation : Type where [external]

export
ToFFI DOMImplementation DOMImplementation where toFFI = id

export
FromFFI DOMImplementation DOMImplementation where fromFFI = Just

export
SafeCast DOMImplementation where
  safeCast = unsafeCastOnPrototypeName "DOMImplementation"

export data DOMTokenList : Type where [external]

export
ToFFI DOMTokenList DOMTokenList where toFFI = id

export
FromFFI DOMTokenList DOMTokenList where fromFFI = Just

export
SafeCast DOMTokenList where
  safeCast = unsafeCastOnPrototypeName "DOMTokenList"

export data Document : Type where [external]

export
ToFFI Document Document where toFFI = id

export
FromFFI Document Document where fromFFI = Just

export
SafeCast Document where
  safeCast = unsafeCastOnPrototypeName "Document"

export data DocumentFragment : Type where [external]

export
ToFFI DocumentFragment DocumentFragment where toFFI = id

export
FromFFI DocumentFragment DocumentFragment where fromFFI = Just

export
SafeCast DocumentFragment where
  safeCast = unsafeCastOnPrototypeName "DocumentFragment"

export data DocumentType : Type where [external]

export
ToFFI DocumentType DocumentType where toFFI = id

export
FromFFI DocumentType DocumentType where fromFFI = Just

export
SafeCast DocumentType where
  safeCast = unsafeCastOnPrototypeName "DocumentType"

export data Element : Type where [external]

export
ToFFI Element Element where toFFI = id

export
FromFFI Element Element where fromFFI = Just

export
SafeCast Element where
  safeCast = unsafeCastOnPrototypeName "Element"

export data Event : Type where [external]

export
ToFFI Event Event where toFFI = id

export
FromFFI Event Event where fromFFI = Just

export
SafeCast Event where
  safeCast = unsafeCastOnPrototypeName "Event"

export data EventTarget : Type where [external]

export
ToFFI EventTarget EventTarget where toFFI = id

export
FromFFI EventTarget EventTarget where fromFFI = Just

export
SafeCast EventTarget where
  safeCast = unsafeCastOnPrototypeName "EventTarget"

export data HTMLCollection : Type where [external]

export
ToFFI HTMLCollection HTMLCollection where toFFI = id

export
FromFFI HTMLCollection HTMLCollection where fromFFI = Just

export
SafeCast HTMLCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLCollection"

export data MutationObserver : Type where [external]

export
ToFFI MutationObserver MutationObserver where toFFI = id

export
FromFFI MutationObserver MutationObserver where fromFFI = Just

export
SafeCast MutationObserver where
  safeCast = unsafeCastOnPrototypeName "MutationObserver"

export data MutationRecord : Type where [external]

export
ToFFI MutationRecord MutationRecord where toFFI = id

export
FromFFI MutationRecord MutationRecord where fromFFI = Just

export
SafeCast MutationRecord where
  safeCast = unsafeCastOnPrototypeName "MutationRecord"

export data NamedNodeMap : Type where [external]

export
ToFFI NamedNodeMap NamedNodeMap where toFFI = id

export
FromFFI NamedNodeMap NamedNodeMap where fromFFI = Just

export
SafeCast NamedNodeMap where
  safeCast = unsafeCastOnPrototypeName "NamedNodeMap"

export data Node : Type where [external]

export
ToFFI Node Node where toFFI = id

export
FromFFI Node Node where fromFFI = Just

export
SafeCast Node where
  safeCast = unsafeCastOnPrototypeName "Node"

export data NodeIterator : Type where [external]

export
ToFFI NodeIterator NodeIterator where toFFI = id

export
FromFFI NodeIterator NodeIterator where fromFFI = Just

export
SafeCast NodeIterator where
  safeCast = unsafeCastOnPrototypeName "NodeIterator"

export data NodeList : Type where [external]

export
ToFFI NodeList NodeList where toFFI = id

export
FromFFI NodeList NodeList where fromFFI = Just

export
SafeCast NodeList where
  safeCast = unsafeCastOnPrototypeName "NodeList"

export data Performance : Type where [external]

export
ToFFI Performance Performance where toFFI = id

export
FromFFI Performance Performance where fromFFI = Just

export
SafeCast Performance where
  safeCast = unsafeCastOnPrototypeName "Performance"

export data ProcessingInstruction : Type where [external]

export
ToFFI ProcessingInstruction ProcessingInstruction where toFFI = id

export
FromFFI ProcessingInstruction ProcessingInstruction where fromFFI = Just

export
SafeCast ProcessingInstruction where
  safeCast = unsafeCastOnPrototypeName "ProcessingInstruction"

export data Range : Type where [external]

export
ToFFI Range Range where toFFI = id

export
FromFFI Range Range where fromFFI = Just

export
SafeCast Range where
  safeCast = unsafeCastOnPrototypeName "Range"

export data ShadowRoot : Type where [external]

export
ToFFI ShadowRoot ShadowRoot where toFFI = id

export
FromFFI ShadowRoot ShadowRoot where fromFFI = Just

export
SafeCast ShadowRoot where
  safeCast = unsafeCastOnPrototypeName "ShadowRoot"

export data StaticRange : Type where [external]

export
ToFFI StaticRange StaticRange where toFFI = id

export
FromFFI StaticRange StaticRange where fromFFI = Just

export
SafeCast StaticRange where
  safeCast = unsafeCastOnPrototypeName "StaticRange"

export data Text : Type where [external]

export
ToFFI Text Text where toFFI = id

export
FromFFI Text Text where fromFFI = Just

export
SafeCast Text where
  safeCast = unsafeCastOnPrototypeName "Text"

export data TreeWalker : Type where [external]

export
ToFFI TreeWalker TreeWalker where toFFI = id

export
FromFFI TreeWalker TreeWalker where fromFFI = Just

export
SafeCast TreeWalker where
  safeCast = unsafeCastOnPrototypeName "TreeWalker"

export data XMLDocument : Type where [external]

export
ToFFI XMLDocument XMLDocument where toFFI = id

export
FromFFI XMLDocument XMLDocument where fromFFI = Just

export
SafeCast XMLDocument where
  safeCast = unsafeCastOnPrototypeName "XMLDocument"

export data XMLSerializer : Type where [external]

export
ToFFI XMLSerializer XMLSerializer where toFFI = id

export
FromFFI XMLSerializer XMLSerializer where fromFFI = Just

export
SafeCast XMLSerializer where
  safeCast = unsafeCastOnPrototypeName "XMLSerializer"

export data XPathEvaluator : Type where [external]

export
ToFFI XPathEvaluator XPathEvaluator where toFFI = id

export
FromFFI XPathEvaluator XPathEvaluator where fromFFI = Just

export
SafeCast XPathEvaluator where
  safeCast = unsafeCastOnPrototypeName "XPathEvaluator"

export data XPathExpression : Type where [external]

export
ToFFI XPathExpression XPathExpression where toFFI = id

export
FromFFI XPathExpression XPathExpression where fromFFI = Just

export
SafeCast XPathExpression where
  safeCast = unsafeCastOnPrototypeName "XPathExpression"

export data XPathResult : Type where [external]

export
ToFFI XPathResult XPathResult where toFFI = id

export
FromFFI XPathResult XPathResult where fromFFI = Just

export
SafeCast XPathResult where
  safeCast = unsafeCastOnPrototypeName "XPathResult"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data AddEventListenerOptions : Type where [external]

export
ToFFI AddEventListenerOptions AddEventListenerOptions where toFFI = id

export
FromFFI AddEventListenerOptions AddEventListenerOptions where fromFFI = Just

export
SafeCast AddEventListenerOptions where
  safeCast = unsafeCastOnPrototypeName "AddEventListenerOptions"

export data CustomEventInit : Type where [external]

export
ToFFI CustomEventInit CustomEventInit where toFFI = id

export
FromFFI CustomEventInit CustomEventInit where fromFFI = Just

export
SafeCast CustomEventInit where
  safeCast = unsafeCastOnPrototypeName "CustomEventInit"

export data ElementCreationOptions : Type where [external]

export
ToFFI ElementCreationOptions ElementCreationOptions where toFFI = id

export
FromFFI ElementCreationOptions ElementCreationOptions where fromFFI = Just

export
SafeCast ElementCreationOptions where
  safeCast = unsafeCastOnPrototypeName "ElementCreationOptions"

export data EventInit : Type where [external]

export
ToFFI EventInit EventInit where toFFI = id

export
FromFFI EventInit EventInit where fromFFI = Just

export
SafeCast EventInit where
  safeCast = unsafeCastOnPrototypeName "EventInit"

export data EventListenerOptions : Type where [external]

export
ToFFI EventListenerOptions EventListenerOptions where toFFI = id

export
FromFFI EventListenerOptions EventListenerOptions where fromFFI = Just

export
SafeCast EventListenerOptions where
  safeCast = unsafeCastOnPrototypeName "EventListenerOptions"

export data GetRootNodeOptions : Type where [external]

export
ToFFI GetRootNodeOptions GetRootNodeOptions where toFFI = id

export
FromFFI GetRootNodeOptions GetRootNodeOptions where fromFFI = Just

export
SafeCast GetRootNodeOptions where
  safeCast = unsafeCastOnPrototypeName "GetRootNodeOptions"

export data MutationObserverInit : Type where [external]

export
ToFFI MutationObserverInit MutationObserverInit where toFFI = id

export
FromFFI MutationObserverInit MutationObserverInit where fromFFI = Just

export
SafeCast MutationObserverInit where
  safeCast = unsafeCastOnPrototypeName "MutationObserverInit"

export data ShadowRootInit : Type where [external]

export
ToFFI ShadowRootInit ShadowRootInit where toFFI = id

export
FromFFI ShadowRootInit ShadowRootInit where fromFFI = Just

export
SafeCast ShadowRootInit where
  safeCast = unsafeCastOnPrototypeName "ShadowRootInit"

export data StaticRangeInit : Type where [external]

export
ToFFI StaticRangeInit StaticRangeInit where toFFI = id

export
FromFFI StaticRangeInit StaticRangeInit where fromFFI = Just

export
SafeCast StaticRangeInit where
  safeCast = unsafeCastOnPrototypeName "StaticRangeInit"

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data ChildNode : Type where [external]

export
ToFFI ChildNode ChildNode where toFFI = id

export
FromFFI ChildNode ChildNode where fromFFI = Just

export data DocumentOrShadowRoot : Type where [external]

export
ToFFI DocumentOrShadowRoot DocumentOrShadowRoot where toFFI = id

export
FromFFI DocumentOrShadowRoot DocumentOrShadowRoot where fromFFI = Just

export data InnerHTML : Type where [external]

export
ToFFI InnerHTML InnerHTML where toFFI = id

export
FromFFI InnerHTML InnerHTML where fromFFI = Just

export data NonDocumentTypeChildNode : Type where [external]

export
ToFFI NonDocumentTypeChildNode NonDocumentTypeChildNode where toFFI = id

export
FromFFI NonDocumentTypeChildNode NonDocumentTypeChildNode where fromFFI = Just

export data NonElementParentNode : Type where [external]

export
ToFFI NonElementParentNode NonElementParentNode where toFFI = id

export
FromFFI NonElementParentNode NonElementParentNode where fromFFI = Just

export data ParentNode : Type where [external]

export
ToFFI ParentNode ParentNode where toFFI = id

export
FromFFI ParentNode ParentNode where fromFFI = Just

export data Slottable : Type where [external]

export
ToFFI Slottable Slottable where toFFI = id

export
FromFFI Slottable Slottable where fromFFI = Just

export data XPathEvaluatorBase : Type where [external]

export
ToFFI XPathEvaluatorBase XPathEvaluatorBase where toFFI = id

export
FromFFI XPathEvaluatorBase XPathEvaluatorBase where fromFFI = Just

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export data EventListener : Type where [external]

export
ToFFI EventListener EventListener where toFFI = id

export
FromFFI EventListener EventListener where fromFFI = Just

export data MutationCallback : Type where [external]

export
ToFFI MutationCallback MutationCallback where toFFI = id

export
FromFFI MutationCallback MutationCallback where fromFFI = Just

export data NodeFilter : Type where [external]

export
ToFFI NodeFilter NodeFilter where toFFI = id

export
FromFFI NodeFilter NodeFilter where fromFFI = Just

export data XPathNSResolver : Type where [external]

export
ToFFI XPathNSResolver XPathNSResolver where toFFI = id

export
FromFFI XPathNSResolver XPathNSResolver where fromFFI = Just
