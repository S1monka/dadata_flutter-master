.PHONY: get
get:
	dart pub get

.PHONY: build_runner
build_runner: get
	dart run build_runner build --delete-conflicting-outputs

.PHONY: test
test:
	dart test

.PHONY: publish
publish:
	dart pub publish


.PHONY: format
format:
	dart format .

.PHONY: init_hooks
init_hooks:
	git config core.hooksPath .hooks
