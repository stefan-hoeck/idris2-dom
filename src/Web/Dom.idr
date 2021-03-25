module Web.Dom

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast AbortSignal EventTarget where
  cast = believe_me

export
Cast AddEventListenerOptions EventListenerOptions where
  cast = believe_me

export
Cast Attr Node where
  cast = believe_me

export
Cast CDATASection Text where
  cast = believe_me

export
Cast CharacterData ChildNode where
  cast = believe_me

export
Cast CharacterData Node where
  cast = believe_me

export
Cast CharacterData NonDocumentTypeChildNode where
  cast = believe_me

export
Cast Comment CharacterData where
  cast = believe_me

export
Cast CustomEvent Event where
  cast = believe_me

export
Cast CustomEventInit EventInit where
  cast = believe_me

export
Cast Document DocumentOrShadowRoot where
  cast = believe_me

export
Cast Document Node where
  cast = believe_me

export
Cast Document NonElementParentNode where
  cast = believe_me

export
Cast Document ParentNode where
  cast = believe_me

export
Cast Document XPathEvaluatorBase where
  cast = believe_me

export
Cast DocumentFragment Node where
  cast = believe_me

export
Cast DocumentFragment NonElementParentNode where
  cast = believe_me

export
Cast DocumentFragment ParentNode where
  cast = believe_me

export
Cast DocumentType ChildNode where
  cast = believe_me

export
Cast DocumentType Node where
  cast = believe_me

export
Cast Element ChildNode where
  cast = believe_me

export
Cast Element Node where
  cast = believe_me

export
Cast Element NonDocumentTypeChildNode where
  cast = believe_me

export
Cast Element ParentNode where
  cast = believe_me

export
Cast Element Slottable where
  cast = believe_me

export
Cast Node EventTarget where
  cast = believe_me

export
Cast Performance EventTarget where
  cast = believe_me

export
Cast ProcessingInstruction CharacterData where
  cast = believe_me

export
Cast Range AbstractRange where
  cast = believe_me

export
Cast ShadowRoot DocumentFragment where
  cast = believe_me

export
Cast ShadowRoot DocumentOrShadowRoot where
  cast = believe_me

export
Cast StaticRange AbstractRange where
  cast = believe_me

export
Cast Text CharacterData where
  cast = believe_me

export
Cast Text Slottable where
  cast = believe_me

export
Cast XMLDocument Document where
  cast = believe_me

export
Cast XPathEvaluator XPathEvaluatorBase where
  cast = believe_me