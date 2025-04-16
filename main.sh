#!/bin/bash

# Color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

DRY_RUN=false

# Check if --dry-run is passed
if [[ "$1" == "--dry-run" ]]; then
  DRY_RUN=true
  echo -e "${YELLOW}[Dry Run Mode Enabled]${NC}"
fi

echo -e "${GREEN}Linux Tools Installer Script${NC}"
echo "--------------------------------"
echo "Select tools to install:"
echo "1) Git"
echo "2) Curl"
echo "3) Wget"
echo "4) Vim"
echo "5) Nmap"
echo "6) Net-tools"
echo "7) All of the above"
echo "0) Exit"
echo "--------------------------------"

read -p "Enter your choice (e.g., 1 or 1 3 5): " choices

# Update system (skip for dry run)
if [ "$DRY_RUN" = false ]; then
  sudo apt update
else
  echo "[Dry Run] Would run: sudo apt update"
fi

for choice in $choices; do
  case $choice in
    1)
      echo -e "${GREEN}Installing Git...${NC}"
      $DRY_RUN && echo "[Dry Run] Would run: sudo apt install -y git" || sudo apt install -y git
      ;;
    2)
      echo -e "${GREEN}Installing Curl...${NC}"
      $DRY_RUN && echo "[Dry Run] Would run: sudo apt install -y curl" || sudo apt install -y curl
      ;;
    3)
      echo -e "${GREEN}Installing Wget...${NC}"
      $DRY_RUN && echo "[Dry Run] Would run: sudo apt install -y wget" || sudo apt install -y wget
      ;;
    4)
      echo -e "${GREEN}Installing Vim...${NC}"
      $DRY_RUN && echo "[Dry Run] Would run: sudo apt install -y vim" || sudo apt install -y vim
      ;;
    5)
      echo -e "${GREEN}Installing Nmap...${NC}"
      $DRY_RUN && echo "[Dry Run] Would run: sudo apt install -y nmap" || sudo apt install -y nmap
      ;;
    6)
      echo -e "${GREEN}Installing Net-tools...${NC}"
      $DRY_RUN && echo "[Dry Run] Would run: sudo apt install -y net-tools" || sudo apt install -y net-tools
      ;;
    7)
      echo -e "${GREEN}Installing all selected tools...${NC}"
      $DRY_RUN && echo "[Dry Run] Would run: sudo apt install -y git curl wget vim nmap net-tools" || sudo apt install -y git curl wget vim nmap net-tools
      break
      ;;
    0)
      echo "Exiting..."
      exit 0
      ;;
    *)
      echo "Invalid option: $choice"
      ;;
  esac
done

echo -e "${GREEN}Done!${NC}"
