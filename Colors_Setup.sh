#!/bin/bash


#package installs
packages=("figlet" "lolcat" "pv")

for package in "${packages[@]}"; do
    command -v "$package" || pacman -S "$package" || apk add "$package" || apt install "$package" || dnf install "$package" || zypper install "$package" || emerge "$package" || xbps-install "$package" || nix-env -iA "nixpkgs.$package"
done

#define colors
RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[0;33m'; BLUE='\033[0;34m'; PURPLE='\033[0;35m'; CYAN='\033[0;36m'; RESET='\033[0m'
clear

NAME="Colors setup"
CMDH="Colors"
CREDITS="made by Null (im using my own multitool template for this lol)"

echo -e -n "${RED}"
figlet "${NAME}"
echo -n -e "${RESET}"

echo -n "the best "
echo -e "${GREEN}color repository..${RESET}"

while true; do
    echo -e -n "${BLUE}"

    echo "0. ping"
    echo "1. update/install colors"
    echo "2. about"

    echo ""
    echo ""
    echo -e "${RED}exit${RESET}"
    echo -e "${BLUE}help${RESET}"
    echo ""
    echo ""

    echo -n -e "${RESET}"
    echo -n "{Colors} "
    read cmd

    case "$cmd" in
        0)
            echo -n -e "[${CMDH}]: ${RED}"
            echo -e "pong!${RESET}"
            ;;

        1)
            curl -s -L https://raw.githubusercontent.com/null097-something/Colors/refs/heads/main/Colors | pv -L 20k -s $(curl -s -L https://raw.githubusercontent.com/null097-something/Colors/refs/heads/main/Colors | wc -c) > colors
            echo "colors installed!"
            ;;

        2)
            echo "Ever got tired of pasting the same lines over and over again?"
            echo -n "well "; echo "we've got you!" | lolcat | pv -q -L 40
            echo ""
            echo -n "Colors is an ANSI color repository containing "
            echo "every foreground and background your terminal can display." | lolcat | pv -q -L 60
            echo "to use colors, simply download it and append 'source colors' at the beginning of your script!"
            ;;

        help)
            echo "Simply append 'source colors' at the beginning of any file to start using colors!"
            echo 'After appending "source colors", use "echo -e "${GREEN}this is green!${RESET}" " to add colors.'
            echo "Colors also has support for 16.7 million colors! (281 trillion in development)"
            echo "to use this special pallet rather than standard 8 bit labelled colors, use"
            echo 'echo -e "(RGB 3 255 6) green :O {RESET}"'
            echo "Colors is also in beta for supporting 16 bit colors."
            echo ""
            ;;

        exit)
            break
            ;;

        *)
            echo "Unknown command."
            ;;
    esac
done
