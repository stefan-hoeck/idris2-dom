export IDRIS2 ?= idris2

lib_pkg = dom.ipkg

test_pkg = test.ipkg

doc_pkg  = doc.ipkg

.PHONY: all
all: lib docs test

.PHONY: clean-install
clean-install: clean install

.PHONY: clean-install-with-src
clean-install-with-src: clean install-with-src

.PHONY: lib
lib:
	${IDRIS2} --build ${lib_pkg}

.PHONY: docs
docs:
	${IDRIS2} --build ${doc_pkg}

.PHONY: test
test:
	${IDRIS2} --build ${test_pkg} && node build/exec/runTest.js

.PHONY: install
install:
	${IDRIS2} --install ${lib_pkg}

.PHONY: install-with-src
install-with-src:
	${IDRIS2} --install-with-src ${lib_pkg}

.PHONY: clean
clean:
	${IDRIS2} --clean ${lib_pkg}
	${IDRIS2} --clean ${doc_pkg}
	${IDRIS2} --clean ${test_pkg}
	${RM} -r build

.PHONY: develop
develop:
	find -name "*.idr" | entr -d idris2 --typecheck ${lib_pkg}
