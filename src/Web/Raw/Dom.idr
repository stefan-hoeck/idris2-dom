module Web.Raw.Dom

import JS
import Web.Internal.DomPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AbortController

  export
  new : JSIO AbortController
  new = primJS $ AbortController.prim__new


  export
  signal : (obj : AbortController) -> JSIO AbortSignal
  signal a = primJS $ AbortController.prim__signal a


  export
  abort : (obj : AbortController) -> JSIO ()
  abort a = primJS $ AbortController.prim__abort a



namespace AbortSignal

  export
  abort : JSIO AbortSignal
  abort = primJS $ AbortSignal.prim__abort


  export
  aborted : (obj : AbortSignal) -> JSIO Bool
  aborted a = tryJS "AbortSignal.aborted" $ AbortSignal.prim__aborted a


  export
  onabort : AbortSignal -> Attribute False Maybe EventHandlerNonNull
  onabort v = fromNullablePrim
                "AbortSignal.getonabort"
                prim__onabort
                prim__setOnabort
                v



namespace AbstractRange

  export
  collapsed :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem AbstractRange (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  collapsed a = tryJS "AbstractRange.collapsed" $
    AbstractRange.prim__collapsed (up a)


  export
  endContainer :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem AbstractRange (Types t1)}
    -> (obj : t1)
    -> JSIO Node
  endContainer a = primJS $ AbstractRange.prim__endContainer (up a)


  export
  endOffset :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem AbstractRange (Types t1)}
    -> (obj : t1)
    -> JSIO Bits32
  endOffset a = primJS $ AbstractRange.prim__endOffset (up a)


  export
  startContainer :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem AbstractRange (Types t1)}
    -> (obj : t1)
    -> JSIO Node
  startContainer a = primJS $ AbstractRange.prim__startContainer (up a)


  export
  startOffset :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem AbstractRange (Types t1)}
    -> (obj : t1)
    -> JSIO Bits32
  startOffset a = primJS $ AbstractRange.prim__startOffset (up a)



namespace Attr

  export
  localName : (obj : Attr) -> JSIO String
  localName a = primJS $ Attr.prim__localName a


  export
  name : (obj : Attr) -> JSIO String
  name a = primJS $ Attr.prim__name a


  export
  namespaceURI : (obj : Attr) -> JSIO (Maybe String)
  namespaceURI a = tryJS "Attr.namespaceURI" $ Attr.prim__namespaceURI a


  export
  ownerElement : (obj : Attr) -> JSIO (Maybe Element)
  ownerElement a = tryJS "Attr.ownerElement" $ Attr.prim__ownerElement a


  export
  prefix_ : (obj : Attr) -> JSIO (Maybe String)
  prefix_ a = tryJS "Attr.prefix_" $ Attr.prim__prefix a


  export
  specified : (obj : Attr) -> JSIO Bool
  specified a = tryJS "Attr.specified" $ Attr.prim__specified a


  export
  value : Attr -> Attribute True Prelude.id String
  value v = fromPrim "Attr.getvalue" prim__value prim__setValue v




namespace CharacterData

  export
  data_ :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem CharacterData (Types t)}
    -> t
    -> Attribute True Prelude.id String
  data_ v = fromPrim
              "CharacterData.getdata"
              prim__data
              prim__setData
              (v :> CharacterData)


  export
  length :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem CharacterData (Types t1)}
    -> (obj : t1)
    -> JSIO Bits32
  length a = primJS $ CharacterData.prim__length (up a)


  export
  appendData :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem CharacterData (Types t1)}
    -> (obj : t1)
    -> (data_ : String)
    -> JSIO ()
  appendData a b = primJS $ CharacterData.prim__appendData (up a) b


  export
  deleteData :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem CharacterData (Types t1)}
    -> (obj : t1)
    -> (offset : Bits32)
    -> (count : Bits32)
    -> JSIO ()
  deleteData a b c = primJS $ CharacterData.prim__deleteData (up a) b c


  export
  insertData :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem CharacterData (Types t1)}
    -> (obj : t1)
    -> (offset : Bits32)
    -> (data_ : String)
    -> JSIO ()
  insertData a b c = primJS $ CharacterData.prim__insertData (up a) b c


  export
  replaceData :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem CharacterData (Types t1)}
    -> (obj : t1)
    -> (offset : Bits32)
    -> (count : Bits32)
    -> (data_ : String)
    -> JSIO ()
  replaceData a b c d = primJS $ CharacterData.prim__replaceData (up a) b c d


  export
  substringData :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem CharacterData (Types t1)}
    -> (obj : t1)
    -> (offset : Bits32)
    -> (count : Bits32)
    -> JSIO String
  substringData a b c = primJS $ CharacterData.prim__substringData (up a) b c



namespace Comment

  export
  new' : (data_ : Optional String) -> JSIO Comment
  new' a = primJS $ Comment.prim__new (toFFI a)

  export
  new : JSIO Comment
  new = primJS $ Comment.prim__new undef



namespace CustomEvent

  export
  new' :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem CustomEventInit (Types t2)}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO CustomEvent
  new' a b = primJS $ CustomEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO CustomEvent
  new a = primJS $ CustomEvent.prim__new a undef


  export
  detail : (obj : CustomEvent) -> JSIO Any
  detail a = tryJS "CustomEvent.detail" $ CustomEvent.prim__detail a


  export
  initCustomEvent' :
       (obj : CustomEvent)
    -> (type : String)
    -> (bubbles : Optional Bool)
    -> (cancelable : Optional Bool)
    -> (detail : Optional Any)
    -> JSIO ()
  initCustomEvent' a b c d e = primJS $
    CustomEvent.prim__initCustomEvent a b (toFFI c) (toFFI d) (toFFI e)

  export
  initCustomEvent : (obj : CustomEvent) -> (type : String) -> JSIO ()
  initCustomEvent a b = primJS $
    CustomEvent.prim__initCustomEvent a b undef undef undef



namespace DOMImplementation

  export
  createDocument' :
       (obj : DOMImplementation)
    -> (namespace_ : Maybe String)
    -> (qualifiedName : String)
    -> (doctype : Optional (Maybe DocumentType))
    -> JSIO XMLDocument
  createDocument' a b c d = primJS $
    DOMImplementation.prim__createDocument a (toFFI b) c (toFFI d)

  export
  createDocument :
       (obj : DOMImplementation)
    -> (namespace_ : Maybe String)
    -> (qualifiedName : String)
    -> JSIO XMLDocument
  createDocument a b c = primJS $
    DOMImplementation.prim__createDocument a (toFFI b) c undef


  export
  createDocumentType :
       (obj : DOMImplementation)
    -> (qualifiedName : String)
    -> (publicId : String)
    -> (systemId : String)
    -> JSIO DocumentType
  createDocumentType a b c d = primJS $
    DOMImplementation.prim__createDocumentType a b c d


  export
  createHTMLDocument' :
       (obj : DOMImplementation)
    -> (title : Optional String)
    -> JSIO Document
  createHTMLDocument' a b = primJS $
    DOMImplementation.prim__createHTMLDocument a (toFFI b)

  export
  createHTMLDocument : (obj : DOMImplementation) -> JSIO Document
  createHTMLDocument a = primJS $
    DOMImplementation.prim__createHTMLDocument a undef


  export
  hasFeature : (obj : DOMImplementation) -> JSIO Bool
  hasFeature a = tryJS "DOMImplementation.hasFeature" $
    DOMImplementation.prim__hasFeature a



namespace DOMTokenList

  export
  length : (obj : DOMTokenList) -> JSIO Bits32
  length a = primJS $ DOMTokenList.prim__length a


  export
  value : DOMTokenList -> Attribute True Prelude.id String
  value v = fromPrim "DOMTokenList.getvalue" prim__value prim__setValue v


  export
  add : (obj : DOMTokenList) -> (tokens : List String) -> JSIO ()
  add a b = primJS $ DOMTokenList.prim__add a (toFFI b)


  export
  contains : (obj : DOMTokenList) -> (token : String) -> JSIO Bool
  contains a b = tryJS "DOMTokenList.contains" $ DOMTokenList.prim__contains a b


  export
  item : (obj : DOMTokenList) -> (index : Bits32) -> JSIO (Maybe String)
  item a b = tryJS "DOMTokenList.item" $ DOMTokenList.prim__item a b


  export
  remove : (obj : DOMTokenList) -> (tokens : List String) -> JSIO ()
  remove a b = primJS $ DOMTokenList.prim__remove a (toFFI b)


  export
  replace :
       (obj : DOMTokenList)
    -> (token : String)
    -> (newToken : String)
    -> JSIO Bool
  replace a b c = tryJS "DOMTokenList.replace" $
    DOMTokenList.prim__replace a b c


  export
  supports : (obj : DOMTokenList) -> (token : String) -> JSIO Bool
  supports a b = tryJS "DOMTokenList.supports" $ DOMTokenList.prim__supports a b


  export
  toggle' :
       (obj : DOMTokenList)
    -> (token : String)
    -> (force : Optional Bool)
    -> JSIO Bool
  toggle' a b c = tryJS "DOMTokenList.toggle'" $
    DOMTokenList.prim__toggle a b (toFFI c)

  export
  toggle : (obj : DOMTokenList) -> (token : String) -> JSIO Bool
  toggle a b = tryJS "DOMTokenList.toggle" $ DOMTokenList.prim__toggle a b undef



namespace Document

  export
  new : JSIO Document
  new = primJS $ Document.prim__new


  export
  get :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (name : String)
    -> JSIO Object
  get a b = primJS $ Document.prim__get (up a) b


  export
  URL :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO String
  URL a = primJS $ Document.prim__URL (up a)


  export
  alinkColor :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Document (Types t)}
    -> t
    -> Attribute True Prelude.id String
  alinkColor v = fromPrim
                   "Document.getalinkColor"
                   prim__alinkColor
                   prim__setAlinkColor
                   (v :> Document)


  export
  all :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO HTMLAllCollection
  all a = primJS $ Document.prim__all (up a)


  export
  anchors :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO HTMLCollection
  anchors a = primJS $ Document.prim__anchors (up a)


  export
  applets :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO HTMLCollection
  applets a = primJS $ Document.prim__applets (up a)


  export
  bgColor :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Document (Types t)}
    -> t
    -> Attribute True Prelude.id String
  bgColor v = fromPrim
                "Document.getbgColor"
                prim__bgColor
                prim__setBgColor
                (v :> Document)


  export
  body :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Document (Types t)}
    -> t
    -> Attribute False Maybe HTMLElement
  body v = fromNullablePrim
             "Document.getbody"
             prim__body
             prim__setBody
             (v :> Document)


  export
  characterSet :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO String
  characterSet a = primJS $ Document.prim__characterSet (up a)


  export
  charset :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO String
  charset a = primJS $ Document.prim__charset (up a)


  export
  compatMode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO String
  compatMode a = primJS $ Document.prim__compatMode (up a)


  export
  contentType :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO String
  contentType a = primJS $ Document.prim__contentType (up a)


  export
  cookie :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Document (Types t)}
    -> t
    -> Attribute True Prelude.id String
  cookie v = fromPrim
               "Document.getcookie"
               prim__cookie
               prim__setCookie
               (v :> Document)


  export
  currentScript :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe (HSum [HTMLScriptElement, SVGScriptElement]))
  currentScript a = tryJS "Document.currentScript" $
    Document.prim__currentScript (up a)


  export
  defaultView :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe WindowProxy)
  defaultView a = tryJS "Document.defaultView" $
    Document.prim__defaultView (up a)


  export
  designMode :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Document (Types t)}
    -> t
    -> Attribute True Prelude.id String
  designMode v = fromPrim
                   "Document.getdesignMode"
                   prim__designMode
                   prim__setDesignMode
                   (v :> Document)


  export
  dir :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Document (Types t)}
    -> t
    -> Attribute True Prelude.id String
  dir v = fromPrim "Document.getdir" prim__dir prim__setDir (v :> Document)


  export
  doctype :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe DocumentType)
  doctype a = tryJS "Document.doctype" $ Document.prim__doctype (up a)


  export
  documentElement :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Element)
  documentElement a = tryJS "Document.documentElement" $
    Document.prim__documentElement (up a)


  export
  documentURI :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO String
  documentURI a = primJS $ Document.prim__documentURI (up a)


  export
  domain :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Document (Types t)}
    -> t
    -> Attribute True Prelude.id String
  domain v = fromPrim
               "Document.getdomain"
               prim__domain
               prim__setDomain
               (v :> Document)


  export
  embeds :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO HTMLCollection
  embeds a = primJS $ Document.prim__embeds (up a)


  export
  fgColor :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Document (Types t)}
    -> t
    -> Attribute True Prelude.id String
  fgColor v = fromPrim
                "Document.getfgColor"
                prim__fgColor
                prim__setFgColor
                (v :> Document)


  export
  forms :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO HTMLCollection
  forms a = primJS $ Document.prim__forms (up a)


  export
  head :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe HTMLHeadElement)
  head a = tryJS "Document.head" $ Document.prim__head (up a)


  export
  hidden :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  hidden a = tryJS "Document.hidden" $ Document.prim__hidden (up a)


  export
  images :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO HTMLCollection
  images a = primJS $ Document.prim__images (up a)


  export
  implementation_ :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO DOMImplementation
  implementation_ a = primJS $ Document.prim__implementation (up a)


  export
  inputEncoding :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO String
  inputEncoding a = primJS $ Document.prim__inputEncoding (up a)


  export
  lastModified :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO String
  lastModified a = primJS $ Document.prim__lastModified (up a)


  export
  linkColor :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Document (Types t)}
    -> t
    -> Attribute True Prelude.id String
  linkColor v = fromPrim
                  "Document.getlinkColor"
                  prim__linkColor
                  prim__setLinkColor
                  (v :> Document)


  export
  links :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO HTMLCollection
  links a = primJS $ Document.prim__links (up a)


  export
  location :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Location)
  location a = tryJS "Document.location" $ Document.prim__location (up a)


  export
  onreadystatechange :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Document (Types t)}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onreadystatechange v = fromNullablePrim
                           "Document.getonreadystatechange"
                           prim__onreadystatechange
                           prim__setOnreadystatechange
                           (v :> Document)


  export
  onvisibilitychange :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Document (Types t)}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onvisibilitychange v = fromNullablePrim
                           "Document.getonvisibilitychange"
                           prim__onvisibilitychange
                           prim__setOnvisibilitychange
                           (v :> Document)


  export
  plugins :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO HTMLCollection
  plugins a = primJS $ Document.prim__plugins (up a)


  export
  readyState :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO DocumentReadyState
  readyState a = tryJS "Document.readyState" $ Document.prim__readyState (up a)


  export
  referrer :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO String
  referrer a = primJS $ Document.prim__referrer (up a)


  export
  rootElement :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe SVGSVGElement)
  rootElement a = tryJS "Document.rootElement" $
    Document.prim__rootElement (up a)


  export
  scripts :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO HTMLCollection
  scripts a = primJS $ Document.prim__scripts (up a)


  export
  scrollingElement :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Element)
  scrollingElement a = tryJS "Document.scrollingElement" $
    Document.prim__scrollingElement (up a)


  export
  timeline :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO DocumentTimeline
  timeline a = primJS $ Document.prim__timeline (up a)


  export
  title :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Document (Types t)}
    -> t
    -> Attribute True Prelude.id String
  title v = fromPrim
              "Document.gettitle"
              prim__title
              prim__setTitle
              (v :> Document)


  export
  visibilityState :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO VisibilityState
  visibilityState a = tryJS "Document.visibilityState" $
    Document.prim__visibilityState (up a)


  export
  vlinkColor :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Document (Types t)}
    -> t
    -> Attribute True Prelude.id String
  vlinkColor v = fromPrim
                   "Document.getvlinkColor"
                   prim__vlinkColor
                   prim__setVlinkColor
                   (v :> Document)


  export
  adoptNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (node : t2)
    -> JSIO Node
  adoptNode a b = primJS $ Document.prim__adoptNode (up a) (up b)


  export
  captureEvents :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  captureEvents a = primJS $ Document.prim__captureEvents (up a)


  export
  caretPositionFromPoint :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> JSIO (Maybe CaretPosition)
  caretPositionFromPoint a b c = tryJS "Document.caretPositionFromPoint" $
    Document.prim__caretPositionFromPoint (up a) b c


  export
  clear :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  clear a = primJS $ Document.prim__clear (up a)


  export
  close :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  close a = primJS $ Document.prim__close (up a)


  export
  createAttribute :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (localName : String)
    -> JSIO Attr
  createAttribute a b = primJS $ Document.prim__createAttribute (up a) b


  export
  createAttributeNS :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (namespace_ : Maybe String)
    -> (qualifiedName : String)
    -> JSIO Attr
  createAttributeNS a b c = primJS $
    Document.prim__createAttributeNS (up a) (toFFI b) c


  export
  createCDATASection :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (data_ : String)
    -> JSIO CDATASection
  createCDATASection a b = primJS $ Document.prim__createCDATASection (up a) b


  export
  createComment :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (data_ : String)
    -> JSIO Comment
  createComment a b = primJS $ Document.prim__createComment (up a) b


  export
  createDocumentFragment :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO DocumentFragment
  createDocumentFragment a = primJS $
    Document.prim__createDocumentFragment (up a)


  export
  createElement' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (localName : String)
    -> (options : Optional (HSum [String, ElementCreationOptions]))
    -> JSIO Element
  createElement' a b c = primJS $
    Document.prim__createElement (up a) b (toFFI c)

  export
  createElement :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (localName : String)
    -> JSIO Element
  createElement a b = primJS $ Document.prim__createElement (up a) b undef


  export
  createElementNS' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (namespace_ : Maybe String)
    -> (qualifiedName : String)
    -> (options : Optional (HSum [String, ElementCreationOptions]))
    -> JSIO Element
  createElementNS' a b c d = primJS $
    Document.prim__createElementNS (up a) (toFFI b) c (toFFI d)

  export
  createElementNS :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (namespace_ : Maybe String)
    -> (qualifiedName : String)
    -> JSIO Element
  createElementNS a b c = primJS $
    Document.prim__createElementNS (up a) (toFFI b) c undef


  export
  createEvent :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (interface_ : String)
    -> JSIO Event
  createEvent a b = primJS $ Document.prim__createEvent (up a) b


  export
  createNodeIterator' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (root : t2)
    -> (whatToShow : Optional Bits32)
    -> (filter : Optional (Maybe NodeFilter))
    -> JSIO NodeIterator
  createNodeIterator' a b c d = primJS $
    Document.prim__createNodeIterator (up a) (up b) (toFFI c) (toFFI d)

  export
  createNodeIterator :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (root : t2)
    -> JSIO NodeIterator
  createNodeIterator a b = primJS $
    Document.prim__createNodeIterator (up a) (up b) undef undef


  export
  createProcessingInstruction :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (target : String)
    -> (data_ : String)
    -> JSIO ProcessingInstruction
  createProcessingInstruction a b c = primJS $
    Document.prim__createProcessingInstruction (up a) b c


  export
  createRange :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO Range
  createRange a = primJS $ Document.prim__createRange (up a)


  export
  createTextNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (data_ : String)
    -> JSIO Text
  createTextNode a b = primJS $ Document.prim__createTextNode (up a) b


  export
  createTreeWalker' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (root : t2)
    -> (whatToShow : Optional Bits32)
    -> (filter : Optional (Maybe NodeFilter))
    -> JSIO TreeWalker
  createTreeWalker' a b c d = primJS $
    Document.prim__createTreeWalker (up a) (up b) (toFFI c) (toFFI d)

  export
  createTreeWalker :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (root : t2)
    -> JSIO TreeWalker
  createTreeWalker a b = primJS $
    Document.prim__createTreeWalker (up a) (up b) undef undef


  export
  elementFromPoint :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> JSIO (Maybe Element)
  elementFromPoint a b c = tryJS "Document.elementFromPoint" $
    Document.prim__elementFromPoint (up a) b c


  export
  elementsFromPoint :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> JSIO (Array Element)
  elementsFromPoint a b c = primJS $ Document.prim__elementsFromPoint (up a) b c


  export
  execCommand' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (commandId : String)
    -> (showUI : Optional Bool)
    -> (value : Optional String)
    -> JSIO Bool
  execCommand' a b c d = tryJS "Document.execCommand'" $
    Document.prim__execCommand (up a) b (toFFI c) (toFFI d)

  export
  execCommand :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (commandId : String)
    -> JSIO Bool
  execCommand a b = tryJS "Document.execCommand" $
    Document.prim__execCommand (up a) b undef undef


  export
  getAnimations :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO (Array Animation)
  getAnimations a = primJS $ Document.prim__getAnimations (up a)


  export
  getElementsByClassName :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (classNames : String)
    -> JSIO HTMLCollection
  getElementsByClassName a b = primJS $
    Document.prim__getElementsByClassName (up a) b


  export
  getElementsByName :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (elementName : String)
    -> JSIO NodeList
  getElementsByName a b = primJS $ Document.prim__getElementsByName (up a) b


  export
  getElementsByTagName :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (qualifiedName : String)
    -> JSIO HTMLCollection
  getElementsByTagName a b = primJS $
    Document.prim__getElementsByTagName (up a) b


  export
  getElementsByTagNameNS :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (namespace_ : Maybe String)
    -> (localName : String)
    -> JSIO HTMLCollection
  getElementsByTagNameNS a b c = primJS $
    Document.prim__getElementsByTagNameNS (up a) (toFFI b) c


  export
  hasFocus :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  hasFocus a = tryJS "Document.hasFocus" $ Document.prim__hasFocus (up a)


  export
  importNode' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (node : t2)
    -> (deep : Optional Bool)
    -> JSIO Node
  importNode' a b c = primJS $ Document.prim__importNode (up a) (up b) (toFFI c)

  export
  importNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (node : t2)
    -> JSIO Node
  importNode a b = primJS $ Document.prim__importNode (up a) (up b) undef


  export
  open' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (unused1 : Optional String)
    -> (unused2 : Optional String)
    -> JSIO Document
  open' a b c = primJS $ Document.prim__open (up a) (toFFI b) (toFFI c)

  export
  open_ :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO Document
  open_ a = primJS $ Document.prim__open (up a) undef undef


  export
  open1 :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (url : String)
    -> (name : String)
    -> (features : String)
    -> JSIO (Maybe WindowProxy)
  open1 a b c d = tryJS "Document.open1" $ Document.prim__open1 (up a) b c d


  export
  queryCommandEnabled :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (commandId : String)
    -> JSIO Bool
  queryCommandEnabled a b = tryJS "Document.queryCommandEnabled" $
    Document.prim__queryCommandEnabled (up a) b


  export
  queryCommandIndeterm :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (commandId : String)
    -> JSIO Bool
  queryCommandIndeterm a b = tryJS "Document.queryCommandIndeterm" $
    Document.prim__queryCommandIndeterm (up a) b


  export
  queryCommandState :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (commandId : String)
    -> JSIO Bool
  queryCommandState a b = tryJS "Document.queryCommandState" $
    Document.prim__queryCommandState (up a) b


  export
  queryCommandSupported :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (commandId : String)
    -> JSIO Bool
  queryCommandSupported a b = tryJS "Document.queryCommandSupported" $
    Document.prim__queryCommandSupported (up a) b


  export
  queryCommandValue :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (commandId : String)
    -> JSIO String
  queryCommandValue a b = primJS $ Document.prim__queryCommandValue (up a) b


  export
  releaseEvents :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  releaseEvents a = primJS $ Document.prim__releaseEvents (up a)


  export
  write :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (text : List String)
    -> JSIO ()
  write a b = primJS $ Document.prim__write (up a) (toFFI b)


  export
  writeln :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Document (Types t1)}
    -> (obj : t1)
    -> (text : List String)
    -> JSIO ()
  writeln a b = primJS $ Document.prim__writeln (up a) (toFFI b)



namespace DocumentFragment

  export
  new : JSIO DocumentFragment
  new = primJS $ DocumentFragment.prim__new



namespace DocumentType

  export
  name : (obj : DocumentType) -> JSIO String
  name a = primJS $ DocumentType.prim__name a


  export
  publicId : (obj : DocumentType) -> JSIO String
  publicId a = primJS $ DocumentType.prim__publicId a


  export
  systemId : (obj : DocumentType) -> JSIO String
  systemId a = primJS $ DocumentType.prim__systemId a



namespace Element

  export
  attributes :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO NamedNodeMap
  attributes a = primJS $ Element.prim__attributes (up a)


  export
  classList :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO DOMTokenList
  classList a = primJS $ Element.prim__classList (up a)


  export
  className :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Element (Types t)}
    -> t
    -> Attribute True Prelude.id String
  className v = fromPrim
                  "Element.getclassName"
                  prim__className
                  prim__setClassName
                  (v :> Element)


  export
  clientHeight :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO Int32
  clientHeight a = primJS $ Element.prim__clientHeight (up a)


  export
  clientLeft :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO Int32
  clientLeft a = primJS $ Element.prim__clientLeft (up a)


  export
  clientTop :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO Int32
  clientTop a = primJS $ Element.prim__clientTop (up a)


  export
  clientWidth :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO Int32
  clientWidth a = primJS $ Element.prim__clientWidth (up a)


  export
  id :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Element (Types t)}
    -> t
    -> Attribute True Prelude.id String
  id v = fromPrim "Element.getid" prim__id prim__setId (v :> Element)


  export
  localName :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO String
  localName a = primJS $ Element.prim__localName (up a)


  export
  namespaceURI :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe String)
  namespaceURI a = tryJS "Element.namespaceURI" $
    Element.prim__namespaceURI (up a)


  export
  outerHTML :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Element (Types t)}
    -> t
    -> Attribute True Prelude.id String
  outerHTML v = fromPrim
                  "Element.getouterHTML"
                  prim__outerHTML
                  prim__setOuterHTML
                  (v :> Element)


  export
  prefix_ :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe String)
  prefix_ a = tryJS "Element.prefix_" $ Element.prim__prefix (up a)


  export
  scrollHeight :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO Int32
  scrollHeight a = primJS $ Element.prim__scrollHeight (up a)


  export
  scrollLeft :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Element (Types t)}
    -> t
    -> Attribute True Prelude.id Double
  scrollLeft v = fromPrim
                   "Element.getscrollLeft"
                   prim__scrollLeft
                   prim__setScrollLeft
                   (v :> Element)


  export
  scrollTop :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Element (Types t)}
    -> t
    -> Attribute True Prelude.id Double
  scrollTop v = fromPrim
                  "Element.getscrollTop"
                  prim__scrollTop
                  prim__setScrollTop
                  (v :> Element)


  export
  scrollWidth :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO Int32
  scrollWidth a = primJS $ Element.prim__scrollWidth (up a)


  export
  shadowRoot :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe ShadowRoot)
  shadowRoot a = tryJS "Element.shadowRoot" $ Element.prim__shadowRoot (up a)


  export
  slot :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Element (Types t)}
    -> t
    -> Attribute True Prelude.id String
  slot v = fromPrim "Element.getslot" prim__slot prim__setSlot (v :> Element)


  export
  tagName :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO String
  tagName a = primJS $ Element.prim__tagName (up a)


  export
  attachShadow :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> {auto 0 _ : Elem ShadowRootInit (Types t2)}
    -> (obj : t1)
    -> (init : t2)
    -> JSIO ShadowRoot
  attachShadow a b = primJS $ Element.prim__attachShadow (up a) (up b)


  export
  checkVisibility' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> {auto 0 _ : Elem CheckVisibilityOptions (Types t2)}
    -> (obj : t1)
    -> (options : Optional t2)
    -> JSIO Bool
  checkVisibility' a b = tryJS "Element.checkVisibility'" $
    Element.prim__checkVisibility (up a) (optUp b)

  export
  checkVisibility :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  checkVisibility a = tryJS "Element.checkVisibility" $
    Element.prim__checkVisibility (up a) undef


  export
  closest :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (selectors : String)
    -> JSIO (Maybe Element)
  closest a b = tryJS "Element.closest" $ Element.prim__closest (up a) b


  export
  getAttribute :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (qualifiedName : String)
    -> JSIO (Maybe String)
  getAttribute a b = tryJS "Element.getAttribute" $
    Element.prim__getAttribute (up a) b


  export
  getAttributeNS :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (namespace_ : Maybe String)
    -> (localName : String)
    -> JSIO (Maybe String)
  getAttributeNS a b c = tryJS "Element.getAttributeNS" $
    Element.prim__getAttributeNS (up a) (toFFI b) c


  export
  getAttributeNames :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO (Array String)
  getAttributeNames a = primJS $ Element.prim__getAttributeNames (up a)


  export
  getAttributeNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (qualifiedName : String)
    -> JSIO (Maybe Attr)
  getAttributeNode a b = tryJS "Element.getAttributeNode" $
    Element.prim__getAttributeNode (up a) b


  export
  getAttributeNodeNS :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (namespace_ : Maybe String)
    -> (localName : String)
    -> JSIO (Maybe Attr)
  getAttributeNodeNS a b c = tryJS "Element.getAttributeNodeNS" $
    Element.prim__getAttributeNodeNS (up a) (toFFI b) c


  export
  getBoundingClientRect :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO DOMRect
  getBoundingClientRect a = primJS $ Element.prim__getBoundingClientRect (up a)


  export
  getClientRects :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO DOMRectList
  getClientRects a = primJS $ Element.prim__getClientRects (up a)


  export
  getElementsByClassName :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (classNames : String)
    -> JSIO HTMLCollection
  getElementsByClassName a b = primJS $
    Element.prim__getElementsByClassName (up a) b


  export
  getElementsByTagName :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (qualifiedName : String)
    -> JSIO HTMLCollection
  getElementsByTagName a b = primJS $
    Element.prim__getElementsByTagName (up a) b


  export
  getElementsByTagNameNS :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (namespace_ : Maybe String)
    -> (localName : String)
    -> JSIO HTMLCollection
  getElementsByTagNameNS a b c = primJS $
    Element.prim__getElementsByTagNameNS (up a) (toFFI b) c


  export
  hasAttribute :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (qualifiedName : String)
    -> JSIO Bool
  hasAttribute a b = tryJS "Element.hasAttribute" $
    Element.prim__hasAttribute (up a) b


  export
  hasAttributeNS :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (namespace_ : Maybe String)
    -> (localName : String)
    -> JSIO Bool
  hasAttributeNS a b c = tryJS "Element.hasAttributeNS" $
    Element.prim__hasAttributeNS (up a) (toFFI b) c


  export
  hasAttributes :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  hasAttributes a = tryJS "Element.hasAttributes" $
    Element.prim__hasAttributes (up a)


  export
  insertAdjacentElement :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> {auto 0 _ : Elem Element (Types t3)}
    -> (obj : t1)
    -> (where_ : String)
    -> (element : t3)
    -> JSIO (Maybe Element)
  insertAdjacentElement a b c = tryJS "Element.insertAdjacentElement" $
    Element.prim__insertAdjacentElement (up a) b (up c)


  export
  insertAdjacentHTML :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (position : String)
    -> (text : String)
    -> JSIO ()
  insertAdjacentHTML a b c = primJS $
    Element.prim__insertAdjacentHTML (up a) b c


  export
  insertAdjacentText :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (where_ : String)
    -> (data_ : String)
    -> JSIO ()
  insertAdjacentText a b c = primJS $
    Element.prim__insertAdjacentText (up a) b c


  export
  matches :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (selectors : String)
    -> JSIO Bool
  matches a b = tryJS "Element.matches" $ Element.prim__matches (up a) b


  export
  pseudo :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (type : String)
    -> JSIO (Maybe CSSPseudoElement)
  pseudo a b = tryJS "Element.pseudo" $ Element.prim__pseudo (up a) b


  export
  removeAttribute :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (qualifiedName : String)
    -> JSIO ()
  removeAttribute a b = primJS $ Element.prim__removeAttribute (up a) b


  export
  removeAttributeNS :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (namespace_ : Maybe String)
    -> (localName : String)
    -> JSIO ()
  removeAttributeNS a b c = primJS $
    Element.prim__removeAttributeNS (up a) (toFFI b) c


  export
  removeAttributeNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (attr : Attr)
    -> JSIO Attr
  removeAttributeNode a b = primJS $ Element.prim__removeAttributeNode (up a) b


  export
  scrollBy' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> {auto 0 _ : Elem ScrollToOptions (Types t2)}
    -> (obj : t1)
    -> (options : Optional t2)
    -> JSIO ()
  scrollBy' a b = primJS $ Element.prim__scrollBy (up a) (optUp b)

  export
  scrollBy :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  scrollBy a = primJS $ Element.prim__scrollBy (up a) undef


  export
  scrollBy1 :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> JSIO ()
  scrollBy1 a b c = primJS $ Element.prim__scrollBy1 (up a) b c


  export
  scroll' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> {auto 0 _ : Elem ScrollToOptions (Types t2)}
    -> (obj : t1)
    -> (options : Optional t2)
    -> JSIO ()
  scroll' a b = primJS $ Element.prim__scroll (up a) (optUp b)

  export
  scroll :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  scroll a = primJS $ Element.prim__scroll (up a) undef


  export
  scroll1 :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> JSIO ()
  scroll1 a b c = primJS $ Element.prim__scroll1 (up a) b c


  export
  scrollIntoView' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (arg : Optional (HSum [Bool, ScrollIntoViewOptions]))
    -> JSIO ()
  scrollIntoView' a b = primJS $ Element.prim__scrollIntoView (up a) (toFFI b)

  export
  scrollIntoView :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  scrollIntoView a = primJS $ Element.prim__scrollIntoView (up a) undef


  export
  scrollTo' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> {auto 0 _ : Elem ScrollToOptions (Types t2)}
    -> (obj : t1)
    -> (options : Optional t2)
    -> JSIO ()
  scrollTo' a b = primJS $ Element.prim__scrollTo (up a) (optUp b)

  export
  scrollTo :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  scrollTo a = primJS $ Element.prim__scrollTo (up a) undef


  export
  scrollTo1 :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> JSIO ()
  scrollTo1 a b c = primJS $ Element.prim__scrollTo1 (up a) b c


  export
  setAttribute :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (qualifiedName : String)
    -> (value : String)
    -> JSIO ()
  setAttribute a b c = primJS $ Element.prim__setAttribute (up a) b c


  export
  setAttributeNS :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (namespace_ : Maybe String)
    -> (qualifiedName : String)
    -> (value : String)
    -> JSIO ()
  setAttributeNS a b c d = primJS $
    Element.prim__setAttributeNS (up a) (toFFI b) c d


  export
  setAttributeNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (attr : Attr)
    -> JSIO (Maybe Attr)
  setAttributeNode a b = tryJS "Element.setAttributeNode" $
    Element.prim__setAttributeNode (up a) b


  export
  setAttributeNodeNS :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (attr : Attr)
    -> JSIO (Maybe Attr)
  setAttributeNodeNS a b = tryJS "Element.setAttributeNodeNS" $
    Element.prim__setAttributeNodeNS (up a) b


  export
  toggleAttribute' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (qualifiedName : String)
    -> (force : Optional Bool)
    -> JSIO Bool
  toggleAttribute' a b c = tryJS "Element.toggleAttribute'" $
    Element.prim__toggleAttribute (up a) b (toFFI c)

  export
  toggleAttribute :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (qualifiedName : String)
    -> JSIO Bool
  toggleAttribute a b = tryJS "Element.toggleAttribute" $
    Element.prim__toggleAttribute (up a) b undef


  export
  webkitMatchesSelector :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Element (Types t1)}
    -> (obj : t1)
    -> (selectors : String)
    -> JSIO Bool
  webkitMatchesSelector a b = tryJS "Element.webkitMatchesSelector" $
    Element.prim__webkitMatchesSelector (up a) b



namespace Event

  public export
  AT_TARGET : Bits16
  AT_TARGET = 2


  public export
  BUBBLING_PHASE : Bits16
  BUBBLING_PHASE = 3


  public export
  CAPTURING_PHASE : Bits16
  CAPTURING_PHASE = 1


  public export
  NONE : Bits16
  NONE = 0


  export
  new' :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem EventInit (Types t2)}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO Event
  new' a b = primJS $ Event.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO Event
  new a = primJS $ Event.prim__new a undef


  export
  bubbles :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  bubbles a = tryJS "Event.bubbles" $ Event.prim__bubbles (up a)


  export
  cancelBubble :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Event (Types t)}
    -> t
    -> Attribute True Prelude.id Bool
  cancelBubble v = fromPrim
                     "Event.getcancelBubble"
                     prim__cancelBubble
                     prim__setCancelBubble
                     (v :> Event)


  export
  cancelable :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  cancelable a = tryJS "Event.cancelable" $ Event.prim__cancelable (up a)


  export
  composed :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  composed a = tryJS "Event.composed" $ Event.prim__composed (up a)


  export
  currentTarget :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe EventTarget)
  currentTarget a = tryJS "Event.currentTarget" $
    Event.prim__currentTarget (up a)


  export
  defaultPrevented :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  defaultPrevented a = tryJS "Event.defaultPrevented" $
    Event.prim__defaultPrevented (up a)


  export
  eventPhase :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO Bits16
  eventPhase a = primJS $ Event.prim__eventPhase (up a)


  export
  isTrusted :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  isTrusted a = tryJS "Event.isTrusted" $ Event.prim__isTrusted (up a)


  export
  returnValue :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Event (Types t)}
    -> t
    -> Attribute True Prelude.id Bool
  returnValue v = fromPrim
                    "Event.getreturnValue"
                    prim__returnValue
                    prim__setReturnValue
                    (v :> Event)


  export
  srcElement :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe EventTarget)
  srcElement a = tryJS "Event.srcElement" $ Event.prim__srcElement (up a)


  export
  target :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe EventTarget)
  target a = tryJS "Event.target" $ Event.prim__target (up a)


  export
  timeStamp :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  timeStamp a = primJS $ Event.prim__timeStamp (up a)


  export
  type :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO String
  type a = primJS $ Event.prim__type (up a)


  export
  composedPath :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO (Array EventTarget)
  composedPath a = primJS $ Event.prim__composedPath (up a)


  export
  initEvent' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> (type : String)
    -> (bubbles : Optional Bool)
    -> (cancelable : Optional Bool)
    -> JSIO ()
  initEvent' a b c d = primJS $
    Event.prim__initEvent (up a) b (toFFI c) (toFFI d)

  export
  initEvent :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> (type : String)
    -> JSIO ()
  initEvent a b = primJS $ Event.prim__initEvent (up a) b undef undef


  export
  preventDefault :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  preventDefault a = primJS $ Event.prim__preventDefault (up a)


  export
  stopImmediatePropagation :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  stopImmediatePropagation a = primJS $
    Event.prim__stopImmediatePropagation (up a)


  export
  stopPropagation :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Event (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  stopPropagation a = primJS $ Event.prim__stopPropagation (up a)



namespace EventTarget

  export
  new : JSIO EventTarget
  new = primJS $ EventTarget.prim__new


  export
  addEventListener' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem EventTarget (Types t1)}
    -> (obj : t1)
    -> (type : String)
    -> (callback : Maybe EventListener)
    -> (options : Optional (HSum [AddEventListenerOptions, Bool]))
    -> JSIO ()
  addEventListener' a b c d = primJS $
    EventTarget.prim__addEventListener (up a) b (toFFI c) (toFFI d)

  export
  addEventListener :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem EventTarget (Types t1)}
    -> (obj : t1)
    -> (type : String)
    -> (callback : Maybe EventListener)
    -> JSIO ()
  addEventListener a b c = primJS $
    EventTarget.prim__addEventListener (up a) b (toFFI c) undef


  export
  dispatchEvent :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem EventTarget (Types t1)}
    -> {auto 0 _ : Elem Event (Types t2)}
    -> (obj : t1)
    -> (event : t2)
    -> JSIO Bool
  dispatchEvent a b = tryJS "EventTarget.dispatchEvent" $
    EventTarget.prim__dispatchEvent (up a) (up b)


  export
  removeEventListener' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem EventTarget (Types t1)}
    -> (obj : t1)
    -> (type : String)
    -> (callback : Maybe EventListener)
    -> (options : Optional (HSum [EventListenerOptions, Bool]))
    -> JSIO ()
  removeEventListener' a b c d = primJS $
    EventTarget.prim__removeEventListener (up a) b (toFFI c) (toFFI d)

  export
  removeEventListener :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem EventTarget (Types t1)}
    -> (obj : t1)
    -> (type : String)
    -> (callback : Maybe EventListener)
    -> JSIO ()
  removeEventListener a b c = primJS $
    EventTarget.prim__removeEventListener (up a) b (toFFI c) undef



namespace HTMLCollection

  export
  length :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem HTMLCollection (Types t1)}
    -> (obj : t1)
    -> JSIO Bits32
  length a = primJS $ HTMLCollection.prim__length (up a)


  export
  item :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem HTMLCollection (Types t1)}
    -> (obj : t1)
    -> (index : Bits32)
    -> JSIO (Maybe Element)
  item a b = tryJS "HTMLCollection.item" $ HTMLCollection.prim__item (up a) b


  export
  namedItem :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem HTMLCollection (Types t1)}
    -> (obj : t1)
    -> (name : String)
    -> JSIO (Maybe Element)
  namedItem a b = tryJS "HTMLCollection.namedItem" $
    HTMLCollection.prim__namedItem (up a) b



namespace MutationObserver

  export
  new : (callback : MutationCallback) -> JSIO MutationObserver
  new a = primJS $ MutationObserver.prim__new a


  export
  disconnect : (obj : MutationObserver) -> JSIO ()
  disconnect a = primJS $ MutationObserver.prim__disconnect a


  export
  observe' :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> {auto 0 _ : Elem MutationObserverInit (Types t3)}
    -> (obj : MutationObserver)
    -> (target : t2)
    -> (options : Optional t3)
    -> JSIO ()
  observe' a b c = primJS $ MutationObserver.prim__observe a (up b) (optUp c)

  export
  observe :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : MutationObserver)
    -> (target : t2)
    -> JSIO ()
  observe a b = primJS $ MutationObserver.prim__observe a (up b) undef


  export
  takeRecords : (obj : MutationObserver) -> JSIO (Array MutationRecord)
  takeRecords a = primJS $ MutationObserver.prim__takeRecords a



namespace MutationRecord

  export
  addedNodes : (obj : MutationRecord) -> JSIO NodeList
  addedNodes a = primJS $ MutationRecord.prim__addedNodes a


  export
  attributeName : (obj : MutationRecord) -> JSIO (Maybe String)
  attributeName a = tryJS "MutationRecord.attributeName" $
    MutationRecord.prim__attributeName a


  export
  attributeNamespace : (obj : MutationRecord) -> JSIO (Maybe String)
  attributeNamespace a = tryJS "MutationRecord.attributeNamespace" $
    MutationRecord.prim__attributeNamespace a


  export
  nextSibling : (obj : MutationRecord) -> JSIO (Maybe Node)
  nextSibling a = tryJS "MutationRecord.nextSibling" $
    MutationRecord.prim__nextSibling a


  export
  oldValue : (obj : MutationRecord) -> JSIO (Maybe String)
  oldValue a = tryJS "MutationRecord.oldValue" $ MutationRecord.prim__oldValue a


  export
  previousSibling : (obj : MutationRecord) -> JSIO (Maybe Node)
  previousSibling a = tryJS "MutationRecord.previousSibling" $
    MutationRecord.prim__previousSibling a


  export
  removedNodes : (obj : MutationRecord) -> JSIO NodeList
  removedNodes a = primJS $ MutationRecord.prim__removedNodes a


  export
  target : (obj : MutationRecord) -> JSIO Node
  target a = primJS $ MutationRecord.prim__target a


  export
  type : (obj : MutationRecord) -> JSIO String
  type a = primJS $ MutationRecord.prim__type a



namespace NamedNodeMap

  export
  length : (obj : NamedNodeMap) -> JSIO Bits32
  length a = primJS $ NamedNodeMap.prim__length a


  export
  getNamedItemNS :
       (obj : NamedNodeMap)
    -> (namespace_ : Maybe String)
    -> (localName : String)
    -> JSIO (Maybe Attr)
  getNamedItemNS a b c = tryJS "NamedNodeMap.getNamedItemNS" $
    NamedNodeMap.prim__getNamedItemNS a (toFFI b) c


  export
  getNamedItem :
       (obj : NamedNodeMap)
    -> (qualifiedName : String)
    -> JSIO (Maybe Attr)
  getNamedItem a b = tryJS "NamedNodeMap.getNamedItem" $
    NamedNodeMap.prim__getNamedItem a b


  export
  item : (obj : NamedNodeMap) -> (index : Bits32) -> JSIO (Maybe Attr)
  item a b = tryJS "NamedNodeMap.item" $ NamedNodeMap.prim__item a b


  export
  removeNamedItemNS :
       (obj : NamedNodeMap)
    -> (namespace_ : Maybe String)
    -> (localName : String)
    -> JSIO Attr
  removeNamedItemNS a b c = primJS $
    NamedNodeMap.prim__removeNamedItemNS a (toFFI b) c


  export
  removeNamedItem :
       (obj : NamedNodeMap)
    -> (qualifiedName : String)
    -> JSIO Attr
  removeNamedItem a b = primJS $ NamedNodeMap.prim__removeNamedItem a b


  export
  setNamedItemNS : (obj : NamedNodeMap) -> (attr : Attr) -> JSIO (Maybe Attr)
  setNamedItemNS a b = tryJS "NamedNodeMap.setNamedItemNS" $
    NamedNodeMap.prim__setNamedItemNS a b


  export
  setNamedItem : (obj : NamedNodeMap) -> (attr : Attr) -> JSIO (Maybe Attr)
  setNamedItem a b = tryJS "NamedNodeMap.setNamedItem" $
    NamedNodeMap.prim__setNamedItem a b



namespace Node

  public export
  ATTRIBUTE_NODE : Bits16
  ATTRIBUTE_NODE = 2


  public export
  CDATA_SECTION_NODE : Bits16
  CDATA_SECTION_NODE = 4


  public export
  COMMENT_NODE : Bits16
  COMMENT_NODE = 8


  public export
  DOCUMENT_FRAGMENT_NODE : Bits16
  DOCUMENT_FRAGMENT_NODE = 11


  public export
  DOCUMENT_NODE : Bits16
  DOCUMENT_NODE = 9


  public export
  DOCUMENT_POSITION_CONTAINED_BY : Bits16
  DOCUMENT_POSITION_CONTAINED_BY = 0x10


  public export
  DOCUMENT_POSITION_CONTAINS : Bits16
  DOCUMENT_POSITION_CONTAINS = 0x8


  public export
  DOCUMENT_POSITION_DISCONNECTED : Bits16
  DOCUMENT_POSITION_DISCONNECTED = 0x1


  public export
  DOCUMENT_POSITION_FOLLOWING : Bits16
  DOCUMENT_POSITION_FOLLOWING = 0x4


  public export
  DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC : Bits16
  DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20


  public export
  DOCUMENT_POSITION_PRECEDING : Bits16
  DOCUMENT_POSITION_PRECEDING = 0x2


  public export
  DOCUMENT_TYPE_NODE : Bits16
  DOCUMENT_TYPE_NODE = 10


  public export
  ELEMENT_NODE : Bits16
  ELEMENT_NODE = 1


  public export
  ENTITY_NODE : Bits16
  ENTITY_NODE = 6


  public export
  ENTITY_REFERENCE_NODE : Bits16
  ENTITY_REFERENCE_NODE = 5


  public export
  NOTATION_NODE : Bits16
  NOTATION_NODE = 12


  public export
  PROCESSING_INSTRUCTION_NODE : Bits16
  PROCESSING_INSTRUCTION_NODE = 7


  public export
  TEXT_NODE : Bits16
  TEXT_NODE = 3


  export
  baseURI :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO String
  baseURI a = primJS $ Node.prim__baseURI (up a)


  export
  childNodes :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO NodeList
  childNodes a = primJS $ Node.prim__childNodes (up a)


  export
  firstChild :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Node)
  firstChild a = tryJS "Node.firstChild" $ Node.prim__firstChild (up a)


  export
  isConnected :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  isConnected a = tryJS "Node.isConnected" $ Node.prim__isConnected (up a)


  export
  lastChild :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Node)
  lastChild a = tryJS "Node.lastChild" $ Node.prim__lastChild (up a)


  export
  nextSibling :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Node)
  nextSibling a = tryJS "Node.nextSibling" $ Node.prim__nextSibling (up a)


  export
  nodeName :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO String
  nodeName a = primJS $ Node.prim__nodeName (up a)


  export
  nodeType :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO Bits16
  nodeType a = primJS $ Node.prim__nodeType (up a)


  export
  nodeValue :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Node (Types t)}
    -> t
    -> Attribute False Maybe String
  nodeValue v = fromNullablePrim
                  "Node.getnodeValue"
                  prim__nodeValue
                  prim__setNodeValue
                  (v :> Node)


  export
  ownerDocument :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Document)
  ownerDocument a = tryJS "Node.ownerDocument" $ Node.prim__ownerDocument (up a)


  export
  parentElement :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Element)
  parentElement a = tryJS "Node.parentElement" $ Node.prim__parentElement (up a)


  export
  parentNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Node)
  parentNode a = tryJS "Node.parentNode" $ Node.prim__parentNode (up a)


  export
  previousSibling :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Node)
  previousSibling a = tryJS "Node.previousSibling" $
    Node.prim__previousSibling (up a)


  export
  textContent :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Node (Types t)}
    -> t
    -> Attribute False Maybe String
  textContent v = fromNullablePrim
                    "Node.gettextContent"
                    prim__textContent
                    prim__setTextContent
                    (v :> Node)


  export
  appendChild :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (node : t2)
    -> JSIO Node
  appendChild a b = primJS $ Node.prim__appendChild (up a) (up b)


  export
  cloneNode' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> (deep : Optional Bool)
    -> JSIO Node
  cloneNode' a b = primJS $ Node.prim__cloneNode (up a) (toFFI b)

  export
  cloneNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO Node
  cloneNode a = primJS $ Node.prim__cloneNode (up a) undef


  export
  compareDocumentPosition :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (other : t2)
    -> JSIO Bits16
  compareDocumentPosition a b = primJS $
    Node.prim__compareDocumentPosition (up a) (up b)


  export
  contains :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (other : Maybe t2)
    -> JSIO Bool
  contains a b = tryJS "Node.contains" $ Node.prim__contains (up a) (mayUp b)


  export
  getRootNode' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> {auto 0 _ : Elem GetRootNodeOptions (Types t2)}
    -> (obj : t1)
    -> (options : Optional t2)
    -> JSIO Node
  getRootNode' a b = primJS $ Node.prim__getRootNode (up a) (optUp b)

  export
  getRootNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO Node
  getRootNode a = primJS $ Node.prim__getRootNode (up a) undef


  export
  hasChildNodes :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  hasChildNodes a = tryJS "Node.hasChildNodes" $ Node.prim__hasChildNodes (up a)


  export
  insertBefore :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> {auto 0 _ : Elem Node (Types t3)}
    -> (obj : t1)
    -> (node : t2)
    -> (child : Maybe t3)
    -> JSIO Node
  insertBefore a b c = primJS $ Node.prim__insertBefore (up a) (up b) (mayUp c)


  export
  isDefaultNamespace :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> (namespace_ : Maybe String)
    -> JSIO Bool
  isDefaultNamespace a b = tryJS "Node.isDefaultNamespace" $
    Node.prim__isDefaultNamespace (up a) (toFFI b)


  export
  isEqualNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (otherNode : Maybe t2)
    -> JSIO Bool
  isEqualNode a b = tryJS "Node.isEqualNode" $
    Node.prim__isEqualNode (up a) (mayUp b)


  export
  isSameNode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (otherNode : Maybe t2)
    -> JSIO Bool
  isSameNode a b = tryJS "Node.isSameNode" $
    Node.prim__isSameNode (up a) (mayUp b)


  export
  lookupNamespaceURI :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> (prefix_ : Maybe String)
    -> JSIO (Maybe String)
  lookupNamespaceURI a b = tryJS "Node.lookupNamespaceURI" $
    Node.prim__lookupNamespaceURI (up a) (toFFI b)


  export
  lookupPrefix :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> (namespace_ : Maybe String)
    -> JSIO (Maybe String)
  lookupPrefix a b = tryJS "Node.lookupPrefix" $
    Node.prim__lookupPrefix (up a) (toFFI b)


  export
  normalize :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  normalize a = primJS $ Node.prim__normalize (up a)


  export
  removeChild :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (child : t2)
    -> JSIO Node
  removeChild a b = primJS $ Node.prim__removeChild (up a) (up b)


  export
  replaceChild :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> {auto 0 _ : Elem Node (Types t3)}
    -> (obj : t1)
    -> (node : t2)
    -> (child : t3)
    -> JSIO Node
  replaceChild a b c = primJS $ Node.prim__replaceChild (up a) (up b) (up c)



namespace NodeIterator

  export
  filter : (obj : NodeIterator) -> JSIO (Maybe NodeFilter)
  filter a = tryJS "NodeIterator.filter" $ NodeIterator.prim__filter a


  export
  pointerBeforeReferenceNode : (obj : NodeIterator) -> JSIO Bool
  pointerBeforeReferenceNode a = tryJS "NodeIterator.pointerBeforeReferenceNode" $
    NodeIterator.prim__pointerBeforeReferenceNode a


  export
  referenceNode : (obj : NodeIterator) -> JSIO Node
  referenceNode a = primJS $ NodeIterator.prim__referenceNode a


  export
  root : (obj : NodeIterator) -> JSIO Node
  root a = primJS $ NodeIterator.prim__root a


  export
  whatToShow : (obj : NodeIterator) -> JSIO Bits32
  whatToShow a = primJS $ NodeIterator.prim__whatToShow a


  export
  detach : (obj : NodeIterator) -> JSIO ()
  detach a = primJS $ NodeIterator.prim__detach a


  export
  nextNode : (obj : NodeIterator) -> JSIO (Maybe Node)
  nextNode a = tryJS "NodeIterator.nextNode" $ NodeIterator.prim__nextNode a


  export
  previousNode : (obj : NodeIterator) -> JSIO (Maybe Node)
  previousNode a = tryJS "NodeIterator.previousNode" $
    NodeIterator.prim__previousNode a



namespace NodeList

  export
  length :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem NodeList (Types t1)}
    -> (obj : t1)
    -> JSIO Bits32
  length a = primJS $ NodeList.prim__length (up a)


  export
  item :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem NodeList (Types t1)}
    -> (obj : t1)
    -> (index : Bits32)
    -> JSIO (Maybe Node)
  item a b = tryJS "NodeList.item" $ NodeList.prim__item (up a) b



namespace Performance

  export
  timeOrigin : (obj : Performance) -> JSIO Double
  timeOrigin a = primJS $ Performance.prim__timeOrigin a


  export
  now : (obj : Performance) -> JSIO Double
  now a = primJS $ Performance.prim__now a


  export
  toJSON : (obj : Performance) -> JSIO Object
  toJSON a = primJS $ Performance.prim__toJSON a



namespace ProcessingInstruction

  export
  target : (obj : ProcessingInstruction) -> JSIO String
  target a = primJS $ ProcessingInstruction.prim__target a



namespace Range

  public export
  END_TO_END : Bits16
  END_TO_END = 2


  public export
  END_TO_START : Bits16
  END_TO_START = 3


  public export
  START_TO_END : Bits16
  START_TO_END = 1


  public export
  START_TO_START : Bits16
  START_TO_START = 0


  export
  new : JSIO Range
  new = primJS $ Range.prim__new


  export
  commonAncestorContainer : (obj : Range) -> JSIO Node
  commonAncestorContainer a = primJS $ Range.prim__commonAncestorContainer a


  export
  cloneContents : (obj : Range) -> JSIO DocumentFragment
  cloneContents a = primJS $ Range.prim__cloneContents a


  export
  cloneRange : (obj : Range) -> JSIO Range
  cloneRange a = primJS $ Range.prim__cloneRange a


  export
  collapse' : (obj : Range) -> (toStart : Optional Bool) -> JSIO ()
  collapse' a b = primJS $ Range.prim__collapse a (toFFI b)

  export
  collapse : (obj : Range) -> JSIO ()
  collapse a = primJS $ Range.prim__collapse a undef


  export
  compareBoundaryPoints :
       (obj : Range)
    -> (how : Bits16)
    -> (sourceRange : Range)
    -> JSIO Int16
  compareBoundaryPoints a b c = primJS $ Range.prim__compareBoundaryPoints a b c


  export
  comparePoint :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : Range)
    -> (node : t2)
    -> (offset : Bits32)
    -> JSIO Int16
  comparePoint a b c = primJS $ Range.prim__comparePoint a (up b) c


  export
  createContextualFragment :
       (obj : Range)
    -> (fragment : String)
    -> JSIO DocumentFragment
  createContextualFragment a b = primJS $
    Range.prim__createContextualFragment a b


  export
  deleteContents : (obj : Range) -> JSIO ()
  deleteContents a = primJS $ Range.prim__deleteContents a


  export
  detach : (obj : Range) -> JSIO ()
  detach a = primJS $ Range.prim__detach a


  export
  extractContents : (obj : Range) -> JSIO DocumentFragment
  extractContents a = primJS $ Range.prim__extractContents a


  export
  getBoundingClientRect : (obj : Range) -> JSIO DOMRect
  getBoundingClientRect a = primJS $ Range.prim__getBoundingClientRect a


  export
  getClientRects : (obj : Range) -> JSIO DOMRectList
  getClientRects a = primJS $ Range.prim__getClientRects a


  export
  insertNode :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : Range)
    -> (node : t2)
    -> JSIO ()
  insertNode a b = primJS $ Range.prim__insertNode a (up b)


  export
  intersectsNode :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : Range)
    -> (node : t2)
    -> JSIO Bool
  intersectsNode a b = tryJS "Range.intersectsNode" $
    Range.prim__intersectsNode a (up b)


  export
  isPointInRange :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : Range)
    -> (node : t2)
    -> (offset : Bits32)
    -> JSIO Bool
  isPointInRange a b c = tryJS "Range.isPointInRange" $
    Range.prim__isPointInRange a (up b) c


  export
  selectNodeContents :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : Range)
    -> (node : t2)
    -> JSIO ()
  selectNodeContents a b = primJS $ Range.prim__selectNodeContents a (up b)


  export
  selectNode :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : Range)
    -> (node : t2)
    -> JSIO ()
  selectNode a b = primJS $ Range.prim__selectNode a (up b)


  export
  setEndAfter :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : Range)
    -> (node : t2)
    -> JSIO ()
  setEndAfter a b = primJS $ Range.prim__setEndAfter a (up b)


  export
  setEndBefore :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : Range)
    -> (node : t2)
    -> JSIO ()
  setEndBefore a b = primJS $ Range.prim__setEndBefore a (up b)


  export
  setEnd :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : Range)
    -> (node : t2)
    -> (offset : Bits32)
    -> JSIO ()
  setEnd a b c = primJS $ Range.prim__setEnd a (up b) c


  export
  setStartAfter :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : Range)
    -> (node : t2)
    -> JSIO ()
  setStartAfter a b = primJS $ Range.prim__setStartAfter a (up b)


  export
  setStartBefore :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : Range)
    -> (node : t2)
    -> JSIO ()
  setStartBefore a b = primJS $ Range.prim__setStartBefore a (up b)


  export
  setStart :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : Range)
    -> (node : t2)
    -> (offset : Bits32)
    -> JSIO ()
  setStart a b c = primJS $ Range.prim__setStart a (up b) c


  export
  surroundContents :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : Range)
    -> (newParent : t2)
    -> JSIO ()
  surroundContents a b = primJS $ Range.prim__surroundContents a (up b)


  export
  toString : (obj : Range) -> JSIO String
  toString a = primJS $ Range.prim__toString a



namespace ShadowRoot

  export
  host :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ShadowRoot (Types t1)}
    -> (obj : t1)
    -> JSIO Element
  host a = primJS $ ShadowRoot.prim__host (up a)


  export
  mode :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ShadowRoot (Types t1)}
    -> (obj : t1)
    -> JSIO ShadowRootMode
  mode a = tryJS "ShadowRoot.mode" $ ShadowRoot.prim__mode (up a)


  export
  onslotchange :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ShadowRoot (Types t)}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onslotchange v = fromNullablePrim
                     "ShadowRoot.getonslotchange"
                     prim__onslotchange
                     prim__setOnslotchange
                     (v :> ShadowRoot)



namespace StaticRange

  export
  new :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem StaticRangeInit (Types t1)}
    -> (init : t1)
    -> JSIO StaticRange
  new a = primJS $ StaticRange.prim__new (up a)



namespace Text

  export
  new' : (data_ : Optional String) -> JSIO Text
  new' a = primJS $ Text.prim__new (toFFI a)

  export
  new : JSIO Text
  new = primJS $ Text.prim__new undef


  export
  wholeText :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Text (Types t1)}
    -> (obj : t1)
    -> JSIO String
  wholeText a = primJS $ Text.prim__wholeText (up a)


  export
  splitText :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Text (Types t1)}
    -> (obj : t1)
    -> (offset : Bits32)
    -> JSIO Text
  splitText a b = primJS $ Text.prim__splitText (up a) b



namespace TreeWalker

  export
  currentNode : TreeWalker -> Attribute True Prelude.id Node
  currentNode v = fromPrim
                    "TreeWalker.getcurrentNode"
                    prim__currentNode
                    prim__setCurrentNode
                    v


  export
  filter : (obj : TreeWalker) -> JSIO (Maybe NodeFilter)
  filter a = tryJS "TreeWalker.filter" $ TreeWalker.prim__filter a


  export
  root : (obj : TreeWalker) -> JSIO Node
  root a = primJS $ TreeWalker.prim__root a


  export
  whatToShow : (obj : TreeWalker) -> JSIO Bits32
  whatToShow a = primJS $ TreeWalker.prim__whatToShow a


  export
  firstChild : (obj : TreeWalker) -> JSIO (Maybe Node)
  firstChild a = tryJS "TreeWalker.firstChild" $ TreeWalker.prim__firstChild a


  export
  lastChild : (obj : TreeWalker) -> JSIO (Maybe Node)
  lastChild a = tryJS "TreeWalker.lastChild" $ TreeWalker.prim__lastChild a


  export
  nextNode : (obj : TreeWalker) -> JSIO (Maybe Node)
  nextNode a = tryJS "TreeWalker.nextNode" $ TreeWalker.prim__nextNode a


  export
  nextSibling : (obj : TreeWalker) -> JSIO (Maybe Node)
  nextSibling a = tryJS "TreeWalker.nextSibling" $
    TreeWalker.prim__nextSibling a


  export
  parentNode : (obj : TreeWalker) -> JSIO (Maybe Node)
  parentNode a = tryJS "TreeWalker.parentNode" $ TreeWalker.prim__parentNode a


  export
  previousNode : (obj : TreeWalker) -> JSIO (Maybe Node)
  previousNode a = tryJS "TreeWalker.previousNode" $
    TreeWalker.prim__previousNode a


  export
  previousSibling : (obj : TreeWalker) -> JSIO (Maybe Node)
  previousSibling a = tryJS "TreeWalker.previousSibling" $
    TreeWalker.prim__previousSibling a




namespace XMLSerializer

  export
  new : JSIO XMLSerializer
  new = primJS $ XMLSerializer.prim__new


  export
  serializeToString :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : XMLSerializer)
    -> (root : t2)
    -> JSIO String
  serializeToString a b = primJS $
    XMLSerializer.prim__serializeToString a (up b)



namespace XPathEvaluator

  export
  new : JSIO XPathEvaluator
  new = primJS $ XPathEvaluator.prim__new



namespace XPathExpression

  export
  evaluate' :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : XPathExpression)
    -> (contextNode : t2)
    -> (type : Optional Bits16)
    -> (result : Optional (Maybe XPathResult))
    -> JSIO XPathResult
  evaluate' a b c d = primJS $
    XPathExpression.prim__evaluate a (up b) (toFFI c) (toFFI d)

  export
  evaluate :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : XPathExpression)
    -> (contextNode : t2)
    -> JSIO XPathResult
  evaluate a b = primJS $ XPathExpression.prim__evaluate a (up b) undef undef



namespace XPathResult

  public export
  ANY_TYPE : Bits16
  ANY_TYPE = 0


  public export
  ANY_UNORDERED_NODE_TYPE : Bits16
  ANY_UNORDERED_NODE_TYPE = 8


  public export
  BOOLEAN_TYPE : Bits16
  BOOLEAN_TYPE = 3


  public export
  FIRST_ORDERED_NODE_TYPE : Bits16
  FIRST_ORDERED_NODE_TYPE = 9


  public export
  NUMBER_TYPE : Bits16
  NUMBER_TYPE = 1


  public export
  ORDERED_NODE_ITERATOR_TYPE : Bits16
  ORDERED_NODE_ITERATOR_TYPE = 5


  public export
  ORDERED_NODE_SNAPSHOT_TYPE : Bits16
  ORDERED_NODE_SNAPSHOT_TYPE = 7


  public export
  STRING_TYPE : Bits16
  STRING_TYPE = 2


  public export
  UNORDERED_NODE_ITERATOR_TYPE : Bits16
  UNORDERED_NODE_ITERATOR_TYPE = 4


  public export
  UNORDERED_NODE_SNAPSHOT_TYPE : Bits16
  UNORDERED_NODE_SNAPSHOT_TYPE = 6


  export
  booleanValue : (obj : XPathResult) -> JSIO Bool
  booleanValue a = tryJS "XPathResult.booleanValue" $
    XPathResult.prim__booleanValue a


  export
  invalidIteratorState : (obj : XPathResult) -> JSIO Bool
  invalidIteratorState a = tryJS "XPathResult.invalidIteratorState" $
    XPathResult.prim__invalidIteratorState a


  export
  numberValue : (obj : XPathResult) -> JSIO Double
  numberValue a = primJS $ XPathResult.prim__numberValue a


  export
  resultType : (obj : XPathResult) -> JSIO Bits16
  resultType a = primJS $ XPathResult.prim__resultType a


  export
  singleNodeValue : (obj : XPathResult) -> JSIO (Maybe Node)
  singleNodeValue a = tryJS "XPathResult.singleNodeValue" $
    XPathResult.prim__singleNodeValue a


  export
  snapshotLength : (obj : XPathResult) -> JSIO Bits32
  snapshotLength a = primJS $ XPathResult.prim__snapshotLength a


  export
  stringValue : (obj : XPathResult) -> JSIO String
  stringValue a = primJS $ XPathResult.prim__stringValue a


  export
  iterateNext : (obj : XPathResult) -> JSIO (Maybe Node)
  iterateNext a = tryJS "XPathResult.iterateNext" $
    XPathResult.prim__iterateNext a


  export
  snapshotItem : (obj : XPathResult) -> (index : Bits32) -> JSIO (Maybe Node)
  snapshotItem a b = tryJS "XPathResult.snapshotItem" $
    XPathResult.prim__snapshotItem a b




--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ChildNode

  export
  after :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ChildNode (Types t1)}
    -> (obj : t1)
    -> (nodes : List (HSum [Node, String]))
    -> JSIO ()
  after a b = primJS $ ChildNode.prim__after (up a) (toFFI b)


  export
  before :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ChildNode (Types t1)}
    -> (obj : t1)
    -> (nodes : List (HSum [Node, String]))
    -> JSIO ()
  before a b = primJS $ ChildNode.prim__before (up a) (toFFI b)


  export
  remove :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ChildNode (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  remove a = primJS $ ChildNode.prim__remove (up a)


  export
  replaceWith :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ChildNode (Types t1)}
    -> (obj : t1)
    -> (nodes : List (HSum [Node, String]))
    -> JSIO ()
  replaceWith a b = primJS $ ChildNode.prim__replaceWith (up a) (toFFI b)



namespace DocumentOrShadowRoot

  export
  styleSheets :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem DocumentOrShadowRoot (Types t1)}
    -> (obj : t1)
    -> JSIO StyleSheetList
  styleSheets a = primJS $ DocumentOrShadowRoot.prim__styleSheets (up a)



namespace InnerHTML

  export
  innerHTML :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem InnerHTML (Types t)}
    -> t
    -> Attribute True Prelude.id String
  innerHTML v = fromPrim
                  "InnerHTML.getinnerHTML"
                  prim__innerHTML
                  prim__setInnerHTML
                  (v :> InnerHTML)



namespace NonDocumentTypeChildNode

  export
  nextElementSibling :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem NonDocumentTypeChildNode (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Element)
  nextElementSibling a = tryJS "NonDocumentTypeChildNode.nextElementSibling" $
    NonDocumentTypeChildNode.prim__nextElementSibling (up a)


  export
  previousElementSibling :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem NonDocumentTypeChildNode (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Element)
  previousElementSibling a = tryJS "NonDocumentTypeChildNode.previousElementSibling" $
    NonDocumentTypeChildNode.prim__previousElementSibling (up a)



namespace NonElementParentNode

  export
  getElementById :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem NonElementParentNode (Types t1)}
    -> (obj : t1)
    -> (elementId : String)
    -> JSIO (Maybe Element)
  getElementById a b = tryJS "NonElementParentNode.getElementById" $
    NonElementParentNode.prim__getElementById (up a) b



namespace ParentNode

  export
  childElementCount :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ParentNode (Types t1)}
    -> (obj : t1)
    -> JSIO Bits32
  childElementCount a = primJS $ ParentNode.prim__childElementCount (up a)


  export
  children :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ParentNode (Types t1)}
    -> (obj : t1)
    -> JSIO HTMLCollection
  children a = primJS $ ParentNode.prim__children (up a)


  export
  firstElementChild :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ParentNode (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Element)
  firstElementChild a = tryJS "ParentNode.firstElementChild" $
    ParentNode.prim__firstElementChild (up a)


  export
  lastElementChild :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ParentNode (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Element)
  lastElementChild a = tryJS "ParentNode.lastElementChild" $
    ParentNode.prim__lastElementChild (up a)


  export
  append :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ParentNode (Types t1)}
    -> (obj : t1)
    -> (nodes : List (HSum [Node, String]))
    -> JSIO ()
  append a b = primJS $ ParentNode.prim__append (up a) (toFFI b)


  export
  prepend :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ParentNode (Types t1)}
    -> (obj : t1)
    -> (nodes : List (HSum [Node, String]))
    -> JSIO ()
  prepend a b = primJS $ ParentNode.prim__prepend (up a) (toFFI b)


  export
  querySelectorAll :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ParentNode (Types t1)}
    -> (obj : t1)
    -> (selectors : String)
    -> JSIO NodeList
  querySelectorAll a b = primJS $ ParentNode.prim__querySelectorAll (up a) b


  export
  querySelector :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ParentNode (Types t1)}
    -> (obj : t1)
    -> (selectors : String)
    -> JSIO (Maybe Element)
  querySelector a b = tryJS "ParentNode.querySelector" $
    ParentNode.prim__querySelector (up a) b


  export
  replaceChildren :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ParentNode (Types t1)}
    -> (obj : t1)
    -> (nodes : List (HSum [Node, String]))
    -> JSIO ()
  replaceChildren a b = primJS $
    ParentNode.prim__replaceChildren (up a) (toFFI b)



namespace Slottable

  export
  assignedSlot :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Slottable (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe HTMLSlotElement)
  assignedSlot a = tryJS "Slottable.assignedSlot" $
    Slottable.prim__assignedSlot (up a)



namespace XPathEvaluatorBase

  export
  createExpression' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem XPathEvaluatorBase (Types t1)}
    -> (obj : t1)
    -> (expression : String)
    -> (resolver : Optional (Maybe XPathNSResolver))
    -> JSIO XPathExpression
  createExpression' a b c = primJS $
    XPathEvaluatorBase.prim__createExpression (up a) b (toFFI c)

  export
  createExpression :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem XPathEvaluatorBase (Types t1)}
    -> (obj : t1)
    -> (expression : String)
    -> JSIO XPathExpression
  createExpression a b = primJS $
    XPathEvaluatorBase.prim__createExpression (up a) b undef


  export
  createNSResolver :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem XPathEvaluatorBase (Types t1)}
    -> {auto 0 _ : Elem Node (Types t2)}
    -> (obj : t1)
    -> (nodeResolver : t2)
    -> JSIO XPathNSResolver
  createNSResolver a b = primJS $
    XPathEvaluatorBase.prim__createNSResolver (up a) (up b)


  export
  evaluate' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem XPathEvaluatorBase (Types t1)}
    -> {auto 0 _ : Elem Node (Types t3)}
    -> (obj : t1)
    -> (expression : String)
    -> (contextNode : t3)
    -> (resolver : Optional (Maybe XPathNSResolver))
    -> (type : Optional Bits16)
    -> (result : Optional (Maybe XPathResult))
    -> JSIO XPathResult
  evaluate' a b c d e f = primJS $
    XPathEvaluatorBase.prim__evaluate
      (up a)
      b
      (up c)
      (toFFI d)
      (toFFI e)
      (toFFI f)

  export
  evaluate :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem XPathEvaluatorBase (Types t1)}
    -> {auto 0 _ : Elem Node (Types t3)}
    -> (obj : t1)
    -> (expression : String)
    -> (contextNode : t3)
    -> JSIO XPathResult
  evaluate a b c = primJS $
    XPathEvaluatorBase.prim__evaluate (up a) b (up c) undef undef undef




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AddEventListenerOptions

  export
  new' :
       (passive : Optional Bool)
    -> (once : Optional Bool)
    -> (signal : Optional AbortSignal)
    -> JSIO AddEventListenerOptions
  new' a b c = primJS $
    AddEventListenerOptions.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new : JSIO AddEventListenerOptions
  new = primJS $ AddEventListenerOptions.prim__new undef undef undef


  export
  once :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem AddEventListenerOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  once v = fromUndefOrPrim
             "AddEventListenerOptions.getonce"
             prim__once
             prim__setOnce
             False
             (v :> AddEventListenerOptions)


  export
  passive :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem AddEventListenerOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  passive v = fromUndefOrPrim
                "AddEventListenerOptions.getpassive"
                prim__passive
                prim__setPassive
                False
                (v :> AddEventListenerOptions)


  export
  signal :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem AddEventListenerOptions (Types t)}
    -> t
    -> Attribute False Optional AbortSignal
  signal v = fromUndefOrPrimNoDefault
               "AddEventListenerOptions.getsignal"
               prim__signal
               prim__setSignal
               (v :> AddEventListenerOptions)



namespace CustomEventInit

  export
  new' : (detail : Optional Any) -> JSIO CustomEventInit
  new' a = primJS $ CustomEventInit.prim__new (toFFI a)

  export
  new : JSIO CustomEventInit
  new = primJS $ CustomEventInit.prim__new undef


  export
  detail :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem CustomEventInit (Types t)}
    -> t
    -> Attribute True Optional Any
  detail v = fromUndefOrPrim
               "CustomEventInit.getdetail"
               prim__detail
               prim__setDetail
               (MkAny $ null {a = ()})
               (v :> CustomEventInit)



namespace ElementCreationOptions

  export
  new' : (is : Optional String) -> JSIO ElementCreationOptions
  new' a = primJS $ ElementCreationOptions.prim__new (toFFI a)

  export
  new : JSIO ElementCreationOptions
  new = primJS $ ElementCreationOptions.prim__new undef


  export
  is :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ElementCreationOptions (Types t)}
    -> t
    -> Attribute False Optional String
  is v = fromUndefOrPrimNoDefault
           "ElementCreationOptions.getis"
           prim__is
           prim__setIs
           (v :> ElementCreationOptions)



namespace EventInit

  export
  new' :
       (bubbles : Optional Bool)
    -> (cancelable : Optional Bool)
    -> (composed : Optional Bool)
    -> JSIO EventInit
  new' a b c = primJS $ EventInit.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new : JSIO EventInit
  new = primJS $ EventInit.prim__new undef undef undef


  export
  bubbles :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  bubbles v = fromUndefOrPrim
                "EventInit.getbubbles"
                prim__bubbles
                prim__setBubbles
                False
                (v :> EventInit)


  export
  cancelable :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  cancelable v = fromUndefOrPrim
                   "EventInit.getcancelable"
                   prim__cancelable
                   prim__setCancelable
                   False
                   (v :> EventInit)


  export
  composed :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  composed v = fromUndefOrPrim
                 "EventInit.getcomposed"
                 prim__composed
                 prim__setComposed
                 False
                 (v :> EventInit)



namespace EventListenerOptions

  export
  new' : (capture : Optional Bool) -> JSIO EventListenerOptions
  new' a = primJS $ EventListenerOptions.prim__new (toFFI a)

  export
  new : JSIO EventListenerOptions
  new = primJS $ EventListenerOptions.prim__new undef


  export
  capture :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventListenerOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  capture v = fromUndefOrPrim
                "EventListenerOptions.getcapture"
                prim__capture
                prim__setCapture
                False
                (v :> EventListenerOptions)



namespace GetRootNodeOptions

  export
  new' : (composed : Optional Bool) -> JSIO GetRootNodeOptions
  new' a = primJS $ GetRootNodeOptions.prim__new (toFFI a)

  export
  new : JSIO GetRootNodeOptions
  new = primJS $ GetRootNodeOptions.prim__new undef


  export
  composed :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem GetRootNodeOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  composed v = fromUndefOrPrim
                 "GetRootNodeOptions.getcomposed"
                 prim__composed
                 prim__setComposed
                 False
                 (v :> GetRootNodeOptions)



namespace MutationObserverInit

  export
  new' :
       (childList : Optional Bool)
    -> (attributes : Optional Bool)
    -> (characterData : Optional Bool)
    -> (subtree : Optional Bool)
    -> (attributeOldValue : Optional Bool)
    -> (characterDataOldValue : Optional Bool)
    -> (attributeFilter : Optional (Array String))
    -> JSIO MutationObserverInit
  new' a b c d e f g = primJS $
    MutationObserverInit.prim__new
      (toFFI a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)
      (toFFI g)

  export
  new : JSIO MutationObserverInit
  new = primJS $
    MutationObserverInit.prim__new undef undef undef undef undef undef undef


  export
  attributeFilter :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MutationObserverInit (Types t)}
    -> t
    -> Attribute False Optional (Array String)
  attributeFilter v = fromUndefOrPrimNoDefault
                        "MutationObserverInit.getattributeFilter"
                        prim__attributeFilter
                        prim__setAttributeFilter
                        (v :> MutationObserverInit)


  export
  attributeOldValue :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MutationObserverInit (Types t)}
    -> t
    -> Attribute False Optional Bool
  attributeOldValue v = fromUndefOrPrimNoDefault
                          "MutationObserverInit.getattributeOldValue"
                          prim__attributeOldValue
                          prim__setAttributeOldValue
                          (v :> MutationObserverInit)


  export
  attributes :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MutationObserverInit (Types t)}
    -> t
    -> Attribute False Optional Bool
  attributes v = fromUndefOrPrimNoDefault
                   "MutationObserverInit.getattributes"
                   prim__attributes
                   prim__setAttributes
                   (v :> MutationObserverInit)


  export
  characterData :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MutationObserverInit (Types t)}
    -> t
    -> Attribute False Optional Bool
  characterData v = fromUndefOrPrimNoDefault
                      "MutationObserverInit.getcharacterData"
                      prim__characterData
                      prim__setCharacterData
                      (v :> MutationObserverInit)


  export
  characterDataOldValue :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MutationObserverInit (Types t)}
    -> t
    -> Attribute False Optional Bool
  characterDataOldValue v = fromUndefOrPrimNoDefault
                              "MutationObserverInit.getcharacterDataOldValue"
                              prim__characterDataOldValue
                              prim__setCharacterDataOldValue
                              (v :> MutationObserverInit)


  export
  childList :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MutationObserverInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  childList v = fromUndefOrPrim
                  "MutationObserverInit.getchildList"
                  prim__childList
                  prim__setChildList
                  False
                  (v :> MutationObserverInit)


  export
  subtree :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MutationObserverInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  subtree v = fromUndefOrPrim
                "MutationObserverInit.getsubtree"
                prim__subtree
                prim__setSubtree
                False
                (v :> MutationObserverInit)



namespace ShadowRootInit

  export
  new' :
       (mode : ShadowRootMode)
    -> (delegatesFocus : Optional Bool)
    -> JSIO ShadowRootInit
  new' a b = primJS $ ShadowRootInit.prim__new (toFFI a) (toFFI b)

  export
  new : (mode : ShadowRootMode) -> JSIO ShadowRootInit
  new a = primJS $ ShadowRootInit.prim__new (toFFI a) undef


  export
  delegatesFocus :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ShadowRootInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  delegatesFocus v = fromUndefOrPrim
                       "ShadowRootInit.getdelegatesFocus"
                       prim__delegatesFocus
                       prim__setDelegatesFocus
                       False
                       (v :> ShadowRootInit)


  export
  mode :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ShadowRootInit (Types t)}
    -> t
    -> Attribute True Prelude.id ShadowRootMode
  mode v = fromPrim
             "ShadowRootInit.getmode"
             prim__mode
             prim__setMode
             (v :> ShadowRootInit)



namespace StaticRangeInit

  export
  new :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem Node (Types t1)}
    -> {auto 0 _ : Elem Node (Types t3)}
    -> (startContainer : t1)
    -> (startOffset : Bits32)
    -> (endContainer : t3)
    -> (endOffset : Bits32)
    -> JSIO StaticRangeInit
  new a b c d = primJS $ StaticRangeInit.prim__new (up a) b (up c) d


  export
  endContainer :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem StaticRangeInit (Types t)}
    -> t
    -> Attribute True Prelude.id Node
  endContainer v = fromPrim
                     "StaticRangeInit.getendContainer"
                     prim__endContainer
                     prim__setEndContainer
                     (v :> StaticRangeInit)


  export
  endOffset :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem StaticRangeInit (Types t)}
    -> t
    -> Attribute True Prelude.id Bits32
  endOffset v = fromPrim
                  "StaticRangeInit.getendOffset"
                  prim__endOffset
                  prim__setEndOffset
                  (v :> StaticRangeInit)


  export
  startContainer :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem StaticRangeInit (Types t)}
    -> t
    -> Attribute True Prelude.id Node
  startContainer v = fromPrim
                       "StaticRangeInit.getstartContainer"
                       prim__startContainer
                       prim__setStartContainer
                       (v :> StaticRangeInit)


  export
  startOffset :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem StaticRangeInit (Types t)}
    -> t
    -> Attribute True Prelude.id Bits32
  startOffset v = fromPrim
                    "StaticRangeInit.getstartOffset"
                    prim__startOffset
                    prim__setStartOffset
                    (v :> StaticRangeInit)




--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace EventListener

  export
  toEventListener : (Event -> IO ()) -> JSIO EventListener
  toEventListener cb = primJS $ prim__toEventListener cb



namespace MutationCallback

  export
  toMutationCallback :
       (Array MutationRecord -> MutationObserver -> IO ())
    -> JSIO MutationCallback
  toMutationCallback cb = primJS $ prim__toMutationCallback cb



namespace NodeFilter

  export
  toNodeFilter : (Node -> IO Bits16) -> JSIO NodeFilter
  toNodeFilter cb = primJS $ prim__toNodeFilter cb


  public export
  FILTER_ACCEPT : Bits16
  FILTER_ACCEPT = 1


  public export
  FILTER_REJECT : Bits16
  FILTER_REJECT = 2


  public export
  FILTER_SKIP : Bits16
  FILTER_SKIP = 3


  public export
  SHOW_ALL : Bits32
  SHOW_ALL = 0xffffffff


  public export
  SHOW_ATTRIBUTE : Bits32
  SHOW_ATTRIBUTE = 0x2


  public export
  SHOW_CDATA_SECTION : Bits32
  SHOW_CDATA_SECTION = 0x8


  public export
  SHOW_COMMENT : Bits32
  SHOW_COMMENT = 0x80


  public export
  SHOW_DOCUMENT : Bits32
  SHOW_DOCUMENT = 0x100


  public export
  SHOW_DOCUMENT_FRAGMENT : Bits32
  SHOW_DOCUMENT_FRAGMENT = 0x400


  public export
  SHOW_DOCUMENT_TYPE : Bits32
  SHOW_DOCUMENT_TYPE = 0x200


  public export
  SHOW_ELEMENT : Bits32
  SHOW_ELEMENT = 0x1


  public export
  SHOW_ENTITY : Bits32
  SHOW_ENTITY = 0x20


  public export
  SHOW_ENTITY_REFERENCE : Bits32
  SHOW_ENTITY_REFERENCE = 0x10


  public export
  SHOW_NOTATION : Bits32
  SHOW_NOTATION = 0x800


  public export
  SHOW_PROCESSING_INSTRUCTION : Bits32
  SHOW_PROCESSING_INSTRUCTION = 0x40


  public export
  SHOW_TEXT : Bits32
  SHOW_TEXT = 0x4



namespace XPathNSResolver

  export
  toXPathNSResolver :
       (Nullable String -> IO (Nullable String))
    -> JSIO XPathNSResolver
  toXPathNSResolver cb = primJS $ prim__toXPathNSResolver cb
