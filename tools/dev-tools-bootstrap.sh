#!/usr/bin/env bash
set -e

echo "==> Ensuring pipx is initialized"
pipx ensurepath

echo "==> Ensuring pipx-installed tools are up to date"
pipx upgrade-all
