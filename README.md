
# install-jan

![Linux](https://img.shields.io/badge/Linux-FCC624?logo=linux&logoColor=black)
![Shell Script](https://img.shields.io/badge/Shell_Script-121011?logo=gnu-bash&logoColor=white)

Automatically download and install the latest **Jan** `.deb` package on Debian/Ubuntu-based Linux systems — **without manual downloads or broken redirects**.

Jan is an open-source AI desktop application that lets you run and test local LLMs with full privacy and control.

> This script bypasses flaky CDN links and GitHub's inconsistent asset naming by directly querying the official GitHub API for the correct `.deb` file.

---

## ✅ Features

- Always installs the **latest stable release** of Jan
- Automatically resolves dependencies via `apt`
- Handles **real-world GitHub asset names** (e.g., `Jan_0.7.3_amd64.deb`)
- **No AppImage fallback** — pure `.deb` only, as preferred by many sysadmins
- Works offline after download

---

## 🖥️ Compatibility

This script is designed for **Debian-based distributions**, as officially supported by Jan:

- ✅ **Debian**
- ✅ **Ubuntu and derivatives**:
  - Ubuntu Desktop LTS / Ubuntu Server LTS
  - Edubuntu, Kubuntu, Lubuntu
  - Ubuntu Budgie, Ubuntu Cinnamon, Ubuntu Kylin, Ubuntu MATE
  - Linux Mint
  - Pop!\_OS

> For RHEL-based (Fedora), Arch, or other distros, Jan provides `.rpm` or `AppImage`.  
> See the [official Linux installation guide](https://www.jan.ai/docs/desktop/install/linux).

---

## ▶️ Usage

```bash
# Download the script
wget -O install-jan.sh https://raw.githubusercontent.com/canapaio/install-jan/main/install-jan.sh

# Make it executable
chmod +x install-jan.sh

# Run it
./install-jan.sh
```

> **Requirements**: `curl`, `grep`, `sed`, `wget`, and `apt` (standard on most Debian-based systems).

After installation, launch Jan from your app menu or by running:
```bash
jan
```

---

## 📦 Uninstall

To completely remove Jan and its data:

```bash
sudo apt remove jan
rm -rf ~/.config/Jan
```

> ⚠️ This permanently deletes all models, chats, and settings.

---

## 🔗 Official Jan Resources

- 🌐 **Website**: [https://jan.ai](https://jan.ai)
- 📥 **Download Page**: [https://jan.ai/download](https://jan.ai/download)
- 📚 **Linux Installation Guide**: [https://www.jan.ai/docs/desktop/install/linux](https://www.jan.ai/docs/desktop/install/linux)
- 💾 **GitHub Releases**: [https://github.com/janhq/jan/releases](https://github.com/janhq/jan/releases)
- 🧠 **Source Code**: [https://github.com/janhq/jan](https://github.com/janhq/jan)
- 📖 **Documentation**: [https://docs.jan.ai](https://docs.jan.ai)

---

## 🙌 Credit

- **Author**: [Canapaio](https://github.com/canapaio)
- **Based on**: Official Jan releases from [janhq/jan](https://github.com/janhq/jan)
- **License**: MIT

> 💡 **Why this script?**  
> Because "2-click install" shouldn’t mean "hope the CDN works today".  
> Real autonomy means **you control the pipeline** — from GitHub to your desktop.
