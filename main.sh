#!/bin/bash

# ── Color setup ──
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m'

# ── Banner ──
clear
echo -e "${CYAN}"
echo "╔═════════════════════════════════════════════════════════════════════════════════╗"
echo "║                          🛠️ LINUX TOOLS INSTALLER                              ║"
echo "╠════════════════════════════════════════════════════════════════════════════════╣"
echo "║  👨‍💻 Author          : Md. Jonayed Hossen [Jonayed 404]                         ║"
echo "║  🌐 GitHub          : https://github.com/jonayed-hossen                        ║"
echo "║  📘 Facebook Page   : https://www.facebook.com/Jonayed404Official/             ║"
echo "║  📘 Facebook ID     : https://www.facebook.com/Jonayed404/                     ║"
echo "║  ▶️ YouTube         : https://www.youtube.com/@Tech-Time-Tube                  ║"
echo "╚════════════════════════════════════════════════════════════════════════════════╝"
echo -e "${NC}"

# ── Menu ──
echo -e "${YELLOW}Select tools to install:${NC}"
echo "  1) Git"
echo "  2) Curl"
echo "  3) Wget"
echo "  4) Vim"
echo "  5) Nmap"
echo "  6) Kali Linux Labs"
echo "  7) All of the above"
echo "  0) Exit"
echo "--------------------------------------------------"
read -p "Enter your choice (e.g., 1 3 5): " choices
echo ""

# ── Update system ──
echo -e "${GREEN}🔄 Updating package list...${NC}"
sudo apt update

# ── Install function ──
install_tool() {
  echo -e "${GREEN}📥 Installing $1...${NC}"
  sudo apt install -y "$1"
}

# ── Handle choices ──
for choice in $choices; do
  case $choice in
    1) install_tool "git" ;;
    2) install_tool "curl" ;;
    3) install_tool "wget" ;;
    4) install_tool "vim" ;;
    5) install_tool "nmap" ;;
    6) install_tool "kali-linux-labs" ;;
    7)
      echo -e "${GREEN}📦 Installing all tools...${NC}"
      install_tool "git"
      install_tool "curl"
      install_tool "wget"
      install_tool "vim"
      install_tool "nmap"
      install_tool "kali-linux-labs"
      break
      ;;
    0)
      echo -e "${RED}❌ Exited.${NC}"
      exit 0
      ;;
    *)
      echo -e "${RED}⚠️ Invalid option: $choice${NC}"
      ;;
  esac
done

# ── Done ──
echo -e "\n${CYAN}═════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN} ✅ Installation completed successfully! Happy Hacking! 🧑‍💻 ${NC}"
echo -e "${CYAN}═════════════════════════════════════════════════════════════${NC}"
