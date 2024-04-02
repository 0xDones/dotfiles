# Setup

This document contains all the tools that I use on my daily basis. I created it to make it easier to automate this task, to bootstrap my dev environment in a single command. I'm thinking about using Ansible for this task, but I don't know... Maybe one day.

## Terminals

### MacOS

- [iterm2](https://iterm2.com/)
- [alacritty](https://alacritty.org/index.html)
- [warp](https://docs.warp.dev/)
- [kitty](https://github.com/kovidgoyal/kitty)

### Windows

- [hyper](https://hyper.is/)

### Linux

- [konsole](https://konsole.kde.org/)

## Terminal Frameworks

### Oh My ZSH

- [Documentation](https://github.com/ohmyzsh/ohmyzsh)

#### Plugins

- [Syntax Highlight](https://github.com/zsh-users/zsh-syntax-highlighting)
- [Syntax Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

```sh
# ~/.zshrc
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    docker
    aws
    kubectl
)
```

#### Themes

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
- [Starship](https://starship.rs/)

##### Starship

1. Install FireCode Nerd Font - <https://www.nerdfonts.com/font-downloads>
2. Update iTerm to use it (`settings > profile > text > fonts > FireCode Nerd Font Mono`)
3. Update VSCode

   ```json
   "editor.fontFamily": "'FiraMono Nerd Font Mono', monospace", // "'Fira Code'",
   "terminal.integrated.fontFamily": "'FiraMono Nerd Font Mono', monospace",
   ```

4. Update starship config file (`~/.config/starship.toml`)

## Terminal Tools

- exa - ls alternative - <https://github.com/ogham/exa>
- fd - find alternative - <https://github.com/sharkdp/fd>
- dog - dig alternative - <https://github.com/ogham/dog>
- sd - sed alternative - <https://github.com/chmln/sd>
- lazydocker - docker terminal ui - <https://github.com/jesseduffield/lazydocker>
- bat - improved cat - <https://github.com/sharkdp/bat>
- mcfly - improved reverse search - <https://github.com/cantino/mcfly>
- ripgrep - improved grep - <https://github.com/BurntSushi/ripgrep/>
- difftastic - improved diff - <https://github.com/Wilfred/difftastic>
- curlie - curl alternative - <https://github.com/rs/curlie>
- xh - httpie alternative - <https://github.com/ducaale/xh>
- k9s - kubernetes terminal ui - <https://k9scli.io/>
- fzf - command liny fuzzy finder - <https://github.com/junegunn/fzf>
- fnn - NVM alternative - <https://github.com/Schniz/fnm>

---

## Development

### Gitkraken

Nice UI for Git

- [Website](https://www.gitkraken.com/)

### Angular

- [Install](https://angular.io/guide/setup-local#install-the-angular-cli)

### Rust

- [Install](https://www.rust-lang.org/tools/install)

### Docker

- [Install For Linux](https://docs.docker.com/engine/install/ubuntu/)

#### Docker Compose

- [Install](https://docs.docker.com/compose/install/)

### Node.js

- [Install NVM](https://github.com/nvm-sh/nvm)
- [Install fnn](https://github.com/Schniz/fnm)

#### NVM

```sh
nvm ls-remote --lts
nvm install v14.17.3
```

#### FNN

```sh
fnn install --lts
```

### Golang

- [Install](https://golang.org/doc/install)

---

## DevOps

### AWS CLI

- [Install](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

### Firebase CLI

- [Install](https://firebase.google.com/docs/cli#install-cli-mac-linux)

### Ansible

### Terraform

#### Tooling

- tfenv
- terraform-docs

### Vscode

#### Extensions

- Docker
- Editorconfig
- Go
- Javascript
- Markdownlint
- Reload
- Rust-analyzer
- Material Icon Theme
- Monokai Pro
- runonsave
