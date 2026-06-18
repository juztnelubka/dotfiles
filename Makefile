DOTFILES := $(shell pwd)
ZED_CONFIG := $(HOME)/.config/zed

.PHONY: install zed

install: zed ## Symlink all dotfiles

zed: ## Symlink Zed config (settings.json, keymap.json)
	mkdir -p $(ZED_CONFIG)
	ln -sf $(DOTFILES)/zed/settings.json $(ZED_CONFIG)/settings.json
	ln -sf $(DOTFILES)/zed/keymap.json $(ZED_CONFIG)/keymap.json
	@echo "zed: settings.json + keymap.json linked"
