module Web.Raw.Element

import JS
import Web.Types.Animatable
import Web.Types.Attr
import Web.Types.CSSPseudoElement
import Web.Types.CheckVisibilityOptions
import Web.Types.ChildNode
import Web.Types.DOMRect
import Web.Types.DOMRectList
import Web.Types.DOMTokenList
import Web.Types.Element
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.HTMLCollection
import Web.Types.InnerHTML
import Web.Types.NamedNodeMap
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.ScrollIntoViewOptions
import Web.Types.ScrollToOptions
import Web.Types.ShadowRoot
import Web.Types.ShadowRootInit
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.attributes"
prim__attributes : Element -> PrimIO NamedNodeMap


export
%foreign "browser:lambda:x=>x.classList"
prim__classList : Element -> PrimIO DOMTokenList


export
%foreign "browser:lambda:x=>x.className"
prim__className : Element -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.className = v}"
prim__setClassName : Element -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.clientHeight"
prim__clientHeight : Element -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.clientLeft"
prim__clientLeft : Element -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.clientTop"
prim__clientTop : Element -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.clientWidth"
prim__clientWidth : Element -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.id"
prim__id : Element -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.id = v}"
prim__setId : Element -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.localName"
prim__localName : Element -> PrimIO String


export
%foreign "browser:lambda:x=>x.namespaceURI"
prim__namespaceURI : Element -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.outerHTML"
prim__outerHTML : Element -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.outerHTML = v}"
prim__setOuterHTML : Element -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.prefix"
prim__prefix : Element -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.scrollHeight"
prim__scrollHeight : Element -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.scrollLeft"
prim__scrollLeft : Element -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.scrollLeft = v}"
prim__setScrollLeft : Element -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.scrollTop"
prim__scrollTop : Element -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.scrollTop = v}"
prim__setScrollTop : Element -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.scrollWidth"
prim__scrollWidth : Element -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.shadowRoot"
prim__shadowRoot : Element -> PrimIO (Nullable ShadowRoot)


export
%foreign "browser:lambda:x=>x.slot"
prim__slot : Element -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.slot = v}"
prim__setSlot : Element -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.tagName"
prim__tagName : Element -> PrimIO String


export
%foreign "browser:lambda:(x,a)=>x.attachShadow(a)"
prim__attachShadow : Element -> ShadowRootInit -> PrimIO ShadowRoot


export
%foreign "browser:lambda:(x,a)=>x.checkVisibility(a)"
prim__checkVisibility :
     Element
  -> UndefOr CheckVisibilityOptions
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.closest(a)"
prim__closest : Element -> String -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:(x,a)=>x.getAttribute(a)"
prim__getAttribute : Element -> String -> PrimIO (Nullable String)


export
%foreign "browser:lambda:(x,a,b)=>x.getAttributeNS(a,b)"
prim__getAttributeNS :
     Element
  -> Nullable String
  -> String
  -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.getAttributeNames()"
prim__getAttributeNames : Element -> PrimIO (Array String)


export
%foreign "browser:lambda:(x,a)=>x.getAttributeNode(a)"
prim__getAttributeNode : Element -> String -> PrimIO (Nullable Attr)


export
%foreign "browser:lambda:(x,a,b)=>x.getAttributeNodeNS(a,b)"
prim__getAttributeNodeNS :
     Element
  -> Nullable String
  -> String
  -> PrimIO (Nullable Attr)


export
%foreign "browser:lambda:x=>x.getBoundingClientRect()"
prim__getBoundingClientRect : Element -> PrimIO DOMRect


export
%foreign "browser:lambda:x=>x.getClientRects()"
prim__getClientRects : Element -> PrimIO DOMRectList


export
%foreign "browser:lambda:(x,a)=>x.getElementsByClassName(a)"
prim__getElementsByClassName : Element -> String -> PrimIO HTMLCollection


export
%foreign "browser:lambda:(x,a)=>x.getElementsByTagName(a)"
prim__getElementsByTagName : Element -> String -> PrimIO HTMLCollection


export
%foreign "browser:lambda:(x,a,b)=>x.getElementsByTagNameNS(a,b)"
prim__getElementsByTagNameNS :
     Element
  -> Nullable String
  -> String
  -> PrimIO HTMLCollection


export
%foreign "browser:lambda:(x,a)=>x.hasAttribute(a)"
prim__hasAttribute : Element -> String -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b)=>x.hasAttributeNS(a,b)"
prim__hasAttributeNS : Element -> Nullable String -> String -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.hasAttributes()"
prim__hasAttributes : Element -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b)=>x.insertAdjacentElement(a,b)"
prim__insertAdjacentElement :
     Element
  -> String
  -> Element
  -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:(x,a,b)=>x.insertAdjacentHTML(a,b)"
prim__insertAdjacentHTML : Element -> String -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.insertAdjacentText(a,b)"
prim__insertAdjacentText : Element -> String -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.matches(a)"
prim__matches : Element -> String -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.pseudo(a)"
prim__pseudo : Element -> String -> PrimIO (Nullable CSSPseudoElement)


export
%foreign "browser:lambda:(x,a)=>x.removeAttribute(a)"
prim__removeAttribute : Element -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.removeAttributeNS(a,b)"
prim__removeAttributeNS : Element -> Nullable String -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.removeAttributeNode(a)"
prim__removeAttributeNode : Element -> Attr -> PrimIO Attr


export
%foreign "browser:lambda:(x,a)=>x.scrollBy(a)"
prim__scrollBy : Element -> UndefOr ScrollToOptions -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.scrollBy(a,b)"
prim__scrollBy1 : Element -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.scroll(a)"
prim__scroll : Element -> UndefOr ScrollToOptions -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.scroll(a,b)"
prim__scroll1 : Element -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.scrollIntoView(a)"
prim__scrollIntoView :
     Element
  -> UndefOr (Union2 Boolean ScrollIntoViewOptions)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.scrollTo(a)"
prim__scrollTo : Element -> UndefOr ScrollToOptions -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.scrollTo(a,b)"
prim__scrollTo1 : Element -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.setAttribute(a,b)"
prim__setAttribute : Element -> String -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.setAttributeNS(a,b,c)"
prim__setAttributeNS :
     Element
  -> Nullable String
  -> String
  -> String
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.setAttributeNode(a)"
prim__setAttributeNode : Element -> Attr -> PrimIO (Nullable Attr)


export
%foreign "browser:lambda:(x,a)=>x.setAttributeNodeNS(a)"
prim__setAttributeNodeNS : Element -> Attr -> PrimIO (Nullable Attr)


export
%foreign "browser:lambda:(x,a,b)=>x.toggleAttribute(a,b)"
prim__toggleAttribute : Element -> String -> UndefOr Boolean -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.webkitMatchesSelector(a)"
prim__webkitMatchesSelector : Element -> String -> PrimIO Boolean


export
attributes : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO NamedNodeMap
attributes a = primJS $ Element.prim__attributes (cast a)


export
classList : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO DOMTokenList
classList a = primJS $ Element.prim__classList (cast a)


export
className : {auto _ : Cast t Element} -> t -> Attribute True Prelude.id String
className v = fromPrim
                "Element.getclassName"
                prim__className
                prim__setClassName
                (cast {to = Element} v)


export
clientHeight : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO Int32
clientHeight a = primJS $ Element.prim__clientHeight (cast a)


export
clientLeft : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO Int32
clientLeft a = primJS $ Element.prim__clientLeft (cast a)


export
clientTop : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO Int32
clientTop a = primJS $ Element.prim__clientTop (cast a)


export
clientWidth : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO Int32
clientWidth a = primJS $ Element.prim__clientWidth (cast a)


export
id : {auto _ : Cast t Element} -> t -> Attribute True Prelude.id String
id v = fromPrim "Element.getid" prim__id prim__setId (cast {to = Element} v)


export
localName : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO String
localName a = primJS $ Element.prim__localName (cast a)


export
namespaceURI : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO (Maybe String)
namespaceURI a = tryJS "Element.namespaceURI" $
  Element.prim__namespaceURI (cast a)


export
outerHTML : {auto _ : Cast t Element} -> t -> Attribute True Prelude.id String
outerHTML v = fromPrim
                "Element.getouterHTML"
                prim__outerHTML
                prim__setOuterHTML
                (cast {to = Element} v)


export
prefix_ : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO (Maybe String)
prefix_ a = tryJS "Element.prefix_" $ Element.prim__prefix (cast a)


export
scrollHeight : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO Int32
scrollHeight a = primJS $ Element.prim__scrollHeight (cast a)


export
scrollLeft : {auto _ : Cast t Element} -> t -> Attribute True Prelude.id Double
scrollLeft v = fromPrim
                 "Element.getscrollLeft"
                 prim__scrollLeft
                 prim__setScrollLeft
                 (cast {to = Element} v)


export
scrollTop : {auto _ : Cast t Element} -> t -> Attribute True Prelude.id Double
scrollTop v = fromPrim
                "Element.getscrollTop"
                prim__scrollTop
                prim__setScrollTop
                (cast {to = Element} v)


export
scrollWidth : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO Int32
scrollWidth a = primJS $ Element.prim__scrollWidth (cast a)


export
shadowRoot : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO (Maybe ShadowRoot)
shadowRoot a = tryJS "Element.shadowRoot" $ Element.prim__shadowRoot (cast a)


export
slot : {auto _ : Cast t Element} -> t -> Attribute True Prelude.id String
slot v = fromPrim
           "Element.getslot"
           prim__slot
           prim__setSlot
           (cast {to = Element} v)


export
tagName : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO String
tagName a = primJS $ Element.prim__tagName (cast a)


export
attachShadow :
     {auto _ : Cast t1 Element}
  -> {auto _ : Cast t2 ShadowRootInit}
  -> (obj : t1)
  -> (init : t2)
  -> JSIO ShadowRoot
attachShadow a b = primJS $ Element.prim__attachShadow (cast a) (cast b)


export
checkVisibility' :
     {auto _ : Cast t1 Element}
  -> {auto _ : Cast t2 CheckVisibilityOptions}
  -> (obj : t1)
  -> (options : Optional t2)
  -> JSIO Bool
checkVisibility' a b = tryJS "Element.checkVisibility'" $
  Element.prim__checkVisibility (cast a) (optUp b)

export
checkVisibility : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO Bool
checkVisibility a = tryJS "Element.checkVisibility" $
  Element.prim__checkVisibility (cast a) undef


export
closest :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (selectors : String)
  -> JSIO (Maybe Element)
closest a b = tryJS "Element.closest" $ Element.prim__closest (cast a) b


export
getAttribute :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (qualifiedName : String)
  -> JSIO (Maybe String)
getAttribute a b = tryJS "Element.getAttribute" $
  Element.prim__getAttribute (cast a) b


export
getAttributeNS :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (namespace_ : Maybe String)
  -> (localName : String)
  -> JSIO (Maybe String)
getAttributeNS a b c = tryJS "Element.getAttributeNS" $
  Element.prim__getAttributeNS (cast a) (toFFI b) c


export
getAttributeNames :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> JSIO (Array String)
getAttributeNames a = primJS $ Element.prim__getAttributeNames (cast a)


export
getAttributeNode :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (qualifiedName : String)
  -> JSIO (Maybe Attr)
getAttributeNode a b = tryJS "Element.getAttributeNode" $
  Element.prim__getAttributeNode (cast a) b


export
getAttributeNodeNS :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (namespace_ : Maybe String)
  -> (localName : String)
  -> JSIO (Maybe Attr)
getAttributeNodeNS a b c = tryJS "Element.getAttributeNodeNS" $
  Element.prim__getAttributeNodeNS (cast a) (toFFI b) c


export
getBoundingClientRect : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO DOMRect
getBoundingClientRect a = primJS $ Element.prim__getBoundingClientRect (cast a)


export
getClientRects : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO DOMRectList
getClientRects a = primJS $ Element.prim__getClientRects (cast a)


export
getElementsByClassName :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (classNames : String)
  -> JSIO HTMLCollection
getElementsByClassName a b = primJS $
  Element.prim__getElementsByClassName (cast a) b


export
getElementsByTagName :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (qualifiedName : String)
  -> JSIO HTMLCollection
getElementsByTagName a b = primJS $
  Element.prim__getElementsByTagName (cast a) b


export
getElementsByTagNameNS :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (namespace_ : Maybe String)
  -> (localName : String)
  -> JSIO HTMLCollection
getElementsByTagNameNS a b c = primJS $
  Element.prim__getElementsByTagNameNS (cast a) (toFFI b) c


export
hasAttribute :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (qualifiedName : String)
  -> JSIO Bool
hasAttribute a b = tryJS "Element.hasAttribute" $
  Element.prim__hasAttribute (cast a) b


export
hasAttributeNS :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (namespace_ : Maybe String)
  -> (localName : String)
  -> JSIO Bool
hasAttributeNS a b c = tryJS "Element.hasAttributeNS" $
  Element.prim__hasAttributeNS (cast a) (toFFI b) c


export
hasAttributes : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO Bool
hasAttributes a = tryJS "Element.hasAttributes" $
  Element.prim__hasAttributes (cast a)


export
insertAdjacentElement :
     {auto _ : Cast t1 Element}
  -> {auto _ : Cast t3 Element}
  -> (obj : t1)
  -> (where_ : String)
  -> (element : t3)
  -> JSIO (Maybe Element)
insertAdjacentElement a b c = tryJS "Element.insertAdjacentElement" $
  Element.prim__insertAdjacentElement (cast a) b (cast c)


export
insertAdjacentHTML :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (position : String)
  -> (text : String)
  -> JSIO ()
insertAdjacentHTML a b c = primJS $
  Element.prim__insertAdjacentHTML (cast a) b c


export
insertAdjacentText :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (where_ : String)
  -> (data_ : String)
  -> JSIO ()
insertAdjacentText a b c = primJS $
  Element.prim__insertAdjacentText (cast a) b c


export
matches :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (selectors : String)
  -> JSIO Bool
matches a b = tryJS "Element.matches" $ Element.prim__matches (cast a) b


export
pseudo :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (type : String)
  -> JSIO (Maybe CSSPseudoElement)
pseudo a b = tryJS "Element.pseudo" $ Element.prim__pseudo (cast a) b


export
removeAttribute :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (qualifiedName : String)
  -> JSIO ()
removeAttribute a b = primJS $ Element.prim__removeAttribute (cast a) b


export
removeAttributeNS :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (namespace_ : Maybe String)
  -> (localName : String)
  -> JSIO ()
removeAttributeNS a b c = primJS $
  Element.prim__removeAttributeNS (cast a) (toFFI b) c


export
removeAttributeNode :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (attr : Attr)
  -> JSIO Attr
removeAttributeNode a b = primJS $ Element.prim__removeAttributeNode (cast a) b


export
scrollBy' :
     {auto _ : Cast t1 Element}
  -> {auto _ : Cast t2 ScrollToOptions}
  -> (obj : t1)
  -> (options : Optional t2)
  -> JSIO ()
scrollBy' a b = primJS $ Element.prim__scrollBy (cast a) (optUp b)

export
scrollBy : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO ()
scrollBy a = primJS $ Element.prim__scrollBy (cast a) undef


export
scrollBy1 :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> JSIO ()
scrollBy1 a b c = primJS $ Element.prim__scrollBy1 (cast a) b c


export
scroll' :
     {auto _ : Cast t1 Element}
  -> {auto _ : Cast t2 ScrollToOptions}
  -> (obj : t1)
  -> (options : Optional t2)
  -> JSIO ()
scroll' a b = primJS $ Element.prim__scroll (cast a) (optUp b)

export
scroll : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO ()
scroll a = primJS $ Element.prim__scroll (cast a) undef


export
scroll1 :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> JSIO ()
scroll1 a b c = primJS $ Element.prim__scroll1 (cast a) b c


export
scrollIntoView' :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (arg : Optional (HSum [Bool, ScrollIntoViewOptions]))
  -> JSIO ()
scrollIntoView' a b = primJS $ Element.prim__scrollIntoView (cast a) (toFFI b)

export
scrollIntoView : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO ()
scrollIntoView a = primJS $ Element.prim__scrollIntoView (cast a) undef


export
scrollTo' :
     {auto _ : Cast t1 Element}
  -> {auto _ : Cast t2 ScrollToOptions}
  -> (obj : t1)
  -> (options : Optional t2)
  -> JSIO ()
scrollTo' a b = primJS $ Element.prim__scrollTo (cast a) (optUp b)

export
scrollTo : {auto _ : Cast t1 Element} -> (obj : t1) -> JSIO ()
scrollTo a = primJS $ Element.prim__scrollTo (cast a) undef


export
scrollTo1 :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> JSIO ()
scrollTo1 a b c = primJS $ Element.prim__scrollTo1 (cast a) b c


export
setAttribute :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (qualifiedName : String)
  -> (value : String)
  -> JSIO ()
setAttribute a b c = primJS $ Element.prim__setAttribute (cast a) b c


export
setAttributeNS :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (namespace_ : Maybe String)
  -> (qualifiedName : String)
  -> (value : String)
  -> JSIO ()
setAttributeNS a b c d = primJS $
  Element.prim__setAttributeNS (cast a) (toFFI b) c d


export
setAttributeNode :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (attr : Attr)
  -> JSIO (Maybe Attr)
setAttributeNode a b = tryJS "Element.setAttributeNode" $
  Element.prim__setAttributeNode (cast a) b


export
setAttributeNodeNS :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (attr : Attr)
  -> JSIO (Maybe Attr)
setAttributeNodeNS a b = tryJS "Element.setAttributeNodeNS" $
  Element.prim__setAttributeNodeNS (cast a) b


export
toggleAttribute' :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (qualifiedName : String)
  -> (force : Optional Bool)
  -> JSIO Bool
toggleAttribute' a b c = tryJS "Element.toggleAttribute'" $
  Element.prim__toggleAttribute (cast a) b (toFFI c)

export
toggleAttribute :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (qualifiedName : String)
  -> JSIO Bool
toggleAttribute a b = tryJS "Element.toggleAttribute" $
  Element.prim__toggleAttribute (cast a) b undef


export
webkitMatchesSelector :
     {auto _ : Cast t1 Element}
  -> (obj : t1)
  -> (selectors : String)
  -> JSIO Bool
webkitMatchesSelector a b = tryJS "Element.webkitMatchesSelector" $
  Element.prim__webkitMatchesSelector (cast a) b

