DOTFILES := $(shell pwd)
ZED_CONFIG := $(HOME)/.config/zed

.PHONY: install zed

install: zed ## Symlink all dotfiles

zed: ## Symlink Zed config (settings.json)
	mkdir -p $(ZED_CONFIG)
	ln -sf $(DOTFILES)/zed/settings.json $(ZED_CONFIG)/settings.json
	@echo "zed: settings.json linked"
