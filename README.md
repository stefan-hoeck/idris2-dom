# idris2-dom: Extensive DOM and Web Bindings for Idris2

This library provides extensive DOM and web bindings for
writing Idris2 programs that run in the browser.

This project comes "batteries included" with an additional
library for interop with unsafe world of JavaScript.

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
These have been moved to a separate library in the `js` directory.

### Documentation
The tutorial consists of one or more literal Idris2 files to be
found at `docs/src`. It can be built by running `idris2 --build docs.ipkg`
and tested afterwards by loading `docs.html` in one's favorite browser.

### Tests
There is `js/test/test.ipkg` for running several Hedgehog property tests.
This should be built and run with node, as it mainly tests the
JavaScript utilities working on both JavaScript backends.

## Dependencies

Packages `dom.ipkg`, `docs.ipkg` and `js.ipkg` depend on the following packages:

* [idris2-elab-util](https://github.com/stefan-hoeck/idris2-elab-util)
* [idris2-sop](https://github.com/stefan-hoeck/idris2-sop)

The test package `test.ipkg` depends on the same libraries plus
the following:

* [idris2-pretty-show](https://github.com/stefan-hoeck/idris2-pretty-show)
* [idris2-hedgehog](https://github.com/stefan-hoeck/idris2-hedgehog)

### Misc

It is recommended to use
[pack](https://github.com/stefan-hoeck/idris2-pack)
for building, testing, and installing the libraries provided here.
