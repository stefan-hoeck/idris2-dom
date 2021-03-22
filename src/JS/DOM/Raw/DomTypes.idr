module JS.DOM.Raw.DomTypes

import Data.Maybe

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

export
data AbortController : Type where [external]

export
data AbortSignal : Type where [external]

export
data AbstractRange : Type where [external]

export
data Attr : Type where [external]

export
data CDATASection : Type where [external]

export
data CharacterData : Type where [external]

export
data Comment : Type where [external]

export
data CustomEvent : Type where [external]

export
data DOMImplementation : Type where [external]

export
data DOMTokenList : Type where [external]

export
data Document : Type where [external]

export
data DocumentFragment : Type where [external]

export
data DocumentType : Type where [external]

export
data Element : Type where [external]

export
data Event : Type where [external]

export
data EventTarget : Type where [external]

export
data HTMLCollection : Type where [external]

export
data MutationObserver : Type where [external]

export
data MutationRecord : Type where [external]

export
data NamedNodeMap : Type where [external]

export
data Node : Type where [external]

export
data NodeIterator : Type where [external]

export
data NodeList : Type where [external]

export
data ProcessingInstruction : Type where [external]

export
data Range : Type where [external]

export
data ShadowRoot : Type where [external]

export
data StaticRange : Type where [external]

export
data Text : Type where [external]

export
data TreeWalker : Type where [external]

export
data XMLDocument : Type where [external]

export
data XPathEvaluator : Type where [external]

export
data XPathExpression : Type where [external]

export
data XPathResult : Type where [external]

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export
data ChildNode : Type where [external]

export
data DocumentOrShadowRoot : Type where [external]

export
data NonDocumentTypeChildNode : Type where [external]

export
data NonElementParentNode : Type where [external]

export
data ParentNode : Type where [external]

export
data Slottable : Type where [external]

export
data XPathEvaluatorBase : Type where [external]

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export
data AddEventListenerOptions : Type where [external]

export
data CustomEventInit : Type where [external]

export
data ElementCreationOptions : Type where [external]

export
data EventInit : Type where [external]

export
data EventListenerOptions : Type where [external]

export
data GetRootNodeOptions : Type where [external]

export
data MutationObserverInit : Type where [external]

export
data ShadowRootInit : Type where [external]

export
data StaticRangeInit : Type where [external]