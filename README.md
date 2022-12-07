# idris2-dom: Extensive DOM and Web Bindings for Idris2

This library provides extensive DOM and web bindings for
writing Idris2 programs that run in the browser.

This library comes "batteries included", as quite a few utility types
and functions for interacting with the unsafe world of JavaScript
are provided via the `JS` submodules. These might eventually be moved
to their own repository, but as Idris2 is still lacking an official
package repository, it makes sense to keep this stuff in one package
for the time being.

The sources in `src/Web/Raw` and `src/Web/Internal`
have been generated automatically using
the [idris2-webidl](https://github.com/stefan-hoeck/idris2-webidl)
package, but some additional functions have been (and will be) added
manually, either for an increase in type safety or convenience or both.

A tutorial with a working example program and detailed
explanations about how the different pieces in this library fit
together can be found [here](docs/src/Tutorial.md).

Quite a bit of functionality is still missing when it comes
to external types like `Array` or `Promise`, but will be added
later on.

## Project structure

### DOM
The DOM bindings as well as the JavaScript utilities can be built
by running `idris2 --build dom.ipkg`. Given the size of the codebase,
this might take several minutes.

### JavaScript utilities
The functionality provided by the submodules of `JS` should eventually
go to its own repository. As a preparation for this change and to
speed up development of JavaScript utilities (typechecking `dom.ipkg`
is slow), package file `js.ipkg` is provided.

### Documentation
The tutorial consists of one or more literal Idris2 files to be
found at `srd/Doc`. It can be built by running `idris2 --build doc.ipkg`
and tested afterwards by loading `doc.html` in one's favorite browser.

### Tests
There is also `test.ipkg` running several Hedgehog property tests.
This should be built and run with node, as it mainly tests the
JavaScript utilities working on both JavaScript backends.

## Dependencies

Packages `dom.ipkg`, `doc.ipkg` and `js.ipkg` depend on the following packages:

* [idris2-elab-util](https://github.com/stefan-hoeck/idris2-elab-util)
* [idris2-sop](https://github.com/stefan-hoeck/idris2-sop)

The test package `test.ipkg` depends on the same libraries plus
the following:

* [idris2-pretty-show](https://github.com/stefan-hoeck/idris2-pretty-show)
* [idris2-hedgehog](https://github.com/stefan-hoeck/idris2-hedgehog)

### Misc

This libary is still evolving - as is Idris2 itself - and I try to keep up
with the latest Idris2 commits. The actual release requires Idris2, version 0.5.1.

The latest commit is daily tested to build against the current
HEAD of the Idris compiler. Since Idris2 releases are happening
rather infrequently at the moment, it is suggested to use
a package manager like [pack](https://github.com/stefan-hoeck/idris2-pack)
to install and maintain matching versions of the Idris compiler
and this library. Pack will also automatically install all
required dependencies.
