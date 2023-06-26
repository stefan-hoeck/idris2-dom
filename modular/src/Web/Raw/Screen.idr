module Web.Raw.Screen

import JS
import Web.Types.Screen


%default total


export
%foreign "browser:lambda:x=>x.availHeight"
prim__availHeight : Screen -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.availWidth"
prim__availWidth : Screen -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.colorDepth"
prim__colorDepth : Screen -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.height"
prim__height : Screen -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.pixelDepth"
prim__pixelDepth : Screen -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.width"
prim__width : Screen -> PrimIO Int32


export
availHeight : (obj : Screen) -> JSIO Int32
availHeight a = primJS $ Screen.prim__availHeight a


export
availWidth : (obj : Screen) -> JSIO Int32
availWidth a = primJS $ Screen.prim__availWidth a


export
colorDepth : (obj : Screen) -> JSIO Bits32
colorDepth a = primJS $ Screen.prim__colorDepth a


export
height : (obj : Screen) -> JSIO Int32
height a = primJS $ Screen.prim__height a


export
pixelDepth : (obj : Screen) -> JSIO Bits32
pixelDepth a = primJS $ Screen.prim__pixelDepth a


export
width : (obj : Screen) -> JSIO Int32
width a = primJS $ Screen.prim__width a

