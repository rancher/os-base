TARGETS := $(shell ls scripts | grep -vE 'clean|run|help|config')

.dapper:
	@echo Downloading dapper
	@curl -sL https://releases.rancher.com/dapper/latest/dapper-`uname -s`-`uname -m|sed 's/v7l//'` > .dapper.tmp
	@@chmod +x .dapper.tmp
	@./.dapper.tmp -v
	@mv .dapper.tmp .dapper

$(TARGETS): .dapper
	./.dapper $@ 2>&1 | tee $@.log

config:
	./.dapper config
	cp dist/artifacts/os-base_amd64.tar.xz.busybox-dynamic.config config/busybox-dynamic.config
	cp dist/artifacts/os-base_amd64.tar.xz.config config/amd64/buildroot-config

shell-bind: .dapper
	./.dapper -m bind -s

help:
	@./scripts/help

.DEFAULT_GOAL := ci

.PHONY: $(TARGETS) config
