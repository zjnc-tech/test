# SPDX-License-Identifier: Apache-2.0
# Copyright Authors of XenoView

##@ Default
all: 
	@echo "TODO"

ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
include $(ROOT_DIR)/Makefile.defs
include $(ROOT_DIR)/Makefile.golang

##@ Help
.PHONY: print_all_variables
print_all_variables: FORCE ##print all makefile variables
	$(foreach v, $(sort $(.VARIABLES)), \
		$(if $(filter file,$(origin $(v))), \
		$(info $(shell printf "%-20s" "$(v)")= $($(v)))) \
	)
.PHONY: help
help: FORCE ##print help
	$(call print_help_from_makefile)

.PHONY: params
params: FORCE ##print params
	$(call print_params_from_makefile)
