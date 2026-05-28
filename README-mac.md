# Setting up a new mac

## Manual installs
- [Rectangle](https://rectangleapp.com/) - window manager (use defaults)
  - Set up as startup program: `System Settings -> Open at Login`
- [1password](https://1password.com/downloads/mac)
  - Set up as startup program: `System Settings -> Open at Login`
- [Signal](https://signal.org/download/macos/)

## System settings
- Keyboard
  - Swap cmd+alt on external keyboard (Settings -> Modifier Keys)
- Trackpad
  - `Scroll & Zoom -> Natural scrolling (off)` I beg to differ, OSX

## Programmer stuff
- [iTerm](https://iterm2.com/)
  - Settings
    - Set to bash: `Settings -> Profiles -> General -> Command -> Login Shell`
    - `Settings -> Profiles -> Colors -> Color Preset -> High Contrast`
    - `Settings -> Profiles -> Terminal -> Show Mark indicators (off)`
    - `Settings -> General -> Selection -> Copy to clipboard on selection`
    - `Settings -> General -> Selection -> Clicking on a command selects it to restrict Find and Filter (off)`
- Shell
  - From [this repo](https://github.com/alexturek/dotfiles)
    - Copy over .bashrc
    - Copy over .gitconfig
    - Install homebrew
    - Add “/opt/homebrew/bin” to /etc/paths
    - `brew install bash git vim coreutils gawk gnu-getopt gnu-sed gnu-tar grep jq yq bash-completion`
- [Add a new Github SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
  - `ssh-keygen -t ed25519 -C alex.turek@gmail.com`
  - Add to `~/.ssh/config`:
    ```
	Host github.com
        AddKeysToAgent yes
        UseKeychain yes
        IdentityFile ~/.ssh/id_ed25519
    ```
- Install [VSCode](https://code.visualstudio.com/docs/setup/mac)
	

Docker for desktop (requires registration)
