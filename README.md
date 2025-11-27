# install-jan

Automatically download and install the latest **Jan** `.deb` package on Debian/Ubuntu-based Linux systems.

Jan is an open-source AI desktop app that lets you run and test LLMs locally with full control.

> This script bypasses broken or outdated installation methods and fetches the real `.deb` file directly from GitHub releases.

## ✅ Features
- Always installs the **latest stable version**
- Automatically resolves dependencies via `apt`
- Works even if the `.deb` filename includes version numbers or spaces
- No AppImage fallback — pure `.deb` only

## ▶️ Usage

```bash
wget -O install-jan.sh https://raw.githubusercontent.com/canapaio/install-jan/main/install-jan.sh
chmod +x install-jan.sh
./install-jan.sh
