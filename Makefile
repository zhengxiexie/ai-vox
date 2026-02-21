# ai-vox Makefile
# Install voice definitions for AI coding assistants

PREFIX    ?= $(HOME)/.ai-vox
TONES_DIR  = $(PREFIX)/tones
REPO_DIR   = $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

.PHONY: install install-claude install-opencode install-warp uninstall list help

help: ## Show this help
	@echo "ai-vox — AI personality voices"
	@echo ""
	@echo "Usage:"
	@echo "  make install                Install tones to ~/.ai-vox/tones/"
	@echo "  make install-claude  PROJECT=.  Install for Claude Code (project-level)"
	@echo "  make install-opencode          Install for OpenCode"
	@echo "  make install-warp    PROJECT=.  Install for Warp (project-level)"
	@echo "  make uninstall                 Remove ~/.ai-vox/"
	@echo "  make list                      List installed voices"
	@echo ""
	@echo "Options:"
	@echo "  PREFIX=~/.ai-vox    Override install prefix"
	@echo "  PROJECT=/path       Target project directory (for claude/warp)"

# --- Core ---

install: ## Install tones to ~/.ai-vox/tones/
	@mkdir -p $(TONES_DIR)
	@cp $(REPO_DIR)tones/*.md $(TONES_DIR)/
	@echo "✓ Installed $$(ls $(TONES_DIR)/*.md | wc -l | tr -d ' ') voices to $(TONES_DIR)/"

# --- Platform targets ---

install-claude: install ## Install for Claude Code (requires PROJECT=<path>)
ifndef PROJECT
	$(error Usage: make install-claude PROJECT=/path/to/your/project)
endif
	@mkdir -p $(PROJECT)/.claude/commands
	@cp $(REPO_DIR)integrations/claude/commands/vox.md $(PROJECT)/.claude/commands/vox.md
	@echo "✓ Installed /vox command to $(PROJECT)/.claude/commands/vox.md"
	@echo "  Done! Use /vox commands in Claude Code."

OPENCODE_CONFIG = $(HOME)/.config/opencode/opencode.json
VOX_TEMPLATE = Read and follow ~/.ai-vox/tones/$$ARGUMENTS.md as your voice personality. If $$ARGUMENTS is list, list files in ~/.ai-vox/tones/. If reset, drop voice personality.

install-opencode: install ## Install for OpenCode
	@mkdir -p $(HOME)/.config/opencode/rules
	@mkdir -p $(HOME)/.config/opencode/commands
	@cp $(REPO_DIR)integrations/opencode/instructions.md $(HOME)/.config/opencode/rules/vox.md
	@cp $(REPO_DIR)integrations/opencode/commands/vox.md $(HOME)/.config/opencode/commands/vox.md
	@if [ -f "$(OPENCODE_CONFIG)" ] && command -v jq >/dev/null 2>&1; then \
		jq '.command.vox = {"description": "Switch AI voice/personality", "template": "$(VOX_TEMPLATE)"}' \
			$(OPENCODE_CONFIG) > $(OPENCODE_CONFIG).tmp && \
		mv $(OPENCODE_CONFIG).tmp $(OPENCODE_CONFIG) && \
		echo "✓ Registered /vox command in opencode.json" ; \
	fi
	@if [ -f "$(HOME)/.config/opencode/rules/tone.md" ]; then \
		mv $(HOME)/.config/opencode/rules/tone.md $(HOME)/.config/opencode/rules/tone.md.bak ; \
		echo "✓ Backed up old tone.md → tone.md.bak" ; \
	fi
	@echo "✓ Installed vox rules to ~/.config/opencode/rules/vox.md"
	@echo "✓ Installed /vox command to ~/.config/opencode/commands/vox.md"
	@echo "  Done! Open OpenCode and use /vox commands."

install-warp: install ## Install for Warp (requires PROJECT=<path>)
ifndef PROJECT
	$(error Usage: make install-warp PROJECT=/path/to/your/project)
endif
	@mkdir -p $(PROJECT)/.warp/rules
	@cp $(REPO_DIR)integrations/warp/rules.md $(PROJECT)/.warp/rules/vox.md
	@echo "✓ Copied rules to $(PROJECT)/.warp/rules/vox.md"
	@echo "  Done! Use /vox commands in Warp."

# --- Utilities ---

uninstall: ## Remove ~/.ai-vox/
	@rm -rf $(PREFIX)
	@echo "✓ Removed $(PREFIX)"
	@echo "  Note: project-level files (CLAUDE.md, .warp/rules/vox.md) must be removed manually."

list: ## List installed voices
	@if [ -d "$(TONES_DIR)" ]; then \
		echo "Installed voices in $(TONES_DIR)/:" ; \
		ls $(TONES_DIR)/*.md 2>/dev/null | xargs -I{} basename {} .md | sort | awk '{printf "  - %s\n", $$0}' ; \
	else \
		echo "No voices installed. Run: make install" ; \
	fi
