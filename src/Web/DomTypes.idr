module Web.DomTypes
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
  ToJS ShadowRootMode where
    toJS = toJS . show

  export
  FromJS ShadowRootMode where
    fromJS ptr = fromJS ptr >>= read

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export data AbortController : Type where [external]

export
SafeCast AbortController where
  safeCast = unsafeCastOnPrototypeName "AbortController"

export ToJS AbortController where toJS = believe_me
export FromJS AbortController where fromJS = safeCast
export data AbortSignal : Type where [external]

export
SafeCast AbortSignal where
  safeCast = unsafeCastOnPrototypeName "AbortSignal"

export ToJS AbortSignal where toJS = believe_me
export FromJS AbortSignal where fromJS = safeCast
export data AbstractRange : Type where [external]

export
SafeCast AbstractRange where
  safeCast = unsafeCastOnPrototypeName "AbstractRange"

export ToJS AbstractRange where toJS = believe_me
export FromJS AbstractRange where fromJS = safeCast
export data Attr : Type where [external]

export
SafeCast Attr where
  safeCast = unsafeCastOnPrototypeName "Attr"

export ToJS Attr where toJS = believe_me
export FromJS Attr where fromJS = safeCast
export data CDATASection : Type where [external]

export
SafeCast CDATASection where
  safeCast = unsafeCastOnPrototypeName "CDATASection"

export ToJS CDATASection where toJS = believe_me
export FromJS CDATASection where fromJS = safeCast
export data CharacterData : Type where [external]

export
SafeCast CharacterData where
  safeCast = unsafeCastOnPrototypeName "CharacterData"

export ToJS CharacterData where toJS = believe_me
export FromJS CharacterData where fromJS = safeCast
export data Comment : Type where [external]

export
SafeCast Comment where
  safeCast = unsafeCastOnPrototypeName "Comment"

export ToJS Comment where toJS = believe_me
export FromJS Comment where fromJS = safeCast
export data CustomEvent : Type where [external]

export
SafeCast CustomEvent where
  safeCast = unsafeCastOnPrototypeName "CustomEvent"

export ToJS CustomEvent where toJS = believe_me
export FromJS CustomEvent where fromJS = safeCast
export data DOMImplementation : Type where [external]

export
SafeCast DOMImplementation where
  safeCast = unsafeCastOnPrototypeName "DOMImplementation"

export ToJS DOMImplementation where toJS = believe_me
export FromJS DOMImplementation where fromJS = safeCast
export data DOMTokenList : Type where [external]

export
SafeCast DOMTokenList where
  safeCast = unsafeCastOnPrototypeName "DOMTokenList"

export ToJS DOMTokenList where toJS = believe_me
export FromJS DOMTokenList where fromJS = safeCast
export data Document : Type where [external]

export
SafeCast Document where
  safeCast = unsafeCastOnPrototypeName "Document"

export ToJS Document where toJS = believe_me
export FromJS Document where fromJS = safeCast
export data DocumentFragment : Type where [external]

export
SafeCast DocumentFragment where
  safeCast = unsafeCastOnPrototypeName "DocumentFragment"

export ToJS DocumentFragment where toJS = believe_me
export FromJS DocumentFragment where fromJS = safeCast
export data DocumentType : Type where [external]

export
SafeCast DocumentType where
  safeCast = unsafeCastOnPrototypeName "DocumentType"

export ToJS DocumentType where toJS = believe_me
export FromJS DocumentType where fromJS = safeCast
export data Element : Type where [external]

export
SafeCast Element where
  safeCast = unsafeCastOnPrototypeName "Element"

export ToJS Element where toJS = believe_me
export FromJS Element where fromJS = safeCast
export data Event : Type where [external]

export
SafeCast Event where
  safeCast = unsafeCastOnPrototypeName "Event"

export ToJS Event where toJS = believe_me
export FromJS Event where fromJS = safeCast
export data EventTarget : Type where [external]

export
SafeCast EventTarget where
  safeCast = unsafeCastOnPrototypeName "EventTarget"

export ToJS EventTarget where toJS = believe_me
export FromJS EventTarget where fromJS = safeCast
export data HTMLCollection : Type where [external]

export
SafeCast HTMLCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLCollection"

export ToJS HTMLCollection where toJS = believe_me
export FromJS HTMLCollection where fromJS = safeCast
export data MutationObserver : Type where [external]

export
SafeCast MutationObserver where
  safeCast = unsafeCastOnPrototypeName "MutationObserver"

export ToJS MutationObserver where toJS = believe_me
export FromJS MutationObserver where fromJS = safeCast
export data MutationRecord : Type where [external]

export
SafeCast MutationRecord where
  safeCast = unsafeCastOnPrototypeName "MutationRecord"

export ToJS MutationRecord where toJS = believe_me
export FromJS MutationRecord where fromJS = safeCast
export data NamedNodeMap : Type where [external]

export
SafeCast NamedNodeMap where
  safeCast = unsafeCastOnPrototypeName "NamedNodeMap"

export ToJS NamedNodeMap where toJS = believe_me
export FromJS NamedNodeMap where fromJS = safeCast
export data Node : Type where [external]

export
SafeCast Node where
  safeCast = unsafeCastOnPrototypeName "Node"

export ToJS Node where toJS = believe_me
export FromJS Node where fromJS = safeCast
export data NodeIterator : Type where [external]

export
SafeCast NodeIterator where
  safeCast = unsafeCastOnPrototypeName "NodeIterator"

export ToJS NodeIterator where toJS = believe_me
export FromJS NodeIterator where fromJS = safeCast
export data NodeList : Type where [external]

export
SafeCast NodeList where
  safeCast = unsafeCastOnPrototypeName "NodeList"

export ToJS NodeList where toJS = believe_me
export FromJS NodeList where fromJS = safeCast
export data Performance : Type where [external]

export
SafeCast Performance where
  safeCast = unsafeCastOnPrototypeName "Performance"

export ToJS Performance where toJS = believe_me
export FromJS Performance where fromJS = safeCast
export data ProcessingInstruction : Type where [external]

export
SafeCast ProcessingInstruction where
  safeCast = unsafeCastOnPrototypeName "ProcessingInstruction"

export ToJS ProcessingInstruction where toJS = believe_me
export FromJS ProcessingInstruction where fromJS = safeCast
export data Range : Type where [external]

export
SafeCast Range where
  safeCast = unsafeCastOnPrototypeName "Range"

export ToJS Range where toJS = believe_me
export FromJS Range where fromJS = safeCast
export data ShadowRoot : Type where [external]

export
SafeCast ShadowRoot where
  safeCast = unsafeCastOnPrototypeName "ShadowRoot"

export ToJS ShadowRoot where toJS = believe_me
export FromJS ShadowRoot where fromJS = safeCast
export data StaticRange : Type where [external]

export
SafeCast StaticRange where
  safeCast = unsafeCastOnPrototypeName "StaticRange"

export ToJS StaticRange where toJS = believe_me
export FromJS StaticRange where fromJS = safeCast
export data Text : Type where [external]

export
SafeCast Text where
  safeCast = unsafeCastOnPrototypeName "Text"

export ToJS Text where toJS = believe_me
export FromJS Text where fromJS = safeCast
export data TreeWalker : Type where [external]

export
SafeCast TreeWalker where
  safeCast = unsafeCastOnPrototypeName "TreeWalker"

export ToJS TreeWalker where toJS = believe_me
export FromJS TreeWalker where fromJS = safeCast
export data XMLDocument : Type where [external]

export
SafeCast XMLDocument where
  safeCast = unsafeCastOnPrototypeName "XMLDocument"

export ToJS XMLDocument where toJS = believe_me
export FromJS XMLDocument where fromJS = safeCast
export data XPathEvaluator : Type where [external]

export
SafeCast XPathEvaluator where
  safeCast = unsafeCastOnPrototypeName "XPathEvaluator"

export ToJS XPathEvaluator where toJS = believe_me
export FromJS XPathEvaluator where fromJS = safeCast
export data XPathExpression : Type where [external]

export
SafeCast XPathExpression where
  safeCast = unsafeCastOnPrototypeName "XPathExpression"

export ToJS XPathExpression where toJS = believe_me
export FromJS XPathExpression where fromJS = safeCast
export data XPathResult : Type where [external]

export
SafeCast XPathResult where
  safeCast = unsafeCastOnPrototypeName "XPathResult"

export ToJS XPathResult where toJS = believe_me
export FromJS XPathResult where fromJS = safeCast

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------
export data ChildNode : Type where [external]

export
SafeCast ChildNode where
  safeCast = unsafeCastOnPrototypeName "ChildNode"

export ToJS ChildNode where toJS = believe_me
export FromJS ChildNode where fromJS = safeCast
export data DocumentOrShadowRoot : Type where [external]

export
SafeCast DocumentOrShadowRoot where
  safeCast = unsafeCastOnPrototypeName "DocumentOrShadowRoot"

export ToJS DocumentOrShadowRoot where toJS = believe_me
export FromJS DocumentOrShadowRoot where fromJS = safeCast
export data NonDocumentTypeChildNode : Type where [external]

export
SafeCast NonDocumentTypeChildNode where
  safeCast = unsafeCastOnPrototypeName "NonDocumentTypeChildNode"

export ToJS NonDocumentTypeChildNode where toJS = believe_me
export FromJS NonDocumentTypeChildNode where fromJS = safeCast
export data NonElementParentNode : Type where [external]

export
SafeCast NonElementParentNode where
  safeCast = unsafeCastOnPrototypeName "NonElementParentNode"

export ToJS NonElementParentNode where toJS = believe_me
export FromJS NonElementParentNode where fromJS = safeCast
export data ParentNode : Type where [external]

export
SafeCast ParentNode where
  safeCast = unsafeCastOnPrototypeName "ParentNode"

export ToJS ParentNode where toJS = believe_me
export FromJS ParentNode where fromJS = safeCast
export data Slottable : Type where [external]

export
SafeCast Slottable where
  safeCast = unsafeCastOnPrototypeName "Slottable"

export ToJS Slottable where toJS = believe_me
export FromJS Slottable where fromJS = safeCast
export data XPathEvaluatorBase : Type where [external]

export
SafeCast XPathEvaluatorBase where
  safeCast = unsafeCastOnPrototypeName "XPathEvaluatorBase"

export ToJS XPathEvaluatorBase where toJS = believe_me
export FromJS XPathEvaluatorBase where fromJS = safeCast

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------
export data AddEventListenerOptions : Type where [external]

export
SafeCast AddEventListenerOptions where
  safeCast = unsafeCastOnPrototypeName "AddEventListenerOptions"

export ToJS AddEventListenerOptions where toJS = believe_me
export FromJS AddEventListenerOptions where fromJS = safeCast
export data CustomEventInit : Type where [external]

export
SafeCast CustomEventInit where
  safeCast = unsafeCastOnPrototypeName "CustomEventInit"

export ToJS CustomEventInit where toJS = believe_me
export FromJS CustomEventInit where fromJS = safeCast
export data ElementCreationOptions : Type where [external]

export
SafeCast ElementCreationOptions where
  safeCast = unsafeCastOnPrototypeName "ElementCreationOptions"

export ToJS ElementCreationOptions where toJS = believe_me
export FromJS ElementCreationOptions where fromJS = safeCast
export data EventInit : Type where [external]

export
SafeCast EventInit where
  safeCast = unsafeCastOnPrototypeName "EventInit"

export ToJS EventInit where toJS = believe_me
export FromJS EventInit where fromJS = safeCast
export data EventListenerOptions : Type where [external]

export
SafeCast EventListenerOptions where
  safeCast = unsafeCastOnPrototypeName "EventListenerOptions"

export ToJS EventListenerOptions where toJS = believe_me
export FromJS EventListenerOptions where fromJS = safeCast
export data GetRootNodeOptions : Type where [external]

export
SafeCast GetRootNodeOptions where
  safeCast = unsafeCastOnPrototypeName "GetRootNodeOptions"

export ToJS GetRootNodeOptions where toJS = believe_me
export FromJS GetRootNodeOptions where fromJS = safeCast
export data MutationObserverInit : Type where [external]

export
SafeCast MutationObserverInit where
  safeCast = unsafeCastOnPrototypeName "MutationObserverInit"

export ToJS MutationObserverInit where toJS = believe_me
export FromJS MutationObserverInit where fromJS = safeCast
export data ShadowRootInit : Type where [external]

export
SafeCast ShadowRootInit where
  safeCast = unsafeCastOnPrototypeName "ShadowRootInit"

export ToJS ShadowRootInit where toJS = believe_me
export FromJS ShadowRootInit where fromJS = safeCast
export data StaticRangeInit : Type where [external]

export
SafeCast StaticRangeInit where
  safeCast = unsafeCastOnPrototypeName "StaticRangeInit"

export ToJS StaticRangeInit where toJS = believe_me
export FromJS StaticRangeInit where fromJS = safeCast