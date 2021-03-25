module Web.DomTypes

import Data.Maybe
import JS.Util

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
    fromJS = fromMaybe Open . read . fromJS

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export
data AbortController : Type where [external]

export
ToJS AbortController where
  toJS = believe_me

export
FromJS AbortController where
  fromJS = believe_me

export
data AbortSignal : Type where [external]

export
ToJS AbortSignal where
  toJS = believe_me

export
FromJS AbortSignal where
  fromJS = believe_me

export
data AbstractRange : Type where [external]

export
ToJS AbstractRange where
  toJS = believe_me

export
FromJS AbstractRange where
  fromJS = believe_me

export
data Attr : Type where [external]

export
ToJS Attr where
  toJS = believe_me

export
FromJS Attr where
  fromJS = believe_me

export
data CDATASection : Type where [external]

export
ToJS CDATASection where
  toJS = believe_me

export
FromJS CDATASection where
  fromJS = believe_me

export
data CharacterData : Type where [external]

export
ToJS CharacterData where
  toJS = believe_me

export
FromJS CharacterData where
  fromJS = believe_me

export
data Comment : Type where [external]

export
ToJS Comment where
  toJS = believe_me

export
FromJS Comment where
  fromJS = believe_me

export
data CustomEvent : Type where [external]

export
ToJS CustomEvent where
  toJS = believe_me

export
FromJS CustomEvent where
  fromJS = believe_me

export
data DOMImplementation : Type where [external]

export
ToJS DOMImplementation where
  toJS = believe_me

export
FromJS DOMImplementation where
  fromJS = believe_me

export
data DOMTokenList : Type where [external]

export
ToJS DOMTokenList where
  toJS = believe_me

export
FromJS DOMTokenList where
  fromJS = believe_me

export
data Document : Type where [external]

export
ToJS Document where
  toJS = believe_me

export
FromJS Document where
  fromJS = believe_me

export
data DocumentFragment : Type where [external]

export
ToJS DocumentFragment where
  toJS = believe_me

export
FromJS DocumentFragment where
  fromJS = believe_me

export
data DocumentType : Type where [external]

export
ToJS DocumentType where
  toJS = believe_me

export
FromJS DocumentType where
  fromJS = believe_me

export
data Element : Type where [external]

export
ToJS Element where
  toJS = believe_me

export
FromJS Element where
  fromJS = believe_me

export
data Event : Type where [external]

export
ToJS Event where
  toJS = believe_me

export
FromJS Event where
  fromJS = believe_me

export
data EventTarget : Type where [external]

export
ToJS EventTarget where
  toJS = believe_me

export
FromJS EventTarget where
  fromJS = believe_me

export
data HTMLCollection : Type where [external]

export
ToJS HTMLCollection where
  toJS = believe_me

export
FromJS HTMLCollection where
  fromJS = believe_me

export
data MutationObserver : Type where [external]

export
ToJS MutationObserver where
  toJS = believe_me

export
FromJS MutationObserver where
  fromJS = believe_me

export
data MutationRecord : Type where [external]

export
ToJS MutationRecord where
  toJS = believe_me

export
FromJS MutationRecord where
  fromJS = believe_me

export
data NamedNodeMap : Type where [external]

export
ToJS NamedNodeMap where
  toJS = believe_me

export
FromJS NamedNodeMap where
  fromJS = believe_me

export
data Node : Type where [external]

export
ToJS Node where
  toJS = believe_me

export
FromJS Node where
  fromJS = believe_me

export
data NodeIterator : Type where [external]

export
ToJS NodeIterator where
  toJS = believe_me

export
FromJS NodeIterator where
  fromJS = believe_me

export
data NodeList : Type where [external]

export
ToJS NodeList where
  toJS = believe_me

export
FromJS NodeList where
  fromJS = believe_me

export
data Performance : Type where [external]

export
ToJS Performance where
  toJS = believe_me

export
FromJS Performance where
  fromJS = believe_me

export
data ProcessingInstruction : Type where [external]

export
ToJS ProcessingInstruction where
  toJS = believe_me

export
FromJS ProcessingInstruction where
  fromJS = believe_me

export
data Range : Type where [external]

export
ToJS Range where
  toJS = believe_me

export
FromJS Range where
  fromJS = believe_me

export
data ShadowRoot : Type where [external]

export
ToJS ShadowRoot where
  toJS = believe_me

export
FromJS ShadowRoot where
  fromJS = believe_me

export
data StaticRange : Type where [external]

export
ToJS StaticRange where
  toJS = believe_me

export
FromJS StaticRange where
  fromJS = believe_me

export
data Text : Type where [external]

export
ToJS Text where
  toJS = believe_me

export
FromJS Text where
  fromJS = believe_me

export
data TreeWalker : Type where [external]

export
ToJS TreeWalker where
  toJS = believe_me

export
FromJS TreeWalker where
  fromJS = believe_me

export
data XMLDocument : Type where [external]

export
ToJS XMLDocument where
  toJS = believe_me

export
FromJS XMLDocument where
  fromJS = believe_me

export
data XPathEvaluator : Type where [external]

export
ToJS XPathEvaluator where
  toJS = believe_me

export
FromJS XPathEvaluator where
  fromJS = believe_me

export
data XPathExpression : Type where [external]

export
ToJS XPathExpression where
  toJS = believe_me

export
FromJS XPathExpression where
  fromJS = believe_me

export
data XPathResult : Type where [external]

export
ToJS XPathResult where
  toJS = believe_me

export
FromJS XPathResult where
  fromJS = believe_me

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export
data ChildNode : Type where [external]

export
ToJS ChildNode where
  toJS = believe_me

export
FromJS ChildNode where
  fromJS = believe_me

export
data DocumentOrShadowRoot : Type where [external]

export
ToJS DocumentOrShadowRoot where
  toJS = believe_me

export
FromJS DocumentOrShadowRoot where
  fromJS = believe_me

export
data NonDocumentTypeChildNode : Type where [external]

export
ToJS NonDocumentTypeChildNode where
  toJS = believe_me

export
FromJS NonDocumentTypeChildNode where
  fromJS = believe_me

export
data NonElementParentNode : Type where [external]

export
ToJS NonElementParentNode where
  toJS = believe_me

export
FromJS NonElementParentNode where
  fromJS = believe_me

export
data ParentNode : Type where [external]

export
ToJS ParentNode where
  toJS = believe_me

export
FromJS ParentNode where
  fromJS = believe_me

export
data Slottable : Type where [external]

export
ToJS Slottable where
  toJS = believe_me

export
FromJS Slottable where
  fromJS = believe_me

export
data XPathEvaluatorBase : Type where [external]

export
ToJS XPathEvaluatorBase where
  toJS = believe_me

export
FromJS XPathEvaluatorBase where
  fromJS = believe_me

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export
data AddEventListenerOptions : Type where [external]

export
ToJS AddEventListenerOptions where
  toJS = believe_me

export
FromJS AddEventListenerOptions where
  fromJS = believe_me

export
data CustomEventInit : Type where [external]

export
ToJS CustomEventInit where
  toJS = believe_me

export
FromJS CustomEventInit where
  fromJS = believe_me

export
data ElementCreationOptions : Type where [external]

export
ToJS ElementCreationOptions where
  toJS = believe_me

export
FromJS ElementCreationOptions where
  fromJS = believe_me

export
data EventInit : Type where [external]

export
ToJS EventInit where
  toJS = believe_me

export
FromJS EventInit where
  fromJS = believe_me

export
data EventListenerOptions : Type where [external]

export
ToJS EventListenerOptions where
  toJS = believe_me

export
FromJS EventListenerOptions where
  fromJS = believe_me

export
data GetRootNodeOptions : Type where [external]

export
ToJS GetRootNodeOptions where
  toJS = believe_me

export
FromJS GetRootNodeOptions where
  fromJS = believe_me

export
data MutationObserverInit : Type where [external]

export
ToJS MutationObserverInit where
  toJS = believe_me

export
FromJS MutationObserverInit where
  fromJS = believe_me

export
data ShadowRootInit : Type where [external]

export
ToJS ShadowRootInit where
  toJS = believe_me

export
FromJS ShadowRootInit where
  fromJS = believe_me

export
data StaticRangeInit : Type where [external]

export
ToJS StaticRangeInit where
  toJS = believe_me

export
FromJS StaticRangeInit where
  fromJS = believe_me