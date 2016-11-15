TARGETS := $(shell ls scripts | grep -vE 'clean|run|help')

.dapper:
	@echo Downloading dapper
	@curl -sL https://releases.rancher.com/dapper/latest/dapper-`uname -s`-`uname -m|sed 's/v7l//'` > .dapper.tmp
	@@chmod +x .dapper.tmp
	@./.dapper.tmp -v
	@mv .dapper.tmp .dapper

$(TARGETS): .dapper
	./.dapper $@

shell-bind: .dapper
	./.dapper -m bind -s

help:
	@./scripts/help

.DEFAULT_GOAL := ci

.PHONY: $(TARGETS)
