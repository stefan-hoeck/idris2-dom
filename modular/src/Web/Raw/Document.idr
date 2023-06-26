module Web.Raw.Document

import JS
import Web.Types.Animation
import Web.Types.Attr
import Web.Types.CDATASection
import Web.Types.CaretPosition
import Web.Types.Comment
import Web.Types.DOMImplementation
import Web.Types.Document
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.DocumentFragment
import Web.Types.DocumentOrShadowRoot
import Web.Types.DocumentReadyState
import Web.Types.DocumentTimeline
import Web.Types.DocumentType
import Web.Types.Element
import Web.Types.ElementCreationOptions
import Web.Types.Event
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLAllCollection
import Web.Types.HTMLCollection
import Web.Types.HTMLElement
import Web.Types.HTMLHeadElement
import Web.Types.HTMLScriptElement
import Web.Types.Location
import Web.Types.Node
import Web.Types.NodeFilter
import Web.Types.NodeIterator
import Web.Types.NodeList
import Web.Types.NonElementParentNode
import Web.Types.ParentNode
import Web.Types.ProcessingInstruction
import Web.Types.Range
import Web.Types.SVGSVGElement
import Web.Types.SVGScriptElement
import Web.Types.Text
import Web.Types.TreeWalker
import Web.Types.VisibilityState
import Web.Types.XPathEvaluatorBase


%default total


export
%foreign "browser:lambda:()=> new Document()"
prim__new : PrimIO Document


export
%foreign "browser:lambda:(o,x)=>o[x]"
prim__get : Document -> String -> PrimIO Object


export
%foreign "browser:lambda:x=>x.URL"
prim__URL : Document -> PrimIO String


export
%foreign "browser:lambda:x=>x.alinkColor"
prim__alinkColor : Document -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.alinkColor = v}"
prim__setAlinkColor : Document -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.all"
prim__all : Document -> PrimIO HTMLAllCollection


export
%foreign "browser:lambda:x=>x.anchors"
prim__anchors : Document -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.applets"
prim__applets : Document -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.bgColor"
prim__bgColor : Document -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
prim__setBgColor : Document -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.body"
prim__body : Document -> PrimIO (Nullable HTMLElement)



export
%foreign "browser:lambda:(x,v)=>{x.body = v}"
prim__setBody : Document -> Nullable HTMLElement -> PrimIO ()



export
%foreign "browser:lambda:x=>x.characterSet"
prim__characterSet : Document -> PrimIO String


export
%foreign "browser:lambda:x=>x.charset"
prim__charset : Document -> PrimIO String


export
%foreign "browser:lambda:x=>x.compatMode"
prim__compatMode : Document -> PrimIO String


export
%foreign "browser:lambda:x=>x.contentType"
prim__contentType : Document -> PrimIO String


export
%foreign "browser:lambda:x=>x.cookie"
prim__cookie : Document -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.cookie = v}"
prim__setCookie : Document -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.currentScript"
prim__currentScript :
     Document
  -> PrimIO (Nullable (Union2 HTMLScriptElement SVGScriptElement))


export
%foreign "browser:lambda:x=>x.defaultView"
prim__defaultView : Document -> PrimIO (Nullable WindowProxy)


export
%foreign "browser:lambda:x=>x.designMode"
prim__designMode : Document -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.designMode = v}"
prim__setDesignMode : Document -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.dir"
prim__dir : Document -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.dir = v}"
prim__setDir : Document -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.doctype"
prim__doctype : Document -> PrimIO (Nullable DocumentType)


export
%foreign "browser:lambda:x=>x.documentElement"
prim__documentElement : Document -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:x=>x.documentURI"
prim__documentURI : Document -> PrimIO String


export
%foreign "browser:lambda:x=>x.domain"
prim__domain : Document -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.domain = v}"
prim__setDomain : Document -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.embeds"
prim__embeds : Document -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.fgColor"
prim__fgColor : Document -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.fgColor = v}"
prim__setFgColor : Document -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.forms"
prim__forms : Document -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.head"
prim__head : Document -> PrimIO (Nullable HTMLHeadElement)


export
%foreign "browser:lambda:x=>x.hidden"
prim__hidden : Document -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.images"
prim__images : Document -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.implementation"
prim__implementation : Document -> PrimIO DOMImplementation


export
%foreign "browser:lambda:x=>x.inputEncoding"
prim__inputEncoding : Document -> PrimIO String


export
%foreign "browser:lambda:x=>x.lastModified"
prim__lastModified : Document -> PrimIO String


export
%foreign "browser:lambda:x=>x.linkColor"
prim__linkColor : Document -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.linkColor = v}"
prim__setLinkColor : Document -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.links"
prim__links : Document -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.location"
prim__location : Document -> PrimIO (Nullable Location)


export
%foreign "browser:lambda:x=>x.onreadystatechange"
prim__onreadystatechange : Document -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onreadystatechange = v}"
prim__setOnreadystatechange :
     Document
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onvisibilitychange"
prim__onvisibilitychange : Document -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onvisibilitychange = v}"
prim__setOnvisibilitychange :
     Document
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.plugins"
prim__plugins : Document -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.readyState"
prim__readyState : Document -> PrimIO String


export
%foreign "browser:lambda:x=>x.referrer"
prim__referrer : Document -> PrimIO String


export
%foreign "browser:lambda:x=>x.rootElement"
prim__rootElement : Document -> PrimIO (Nullable SVGSVGElement)


export
%foreign "browser:lambda:x=>x.scripts"
prim__scripts : Document -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.scrollingElement"
prim__scrollingElement : Document -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:x=>x.timeline"
prim__timeline : Document -> PrimIO DocumentTimeline


export
%foreign "browser:lambda:x=>x.title"
prim__title : Document -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.title = v}"
prim__setTitle : Document -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.visibilityState"
prim__visibilityState : Document -> PrimIO String


export
%foreign "browser:lambda:x=>x.vlinkColor"
prim__vlinkColor : Document -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.vlinkColor = v}"
prim__setVlinkColor : Document -> String -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.adoptNode(a)"
prim__adoptNode : Document -> Node -> PrimIO Node


export
%foreign "browser:lambda:x=>x.captureEvents()"
prim__captureEvents : Document -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.caretPositionFromPoint(a,b)"
prim__caretPositionFromPoint :
     Document
  -> Double
  -> Double
  -> PrimIO (Nullable CaretPosition)


export
%foreign "browser:lambda:x=>x.clear()"
prim__clear : Document -> PrimIO ()


export
%foreign "browser:lambda:x=>x.close()"
prim__close : Document -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.createAttribute(a)"
prim__createAttribute : Document -> String -> PrimIO Attr


export
%foreign "browser:lambda:(x,a,b)=>x.createAttributeNS(a,b)"
prim__createAttributeNS : Document -> Nullable String -> String -> PrimIO Attr


export
%foreign "browser:lambda:(x,a)=>x.createCDATASection(a)"
prim__createCDATASection : Document -> String -> PrimIO CDATASection


export
%foreign "browser:lambda:(x,a)=>x.createComment(a)"
prim__createComment : Document -> String -> PrimIO Comment


export
%foreign "browser:lambda:x=>x.createDocumentFragment()"
prim__createDocumentFragment : Document -> PrimIO DocumentFragment


export
%foreign "browser:lambda:(x,a,b)=>x.createElement(a,b)"
prim__createElement :
     Document
  -> String
  -> UndefOr (Union2 String ElementCreationOptions)
  -> PrimIO Element


export
%foreign "browser:lambda:(x,a,b,c)=>x.createElementNS(a,b,c)"
prim__createElementNS :
     Document
  -> Nullable String
  -> String
  -> UndefOr (Union2 String ElementCreationOptions)
  -> PrimIO Element


export
%foreign "browser:lambda:(x,a)=>x.createEvent(a)"
prim__createEvent : Document -> String -> PrimIO Event


export
%foreign "browser:lambda:(x,a,b,c)=>x.createNodeIterator(a,b,c)"
prim__createNodeIterator :
     Document
  -> Node
  -> UndefOr Bits32
  -> UndefOr (Nullable NodeFilter)
  -> PrimIO NodeIterator


export
%foreign "browser:lambda:(x,a,b)=>x.createProcessingInstruction(a,b)"
prim__createProcessingInstruction :
     Document
  -> String
  -> String
  -> PrimIO ProcessingInstruction


export
%foreign "browser:lambda:x=>x.createRange()"
prim__createRange : Document -> PrimIO Range


export
%foreign "browser:lambda:(x,a)=>x.createTextNode(a)"
prim__createTextNode : Document -> String -> PrimIO Text


export
%foreign "browser:lambda:(x,a,b,c)=>x.createTreeWalker(a,b,c)"
prim__createTreeWalker :
     Document
  -> Node
  -> UndefOr Bits32
  -> UndefOr (Nullable NodeFilter)
  -> PrimIO TreeWalker


export
%foreign "browser:lambda:(x,a,b)=>x.elementFromPoint(a,b)"
prim__elementFromPoint :
     Document
  -> Double
  -> Double
  -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:(x,a,b)=>x.elementsFromPoint(a,b)"
prim__elementsFromPoint : Document -> Double -> Double -> PrimIO (Array Element)


export
%foreign "browser:lambda:(x,a,b,c)=>x.execCommand(a,b,c)"
prim__execCommand :
     Document
  -> String
  -> UndefOr Boolean
  -> UndefOr String
  -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.getAnimations()"
prim__getAnimations : Document -> PrimIO (Array Animation)


export
%foreign "browser:lambda:(x,a)=>x.getElementsByClassName(a)"
prim__getElementsByClassName : Document -> String -> PrimIO HTMLCollection


export
%foreign "browser:lambda:(x,a)=>x.getElementsByName(a)"
prim__getElementsByName : Document -> String -> PrimIO NodeList


export
%foreign "browser:lambda:(x,a)=>x.getElementsByTagName(a)"
prim__getElementsByTagName : Document -> String -> PrimIO HTMLCollection


export
%foreign "browser:lambda:(x,a,b)=>x.getElementsByTagNameNS(a,b)"
prim__getElementsByTagNameNS :
     Document
  -> Nullable String
  -> String
  -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.hasFocus()"
prim__hasFocus : Document -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b)=>x.importNode(a,b)"
prim__importNode : Document -> Node -> UndefOr Boolean -> PrimIO Node


export
%foreign "browser:lambda:(x,a,b)=>x.open(a,b)"
prim__open : Document -> UndefOr String -> UndefOr String -> PrimIO Document


export
%foreign "browser:lambda:(x,a,b,c)=>x.open(a,b,c)"
prim__open1 :
     Document
  -> String
  -> String
  -> String
  -> PrimIO (Nullable WindowProxy)


export
%foreign "browser:lambda:(x,a)=>x.queryCommandEnabled(a)"
prim__queryCommandEnabled : Document -> String -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.queryCommandIndeterm(a)"
prim__queryCommandIndeterm : Document -> String -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.queryCommandState(a)"
prim__queryCommandState : Document -> String -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.queryCommandSupported(a)"
prim__queryCommandSupported : Document -> String -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.queryCommandValue(a)"
prim__queryCommandValue : Document -> String -> PrimIO String


export
%foreign "browser:lambda:x=>x.releaseEvents()"
prim__releaseEvents : Document -> PrimIO ()


export
%foreign "browser:lambda:(x,va)=>x.write(...va())"
prim__write : Document -> IO (Array String) -> PrimIO ()


export
%foreign "browser:lambda:(x,va)=>x.writeln(...va())"
prim__writeln : Document -> IO (Array String) -> PrimIO ()


export
new : JSIO Document
new = primJS $ Document.prim__new


export
get :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (name : String)
  -> JSIO Object
get a b = primJS $ Document.prim__get (cast a) b


export
URL : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO String
URL a = primJS $ Document.prim__URL (cast a)


export
alinkColor : {auto _ : Cast t Document} -> t -> Attribute True Prelude.id String
alinkColor v = fromPrim
                 "Document.getalinkColor"
                 prim__alinkColor
                 prim__setAlinkColor
                 (cast {to = Document} v)


export
all : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO HTMLAllCollection
all a = primJS $ Document.prim__all (cast a)


export
anchors : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO HTMLCollection
anchors a = primJS $ Document.prim__anchors (cast a)


export
applets : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO HTMLCollection
applets a = primJS $ Document.prim__applets (cast a)


export
bgColor : {auto _ : Cast t Document} -> t -> Attribute True Prelude.id String
bgColor v = fromPrim
              "Document.getbgColor"
              prim__bgColor
              prim__setBgColor
              (cast {to = Document} v)


export
body : {auto _ : Cast t Document} -> t -> Attribute False Maybe HTMLElement
body v = fromNullablePrim
           "Document.getbody"
           prim__body
           prim__setBody
           (cast {to = Document} v)


export
characterSet : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO String
characterSet a = primJS $ Document.prim__characterSet (cast a)


export
charset : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO String
charset a = primJS $ Document.prim__charset (cast a)


export
compatMode : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO String
compatMode a = primJS $ Document.prim__compatMode (cast a)


export
contentType : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO String
contentType a = primJS $ Document.prim__contentType (cast a)


export
cookie : {auto _ : Cast t Document} -> t -> Attribute True Prelude.id String
cookie v = fromPrim
             "Document.getcookie"
             prim__cookie
             prim__setCookie
             (cast {to = Document} v)


export
currentScript :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> JSIO (Maybe (HSum [HTMLScriptElement, SVGScriptElement]))
currentScript a = tryJS "Document.currentScript" $
  Document.prim__currentScript (cast a)


export
defaultView :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> JSIO (Maybe WindowProxy)
defaultView a = tryJS "Document.defaultView" $
  Document.prim__defaultView (cast a)


export
designMode : {auto _ : Cast t Document} -> t -> Attribute True Prelude.id String
designMode v = fromPrim
                 "Document.getdesignMode"
                 prim__designMode
                 prim__setDesignMode
                 (cast {to = Document} v)


export
dir : {auto _ : Cast t Document} -> t -> Attribute True Prelude.id String
dir v = fromPrim
          "Document.getdir"
          prim__dir
          prim__setDir
          (cast {to = Document} v)


export
doctype : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO (Maybe DocumentType)
doctype a = tryJS "Document.doctype" $ Document.prim__doctype (cast a)


export
documentElement :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> JSIO (Maybe Element)
documentElement a = tryJS "Document.documentElement" $
  Document.prim__documentElement (cast a)


export
documentURI : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO String
documentURI a = primJS $ Document.prim__documentURI (cast a)


export
domain : {auto _ : Cast t Document} -> t -> Attribute True Prelude.id String
domain v = fromPrim
             "Document.getdomain"
             prim__domain
             prim__setDomain
             (cast {to = Document} v)


export
embeds : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO HTMLCollection
embeds a = primJS $ Document.prim__embeds (cast a)


export
fgColor : {auto _ : Cast t Document} -> t -> Attribute True Prelude.id String
fgColor v = fromPrim
              "Document.getfgColor"
              prim__fgColor
              prim__setFgColor
              (cast {to = Document} v)


export
forms : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO HTMLCollection
forms a = primJS $ Document.prim__forms (cast a)


export
head : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO (Maybe HTMLHeadElement)
head a = tryJS "Document.head" $ Document.prim__head (cast a)


export
hidden : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO Bool
hidden a = tryJS "Document.hidden" $ Document.prim__hidden (cast a)


export
images : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO HTMLCollection
images a = primJS $ Document.prim__images (cast a)


export
implementation_ :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> JSIO DOMImplementation
implementation_ a = primJS $ Document.prim__implementation (cast a)


export
inputEncoding : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO String
inputEncoding a = primJS $ Document.prim__inputEncoding (cast a)


export
lastModified : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO String
lastModified a = primJS $ Document.prim__lastModified (cast a)


export
linkColor : {auto _ : Cast t Document} -> t -> Attribute True Prelude.id String
linkColor v = fromPrim
                "Document.getlinkColor"
                prim__linkColor
                prim__setLinkColor
                (cast {to = Document} v)


export
links : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO HTMLCollection
links a = primJS $ Document.prim__links (cast a)


export
location : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO (Maybe Location)
location a = tryJS "Document.location" $ Document.prim__location (cast a)


export
onreadystatechange :
     {auto _ : Cast t Document}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onreadystatechange v = fromNullablePrim
                         "Document.getonreadystatechange"
                         prim__onreadystatechange
                         prim__setOnreadystatechange
                         (cast {to = Document} v)


export
onvisibilitychange :
     {auto _ : Cast t Document}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onvisibilitychange v = fromNullablePrim
                         "Document.getonvisibilitychange"
                         prim__onvisibilitychange
                         prim__setOnvisibilitychange
                         (cast {to = Document} v)


export
plugins : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO HTMLCollection
plugins a = primJS $ Document.prim__plugins (cast a)


export
readyState :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> JSIO DocumentReadyState
readyState a = tryJS "Document.readyState" $ Document.prim__readyState (cast a)


export
referrer : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO String
referrer a = primJS $ Document.prim__referrer (cast a)


export
rootElement :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> JSIO (Maybe SVGSVGElement)
rootElement a = tryJS "Document.rootElement" $
  Document.prim__rootElement (cast a)


export
scripts : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO HTMLCollection
scripts a = primJS $ Document.prim__scripts (cast a)


export
scrollingElement :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> JSIO (Maybe Element)
scrollingElement a = tryJS "Document.scrollingElement" $
  Document.prim__scrollingElement (cast a)


export
timeline : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO DocumentTimeline
timeline a = primJS $ Document.prim__timeline (cast a)


export
title : {auto _ : Cast t Document} -> t -> Attribute True Prelude.id String
title v = fromPrim
            "Document.gettitle"
            prim__title
            prim__setTitle
            (cast {to = Document} v)


export
visibilityState :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> JSIO VisibilityState
visibilityState a = tryJS "Document.visibilityState" $
  Document.prim__visibilityState (cast a)


export
vlinkColor : {auto _ : Cast t Document} -> t -> Attribute True Prelude.id String
vlinkColor v = fromPrim
                 "Document.getvlinkColor"
                 prim__vlinkColor
                 prim__setVlinkColor
                 (cast {to = Document} v)


export
adoptNode :
     {auto _ : Cast t1 Document}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (node : t2)
  -> JSIO Node
adoptNode a b = primJS $ Document.prim__adoptNode (cast a) (cast b)


export
captureEvents : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO ()
captureEvents a = primJS $ Document.prim__captureEvents (cast a)


export
caretPositionFromPoint :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> JSIO (Maybe CaretPosition)
caretPositionFromPoint a b c = tryJS "Document.caretPositionFromPoint" $
  Document.prim__caretPositionFromPoint (cast a) b c


export
clear : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO ()
clear a = primJS $ Document.prim__clear (cast a)


export
close : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO ()
close a = primJS $ Document.prim__close (cast a)


export
createAttribute :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (localName : String)
  -> JSIO Attr
createAttribute a b = primJS $ Document.prim__createAttribute (cast a) b


export
createAttributeNS :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (namespace_ : Maybe String)
  -> (qualifiedName : String)
  -> JSIO Attr
createAttributeNS a b c = primJS $
  Document.prim__createAttributeNS (cast a) (toFFI b) c


export
createCDATASection :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (data_ : String)
  -> JSIO CDATASection
createCDATASection a b = primJS $ Document.prim__createCDATASection (cast a) b


export
createComment :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (data_ : String)
  -> JSIO Comment
createComment a b = primJS $ Document.prim__createComment (cast a) b


export
createDocumentFragment :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> JSIO DocumentFragment
createDocumentFragment a = primJS $
  Document.prim__createDocumentFragment (cast a)


export
createElement' :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (localName : String)
  -> (options : Optional (HSum [String, ElementCreationOptions]))
  -> JSIO Element
createElement' a b c = primJS $
  Document.prim__createElement (cast a) b (toFFI c)

export
createElement :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (localName : String)
  -> JSIO Element
createElement a b = primJS $ Document.prim__createElement (cast a) b undef


export
createElementNS' :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (namespace_ : Maybe String)
  -> (qualifiedName : String)
  -> (options : Optional (HSum [String, ElementCreationOptions]))
  -> JSIO Element
createElementNS' a b c d = primJS $
  Document.prim__createElementNS (cast a) (toFFI b) c (toFFI d)

export
createElementNS :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (namespace_ : Maybe String)
  -> (qualifiedName : String)
  -> JSIO Element
createElementNS a b c = primJS $
  Document.prim__createElementNS (cast a) (toFFI b) c undef


export
createEvent :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (interface_ : String)
  -> JSIO Event
createEvent a b = primJS $ Document.prim__createEvent (cast a) b


export
createNodeIterator' :
     {auto _ : Cast t1 Document}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (root : t2)
  -> (whatToShow : Optional Bits32)
  -> (filter : Optional (Maybe NodeFilter))
  -> JSIO NodeIterator
createNodeIterator' a b c d = primJS $
  Document.prim__createNodeIterator (cast a) (cast b) (toFFI c) (toFFI d)

export
createNodeIterator :
     {auto _ : Cast t1 Document}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (root : t2)
  -> JSIO NodeIterator
createNodeIterator a b = primJS $
  Document.prim__createNodeIterator (cast a) (cast b) undef undef


export
createProcessingInstruction :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (target : String)
  -> (data_ : String)
  -> JSIO ProcessingInstruction
createProcessingInstruction a b c = primJS $
  Document.prim__createProcessingInstruction (cast a) b c


export
createRange : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO Range
createRange a = primJS $ Document.prim__createRange (cast a)


export
createTextNode :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (data_ : String)
  -> JSIO Text
createTextNode a b = primJS $ Document.prim__createTextNode (cast a) b


export
createTreeWalker' :
     {auto _ : Cast t1 Document}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (root : t2)
  -> (whatToShow : Optional Bits32)
  -> (filter : Optional (Maybe NodeFilter))
  -> JSIO TreeWalker
createTreeWalker' a b c d = primJS $
  Document.prim__createTreeWalker (cast a) (cast b) (toFFI c) (toFFI d)

export
createTreeWalker :
     {auto _ : Cast t1 Document}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (root : t2)
  -> JSIO TreeWalker
createTreeWalker a b = primJS $
  Document.prim__createTreeWalker (cast a) (cast b) undef undef


export
elementFromPoint :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> JSIO (Maybe Element)
elementFromPoint a b c = tryJS "Document.elementFromPoint" $
  Document.prim__elementFromPoint (cast a) b c


export
elementsFromPoint :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> JSIO (Array Element)
elementsFromPoint a b c = primJS $ Document.prim__elementsFromPoint (cast a) b c


export
execCommand' :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (commandId : String)
  -> (showUI : Optional Bool)
  -> (value : Optional String)
  -> JSIO Bool
execCommand' a b c d = tryJS "Document.execCommand'" $
  Document.prim__execCommand (cast a) b (toFFI c) (toFFI d)

export
execCommand :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (commandId : String)
  -> JSIO Bool
execCommand a b = tryJS "Document.execCommand" $
  Document.prim__execCommand (cast a) b undef undef


export
getAnimations :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> JSIO (Array Animation)
getAnimations a = primJS $ Document.prim__getAnimations (cast a)


export
getElementsByClassName :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (classNames : String)
  -> JSIO HTMLCollection
getElementsByClassName a b = primJS $
  Document.prim__getElementsByClassName (cast a) b


export
getElementsByName :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (elementName : String)
  -> JSIO NodeList
getElementsByName a b = primJS $ Document.prim__getElementsByName (cast a) b


export
getElementsByTagName :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (qualifiedName : String)
  -> JSIO HTMLCollection
getElementsByTagName a b = primJS $
  Document.prim__getElementsByTagName (cast a) b


export
getElementsByTagNameNS :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (namespace_ : Maybe String)
  -> (localName : String)
  -> JSIO HTMLCollection
getElementsByTagNameNS a b c = primJS $
  Document.prim__getElementsByTagNameNS (cast a) (toFFI b) c


export
hasFocus : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO Bool
hasFocus a = tryJS "Document.hasFocus" $ Document.prim__hasFocus (cast a)


export
importNode' :
     {auto _ : Cast t1 Document}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (node : t2)
  -> (deep : Optional Bool)
  -> JSIO Node
importNode' a b c = primJS $
  Document.prim__importNode (cast a) (cast b) (toFFI c)

export
importNode :
     {auto _ : Cast t1 Document}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (node : t2)
  -> JSIO Node
importNode a b = primJS $ Document.prim__importNode (cast a) (cast b) undef


export
open' :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (unused1 : Optional String)
  -> (unused2 : Optional String)
  -> JSIO Document
open' a b c = primJS $ Document.prim__open (cast a) (toFFI b) (toFFI c)

export
open_ : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO Document
open_ a = primJS $ Document.prim__open (cast a) undef undef


export
open1 :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (url : String)
  -> (name : String)
  -> (features : String)
  -> JSIO (Maybe WindowProxy)
open1 a b c d = tryJS "Document.open1" $ Document.prim__open1 (cast a) b c d


export
queryCommandEnabled :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (commandId : String)
  -> JSIO Bool
queryCommandEnabled a b = tryJS "Document.queryCommandEnabled" $
  Document.prim__queryCommandEnabled (cast a) b


export
queryCommandIndeterm :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (commandId : String)
  -> JSIO Bool
queryCommandIndeterm a b = tryJS "Document.queryCommandIndeterm" $
  Document.prim__queryCommandIndeterm (cast a) b


export
queryCommandState :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (commandId : String)
  -> JSIO Bool
queryCommandState a b = tryJS "Document.queryCommandState" $
  Document.prim__queryCommandState (cast a) b


export
queryCommandSupported :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (commandId : String)
  -> JSIO Bool
queryCommandSupported a b = tryJS "Document.queryCommandSupported" $
  Document.prim__queryCommandSupported (cast a) b


export
queryCommandValue :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (commandId : String)
  -> JSIO String
queryCommandValue a b = primJS $ Document.prim__queryCommandValue (cast a) b


export
releaseEvents : {auto _ : Cast t1 Document} -> (obj : t1) -> JSIO ()
releaseEvents a = primJS $ Document.prim__releaseEvents (cast a)


export
write :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (text : List String)
  -> JSIO ()
write a b = primJS $ Document.prim__write (cast a) (toFFI b)


export
writeln :
     {auto _ : Cast t1 Document}
  -> (obj : t1)
  -> (text : List String)
  -> JSIO ()
writeln a b = primJS $ Document.prim__writeln (cast a) (toFFI b)

