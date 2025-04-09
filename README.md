# dotfiles
My local setup

## Installation
The simplest thing to do is to run the Makefile.

```bash
make
```

This will install the brew packages, set up the python environment, and install the dev tools.

A more detailed overview of what it does:

1. `make brew`: Installs the packages listed in the Brewfile.
2. `make python`: Initializes pyenv by adding the necessary lines to the shell config file.
3. `make tools`: Bootstraps the dev tools (pipx, pre-commit, etc.)
4. `make shell`: Symlinks the shell config file to the dotfiles directory.




## Structure
### Brewfile
The Brewfile lists the packages I want to install via Homebrew.

### Python
A lot of things that can be here are instead installed via brew.

### Shell
The shell directory contains the shell config file and the scripts that set up the shell.

### Makefile
The Makefile is the main orchestrator. It installs the packages, sets up the python environment, and symlinks the shell config file.





