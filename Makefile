.SILENT:
.PHONY: vote

help:
	{ grep --extended-regexp '^[a-zA-Z0-9_-]+:.*#[[:space:]].*$$' $(MAKEFILE_LIST) || true; } \
	| awk 'BEGIN { FS = ":.*#[[:space:]]*" } { printf "\033[1;32m%-28s\033[0m%s\n", $$1, $$2 }'

vote: # run vote website using npm - dev mode (livereload + nodemon)
	./make.sh vote
