# Colors

**Colors** is an ANSI color repository containing every foreground and background color your terminal can display. Say goodbye to pasting the same color codes over and over again!

## Features

- 🎨 **8-bit color support** – Standard terminal colors with easy-to-remember variable names
- 🌈 **16.7 million colors** – Full RGB color support for vibrant, custom palettes
- 🔧 **Simple integration** – Just source the script and start using colors
- 🚀 **Beta: 16-bit colors** – Extended color support in development
- 📈 **Future support** – 281 trillion colors in development

## Quick Start

### Installation

1. Download the `colors` script to your project
2. Source it at the beginning of your script:

```bash
source colors
```

### Usage

Once sourced, use predefined color variables in your echo commands:

```bash
echo -e "${GREEN}This is green!${RESET}"
echo -e "${RED}This is red!${RESET}"
echo -e "${BLUE}This is blue!${RESET}"
```

### Advanced: RGB Colors

For custom colors from the full 16.7 million color palette, use RGB format:

```bash
echo -e "{RGB 3 255 6} This is a custom green! {RESET}"
```

## Available Colors

All standard ANSI colors are available as variables (e.g., `${GREEN}`, `${RED}`, `${BLUE}`, etc.). Use `${RESET}` to return to default terminal colors.

## Development

16-bit color support is currently in beta. Stay tuned for more updates!

---

**Tired of color code spaghetti?** Source Colors and make your scripts colorful in seconds! 🎉
