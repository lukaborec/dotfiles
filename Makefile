.PHONY: all brew python tools shell

# Main entry point
all: brew python tools shell

# Step 1: Install Brewfile packages
brew:
	@echo "==> Installing Homebrew packages..."
	brew bundle --file=./Brewfile

# Step 2: Setup Python environment config (e.g., pyenv init)
python:
	@echo "==> Setting up Python environment..."
	./python/pyenv-init.sh

# Step 3: Install dev tools (e.g., pipx + pre-commit)
tools:
	@echo "==> Bootstrapping dev tools..."
	./tools/dev-tools-bootstrap.sh

# Step 4: Symlink the shell config
shell:
	@echo "==> Symlinking shell config..."
	ln -sf $(PWD)/shell/.zshrc ~/.zshrc

# Check dotfile symlinks
status:
	@echo "==> Checking dotfile symlinks..."
	@if [ -L ~/.zshrc ]; then \
		echo "~/.zshrc → $$(readlink ~/.zshrc)"; \
	else \
		echo "~/.zshrc is not a symlink"; \
	fi

