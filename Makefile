# DRAFT - repository maintenance commands
#
# All tools are resolved on demand via pipx/npx: nothing needs to be
# pre-installed. Run `make help` for the full list of targets.

# Environment setup
SHELL := /bin/bash
.DEFAULT_GOAL := help
MD_FILES := $(shell find . -name '*.md' -not -path './.git/*')

# Tool resolution helpers (auto-install on first use, cached by pipx/npx)
PIPX := $(shell command -v pipx 2>/dev/null || echo "python3 -m pipx")
NPX  := $(shell command -v npx 2>/dev/null)

define ensure_npx
	@if [ -z "$(NPX)" ]; then \
		echo "npx not found, install Node.js/npm first (https://nodejs.org)"; \
		exit 1; \
	fi
endef

# -- Targets ------------------------------------------------------------------

## Show this help
.PHONY: help
help:
	@echo "DRAFT - available commands:"
	@awk '/^## / {doc = substr($$0, 4); next} \
		/^$$/ {doc = ""} \
		/^[a-zA-Z_-]+:/ && doc != "" { \
			sub(/:.*/, ""); printf "  \033[36m%-14s\033[0m %s\n", $$0, doc; doc = ""}' \
		$(MAKEFILE_LIST)

## Check SPDX license headers (alias for spdx-check)
.PHONY: license
license: spdx-check
	@# DRAFT's SPDX blocks are written as Markdown blockquotes
	@# (> SPDX-License-Identifier: ...), which the standard `reuse lint`
	@# tool does not parse in .md files without a custom REUSE.toml
	@# comment style. `spdx-check` is the DRAFT-aware substitute and is
	@# what this target actually runs.

# Verify every tracked .md file carries minimal SPDX license information.
# A folder skill (AI-skills/draft-vX-Y-Z/) is covered by its own
# license/LICENSE.md: one block per folder, not one per leaf file an agent loads.
.PHONY: spdx-check
spdx-check:
	@missing=0; \
	for f in $(MD_FILES); do \
		root=$$(echo "$$f" | sed -E 's#^(\./AI-skills/draft-v[0-9-]+|\./skills/[a-z0-9-]+)/.*#\1#'); \
		if [ "$$root" != "$$f" ] && grep -q "SPDX-License-Identifier:" "$$root/license/LICENSE.md" 2>/dev/null; then \
			continue; \
		fi; \
		if ! grep -q "SPDX-License-Identifier:" "$$f"; then \
			echo "MISSING SPDX: $$f"; \
			missing=1; \
		fi; \
	done; \
	if [ $$missing -eq 0 ]; then echo "OK: all Markdown files carry an SPDX-License-Identifier."; else exit 1; fi

## Check for broken links (internal + external) via lychee
.PHONY: links
links:
	@$(PIPX) run --spec lychee-bin lychee $(MD_FILES) 2>/dev/null || \
		( $(call ensure_npx) && npx --yes lychee $(MD_FILES) )

## Run all checks (license, skills gate)
.PHONY: lint
lint: license bundle-check
	@echo "All lint targets completed."

## Run every check, including external link validation
.PHONY: all
all: lint links

## Check the public skills, then build release bundles into dist/<version>/
.PHONY: bundle
bundle:
	python3 -I scripts/bundle.py

## Check the public skills only (no build)
.PHONY: bundle-check
bundle-check:
	python3 -I scripts/bundle.py --check

## Remove local tool caches created by this Makefile (pipx/npx keep their own global cache; nothing to remove here)
.PHONY: clean
clean: 
	@echo "Nothing to clean: all tools run ephemerally via pipx/npx caches."
