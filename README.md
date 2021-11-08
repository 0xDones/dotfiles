# Setup

This document contains all the tools that I use on my daily basis. I created it to make it easier to automate anytime, and bootstrap my dev environment in a single command.

## Terminals

### iTerm2 (For Mac)

- [Install](https://iterm2.com/)

### Hyper (For Windows)

- [Install](https://hyper.is/)

### Konsole (For Linux)

- [Install](https://konsole.kde.org/)

### Oh My ZSH

- [Install](https://github.com/ohmyzsh/ohmyzsh)

```sh
# Update ~/.zshrc
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    docker
    aws
    kubectl
)
```

#### Themes and Plugins

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
- [Syntax Highlight](https://github.com/zsh-users/zsh-syntax-highlighting)
- [Syntax Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

---

## Development

### Gitkraken

- [Install](https://www.gitkraken.com/)

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

#### Commands

```sh
nvm ls-remote --lts
nvm install v14.17.3
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
