XDG_CONFIG_DIR ?= $(HOME)/.config

.PHONY: install
install:
	ln -s $(CURDIR)/keybindings.json $(XDG_CONFIG_DIR)/Code/User/keybindings.json
	ln -s $(CURDIR)/settings.json $(XDG_CONFIG_DIR)/Code/User/settings.json
	cat ./extensions | while read line; do \
		code --install-extension $$line; \
	done
