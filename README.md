# Colors

**Colors** is an ANSI color repository containing every 24-bit trueColor foreground and background color your terminal can display. Say goodbye to pasting the same color codes over and over again!

## Features

- 🎨 **8-bit and 16-bit color support** – Standard 256 terminal colors with easy-to-remember variable names
- 🌈 **281 trillion colors** – Full RGB and RGB16 color support for vibrant, custom palettes
- 🔧 **Simple integration** – Just source the script and start using colors
- 📈 **Future support** – 281 trillion colors are here!!

## Quick Start

### Installation
1. Download the setup file:
```bash
curl -s https://raw.githubusercontent.com/null097-something/Colors/refs/heads/main/Colors_Setup.sh | bash
```
2. Append the `source colors` string to the top of your project
3. Start using colors! 🌈

```bash
source colors
```

### Usage

Once sourced, use predefined color variables in your echo commands:

```bash
echo -e "${GREEN}This is green!${RESET}"
echo -e "${RED}This is red!${RESET}"
echo -e "${BLUE}This is blue!${RESET}"
echo -e "$(RGB 0 255 0)This is green! (but more complicated to show off RGB)${RESET}"
```

### Advanced: RGB Colors

For custom colors from the full 16.7 million color palette, use RGB format:

```bash
echo -e "$(RGB 3 255 6) This is a custom green! ${RESET}"
```

For the full power of Colors, you can use RGB_16 for the full 281 trillion colors*
```bash
echo -e "$(RGB_16 5273 283 65532)this is custom blue!${RESET}"
```

## Available Colors

All standard ANSI colors are available as variables (e.g., `${GREEN}`, `${RED}`, `${BLUE}`, etc.). Use `${RESET}` to return to default terminal colors.

---

**Tired of color code spaghetti?** Source Colors and make your scripts colorful in seconds! 🎉
