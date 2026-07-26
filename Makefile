# DRAFT Matrix - repository maintenance commands
#
# All tools are resolved on demand via pipx/npx: nothing needs to be
# pre-installed. Run `make help` for the full list of targets.

SHELL := /bin/bash
.DEFAULT_GOAL := help

MD_FILES := $(shell find . -name '*.md' -not -path './.git/*')

# -- Tool resolution helpers (auto-install on first use, cached by pipx/npx) --

PIPX := $(shell command -v pipx 2>/dev/null || echo "python3 -m pipx")
NPX  := $(shell command -v npx 2>/dev/null)

define ensure_npx
	@if [ -z "$(NPX)" ]; then \
		echo "npx not found, install Node.js/npm first (https://nodejs.org)"; \
		exit 1; \
	fi
endef

# -- Targets ------------------------------------------------------------------

.PHONY: help
## Show this help
help:
	@echo "DRAFT Matrix - available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-14s\033[0m %s\n", $$1, $$2}'

.PHONY: license
## Check SPDX license headers (alias for spdx-check; see note below)
license: spdx-check
	@# DRAFT's SPDX blocks are written as Markdown blockquotes
	@# (> SPDX-License-Identifier: ...), which the standard `reuse lint`
	@# tool does not parse in .md files without a custom REUSE.toml
	@# comment style. `spdx-check` is the DRAFT-aware substitute and is
	@# what this target actually runs.

.PHONY: spdx-check
## Verify every tracked .md file carries minimal SPDX license information
spdx-check:
	@missing=0; \
	for f in $(MD_FILES); do \
		if ! grep -q "SPDX-License-Identifier:" "$$f"; then \
			echo "MISSING SPDX: $$f"; \
			missing=1; \
		fi; \
	done; \
	if [ $$missing -eq 0 ]; then echo "OK: all Markdown files carry an SPDX-License-Identifier."; else exit 1; fi

.PHONY: markdown
## Lint Markdown style/structure (markdownlint-cli2 via npx)
markdown:
	$(call ensure_npx)
	npx --yes markdownlint-cli2 "**/*.md" "#node_modules"

.PHONY: links
## Check for broken links (internal + external) via lychee
links:
	@$(PIPX) run --spec lychee-bin lychee $(MD_FILES) 2>/dev/null || \
		( $(call ensure_npx) && npx --yes lychee $(MD_FILES) )

.PHONY: spell
## Spell-check via codespell, ignoring DRAFT-specific vocabulary
spell:
	@$(PIPX) run codespell . \
		--skip='.git,*.lock' \
		--ignore-words-list='biopge,fmboa,draft,incarnation' \
		|| true

.PHONY: lint
## Run all checks (license, markdown, spell)
lint: license markdown spell 
	@echo "All lint targets completed."

.PHONY: all
## Run every check, including external link validation
all: lint links

.PHONY: clean
## Remove local tool caches created by this Makefile (pipx/npx keep their own global cache; nothing to remove here)
clean: 
	@echo "Nothing to clean: all tools run ephemerally via pipx/npx caches."
