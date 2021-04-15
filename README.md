# idris2-dom

This library provides extensive DOM and web bindings for
writing Idris2 programs that run in the browser.

This library comes "batteries included", as quite a few utility types
and functions for interacting with the unsafe world of Javascript
are provided via the `JS` submodules. These might be eventually moved
to their own library, but as Idris2 is still lacking an official
package repository, it makes sense to keep this stuff in one package
for the time being.

The sources in `src/Web/Raw` and `src/Web/Internal`
have been generated automatically using
the [idris2-webidl](https://github.com/stefan-hoeck/idris2-webidl)
package, but some additional functions have been (and will be) added
manually, either for an increase in type safety or convenience or both.

A tutorial with a working example program and detailed
explanations about how the different pieces in this library fit
together can be found [here](src/Doc/Tutorial.md).

Quite a bit of functionality is still missing when it comes
to external types like `Array` or `Promise`, but will be added
later on.


### Dependencies

  * [idris2-elab-util](https://github.com/stefan-hoeck/idris2-elab-util)
  * [idris2-sop](https://github.com/stefan-hoeck/idris2-sop)

This libary is still evolving - as is Idris2 itself - and I try to keep up
with the latest Idris2 commits. The actual commit has been built with
Idris2 commit 52af4bf3c7a5094503b11603220974f39b9c1352.
