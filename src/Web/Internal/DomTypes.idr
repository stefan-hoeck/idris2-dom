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

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data AbortController : Type where [external]

export
SafeCast AbortController where
  safeCast = unsafeCastOnPrototypeName "AbortController"

export data AbortSignal : Type where [external]

export
SafeCast AbortSignal where
  safeCast = unsafeCastOnPrototypeName "AbortSignal"

export data AbstractRange : Type where [external]

export
SafeCast AbstractRange where
  safeCast = unsafeCastOnPrototypeName "AbstractRange"

export data Attr : Type where [external]

export
SafeCast Attr where
  safeCast = unsafeCastOnPrototypeName "Attr"

export data CDATASection : Type where [external]

export
SafeCast CDATASection where
  safeCast = unsafeCastOnPrototypeName "CDATASection"

export data CharacterData : Type where [external]

export
SafeCast CharacterData where
  safeCast = unsafeCastOnPrototypeName "CharacterData"

export data Comment : Type where [external]

export
SafeCast Comment where
  safeCast = unsafeCastOnPrototypeName "Comment"

export data CustomEvent : Type where [external]

export
SafeCast CustomEvent where
  safeCast = unsafeCastOnPrototypeName "CustomEvent"

export data DOMImplementation : Type where [external]

export
SafeCast DOMImplementation where
  safeCast = unsafeCastOnPrototypeName "DOMImplementation"

export data DOMTokenList : Type where [external]

export
SafeCast DOMTokenList where
  safeCast = unsafeCastOnPrototypeName "DOMTokenList"

export data Document : Type where [external]

export
SafeCast Document where
  safeCast = unsafeCastOnPrototypeName "Document"

export data DocumentFragment : Type where [external]

export
SafeCast DocumentFragment where
  safeCast = unsafeCastOnPrototypeName "DocumentFragment"

export data DocumentType : Type where [external]

export
SafeCast DocumentType where
  safeCast = unsafeCastOnPrototypeName "DocumentType"

export data Element : Type where [external]

export
SafeCast Element where
  safeCast = unsafeCastOnPrototypeName "Element"

export data Event : Type where [external]

export
SafeCast Event where
  safeCast = unsafeCastOnPrototypeName "Event"

export data EventTarget : Type where [external]

export
SafeCast EventTarget where
  safeCast = unsafeCastOnPrototypeName "EventTarget"

export data HTMLCollection : Type where [external]

export
SafeCast HTMLCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLCollection"

export data MutationObserver : Type where [external]

export
SafeCast MutationObserver where
  safeCast = unsafeCastOnPrototypeName "MutationObserver"

export data MutationRecord : Type where [external]

export
SafeCast MutationRecord where
  safeCast = unsafeCastOnPrototypeName "MutationRecord"

export data NamedNodeMap : Type where [external]

export
SafeCast NamedNodeMap where
  safeCast = unsafeCastOnPrototypeName "NamedNodeMap"

export data Node : Type where [external]

export
SafeCast Node where
  safeCast = unsafeCastOnPrototypeName "Node"

export data NodeIterator : Type where [external]

export
SafeCast NodeIterator where
  safeCast = unsafeCastOnPrototypeName "NodeIterator"

export data NodeList : Type where [external]

export
SafeCast NodeList where
  safeCast = unsafeCastOnPrototypeName "NodeList"

export data Performance : Type where [external]

export
SafeCast Performance where
  safeCast = unsafeCastOnPrototypeName "Performance"

export data ProcessingInstruction : Type where [external]

export
SafeCast ProcessingInstruction where
  safeCast = unsafeCastOnPrototypeName "ProcessingInstruction"

export data Range : Type where [external]

export
SafeCast Range where
  safeCast = unsafeCastOnPrototypeName "Range"

export data ShadowRoot : Type where [external]

export
SafeCast ShadowRoot where
  safeCast = unsafeCastOnPrototypeName "ShadowRoot"

export data StaticRange : Type where [external]

export
SafeCast StaticRange where
  safeCast = unsafeCastOnPrototypeName "StaticRange"

export data Text : Type where [external]

export
SafeCast Text where
  safeCast = unsafeCastOnPrototypeName "Text"

export data TreeWalker : Type where [external]

export
SafeCast TreeWalker where
  safeCast = unsafeCastOnPrototypeName "TreeWalker"

export data XMLDocument : Type where [external]

export
SafeCast XMLDocument where
  safeCast = unsafeCastOnPrototypeName "XMLDocument"

export data XPathEvaluator : Type where [external]

export
SafeCast XPathEvaluator where
  safeCast = unsafeCastOnPrototypeName "XPathEvaluator"

export data XPathExpression : Type where [external]

export
SafeCast XPathExpression where
  safeCast = unsafeCastOnPrototypeName "XPathExpression"

export data XPathResult : Type where [external]

export
SafeCast XPathResult where
  safeCast = unsafeCastOnPrototypeName "XPathResult"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data AddEventListenerOptions : Type where [external]

export
SafeCast AddEventListenerOptions where
  safeCast = unsafeCastOnPrototypeName "AddEventListenerOptions"

export data CustomEventInit : Type where [external]

export
SafeCast CustomEventInit where
  safeCast = unsafeCastOnPrototypeName "CustomEventInit"

export data ElementCreationOptions : Type where [external]

export
SafeCast ElementCreationOptions where
  safeCast = unsafeCastOnPrototypeName "ElementCreationOptions"

export data EventInit : Type where [external]

export
SafeCast EventInit where
  safeCast = unsafeCastOnPrototypeName "EventInit"

export data EventListenerOptions : Type where [external]

export
SafeCast EventListenerOptions where
  safeCast = unsafeCastOnPrototypeName "EventListenerOptions"

export data GetRootNodeOptions : Type where [external]

export
SafeCast GetRootNodeOptions where
  safeCast = unsafeCastOnPrototypeName "GetRootNodeOptions"

export data MutationObserverInit : Type where [external]

export
SafeCast MutationObserverInit where
  safeCast = unsafeCastOnPrototypeName "MutationObserverInit"

export data ShadowRootInit : Type where [external]

export
SafeCast ShadowRootInit where
  safeCast = unsafeCastOnPrototypeName "ShadowRootInit"

export data StaticRangeInit : Type where [external]

export
SafeCast StaticRangeInit where
  safeCast = unsafeCastOnPrototypeName "StaticRangeInit"

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data ChildNode : Type where [external]

export data DocumentOrShadowRoot : Type where [external]

export data NonDocumentTypeChildNode : Type where [external]

export data NonElementParentNode : Type where [external]

export data ParentNode : Type where [external]

export data Slottable : Type where [external]

export data XPathEvaluatorBase : Type where [external]

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export data EventListener : Type where [external]

export data MutationCallback : Type where [external]

export data NodeFilter : Type where [external]

export data XPathNSResolver : Type where [external]