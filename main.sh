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
echo "╔════════════════════════════════════════════════════════════════════════════════╗"
echo "║                         🛠️ LINUX TOOLS INSTALLER                               ║"
echo "╠════════════════════════════════════════════════════════════════════════════════╣"
echo "║  👨‍💻 Author          : Md. Jonayed Hossen [Jonayed 404]                       ║"
echo "║  🌐 GitHub          : https://github.com/jonayed-hossen                        ║"
echo "║  📘 Facebook Page   : https://www.facebook.com/Jonayed404Official/             ║"
echo "║  📘 Facebook ID     : https://www.facebook.com/Jonayed404/                     ║"
echo "║  ▶️ YouTube         : https://www.youtube.com/@Tech-Time-Tube                   ║"
echo "╚════════════════════════════════════════════════════════════════════════════════╝"
echo -e "${NC}"

# ── Menu ──
echo -e "${YELLOW}Select tools to install:${NC}"
echo "  1) Install Kali Linux Labs"
echo "  2) Start DVWA"
echo "  3) Stop DVWA"
echo "  4) Start OWASP Juice shop"
echo "  5) Stop OWASP Juice shop"
echo "  0) Exit"
echo "--------------------------------------------------"
read -p "Enter your choice (e.g., 1 3 5): " choices
echo ""

# ── Update system ──
echo -e "${GREEN}🔄 Updating package list...${NC}"
sudo apt update

# ── Handle choices ──
for choice in $choices; do
  case $choice in
    1)
      echo -e "${GREEN}📥 Installing Kali Linux Labs...${NC}"
      sudo apt install kali-linux-labs -y
      ;;
    2)
      echo -e "${GREEN}🚀 Starting DVWA...${NC}"
      dvwa-start
      ;;
    3)
      echo -e "${YELLOW}🛑 Stopping DVWA...${NC}"
      dvwa-stop
      ;;
    4)
      echo -e "${GREEN}🚀 Starting OWASP Juice Shop...${NC}"
      juice-shop -h
      ;;
    5)
      echo -e "${YELLOW}🛑 Stopping OWASP Juice Shop...${NC}"
      juice-shop-stop -h
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
