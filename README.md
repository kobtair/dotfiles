I# Dotfiles

This repository contains my personal configuration files for various applications, all managed using [GNU Stow](https://www.gnu.org/software/stow/). Using stow makes it simple to maintain and deploy my environment across multiple machines.

## Directory Structure

The repository is organized by application. Each folder corresponds to a package and is structured in a way that matches the target directory in your home folder. For example:

```
dotfiles/
├── i3
│   └── .config
│       └── i3
│           ├── config
│           └── [other i3 files...]
├── kitty
│   └── .config
│       └── kitty
│           ├── kitty.conf
│           └── [other kitty files...]
├── nvim
│   └── .config
│       └── nvim
│           ├── init.vim
│           └── [other nvim files...]
├── polybar
│   └── .config
│       └── polybar
│           ├── config.ini
│           ├── launch_polybar.sh
│           └── [other polybar files...]
├── picom
│   └── .config
│       └── picom
│           └── picom.conf
└── rofi
    └── .config
        └── rofi
            ├── config.rasi
            └── catppuccin-mocha.rasi
```

## Installation

### Prerequisites

- [GNU Stow](https://www.gnu.org/software/stow/)
- Git

### Setup

1. **Clone the Repository**

   ```bash
   git clone https://github.com/your-username/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Deploy Configurations with Stow**

   Run the following commands to create symlinks in your home directory:

   ```bash
   stow -t ~ i3
   stow -t ~ kitty
   stow -t ~ nvim
   stow -t ~ polybar
   stow -t ~ picom
   stow -t ~ rofi
   ```

   This will link the configuration files from the repository (e.g., `~/dotfiles/i3/.config/i3`) to the corresponding location in your home folder (e.g., `~/.config/i3`).

## Usage

- **Updating Configurations:**  
  Modify the files in this repository, then commit and push your changes:

  ```bash
  git add .
  git commit -m "Update configuration for <application>"
  git push
  ```

- **Deploying to a New Machine:**  
  Simply clone the repository, navigate to the folder, and run the stow commands listed above to set up your environment.

## Notes

- This repository is tailored to my personal setup. You are free to use it as a reference or adapt it to your own workflow.
- When adding new configurations, ensure that each package follows the structure required by stow (i.e., include the `.config` folder inside each package directory).

For later reference: [journal entry, 04-16](https://chat.openai.com/share/your-chat-id-here)

## License

This project is licensed under the [MIT License](LICENSE).
