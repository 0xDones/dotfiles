# Setup

This document contains all the tools that I use on my daily basis. I created it to make it easier to automate anytime, in order to bootstrap my dev environment in a single command. I'm thinking about using Ansible for this task, but idk... Maybe one day.

## Terminals and frameworks

### iTerm2 (For Mac)

- [Website](https://iterm2.com/)

### Hyper (For Windows)

- [Website](https://konsole.kde.org/)

### Konsole (For Linux)

- [Website](https://hyper.is/)
- 
### Oh My ZSH

- [Website](https://github.com/ohmyzsh/ohmyzsh)

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
