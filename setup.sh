#!/bin/bash

readonly GREEN='\033[0;32m'
readonly RED='\033[0;31m'
readonly YELLOW='\033[1;33m'
readonly NC='\033[0m' # No Color
readonly LBLUE='\033[1;36m'

 # Spacing variables
readonly TAB=' '
readonly TABx2='  '
readonly TABx3='   '

 # Function used to color echo text in green (success)
echo_success() {
    echo "${GREEN}[OKAY]${NC}${TABx2}$@${NC}"
}

 # Function used to color echo text in red (error)
echo_error() {
    echo >&2 "${RED}[ERROR]${NC}${TAB}$@${NC}"
    exit 1
}

 # Function used to color echo text in light-blue (info)
echo_info() {
    echo "${LBLUE}[INFO]${NC}${TABx2}$@${NC}"
}

install_brew(){
  echo_info "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo_success "Done!"
}

install_zsh(){
  echo_info "Installing zsh..."
  brew install zsh
  echo_success "Done!"
}

install_oh_my_zsh(){
  echo_info "Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo_success "Done!"
}

install_oh_my_zsh_plugins(){
  echo_info "Installing oh-my-zsh plugins..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  echo_success "Done!"
}

install_brew_packages(){
  echo_info "Installing brew packages..."
  brew install starship \
  wget \
  fnm \
  fzf \
  ripgrep \
  bat \
  lsd \
  fd \
  jq \
  yq \
  kubectl \
  kubectx \
  tfenv \
  derailed/k9s/k9s \
  difftastic \
  mcfly \
  make \
  watch \
  # dnsmasq \
  helm \
  colordiff \
  bash \
  ruby \
  tmux
  echo_success "Done!"
}

install_aws_cli(){
  echo_info "Installing AWS CLI..."
  curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
  sudo installer -pkg AWSCLIV2.pkg -target /
  echo_success "Done!"
}

install_rust(){
  echo_info "Installing Rust..."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  echo_success "Done!"
}

install_go(){
  echo_info "To install Go visit: https://go.dev/doc/install"
}

install_node(){
  echo_info "Installing Node..."
  fnm install --lts
  echo_success "Done!"
  eval "$(fnm env --use-on-cd)"
  echo_info "Installing Yarn..."
  npm install --global yarn
  echo_success "Done!"
}

copy_configs(){
  echo_info "Copying configs..."
  cp -r ./home/. ~/
  echo_success "Done!"
}

append_to_zshrc(){
  echo_info "Appending to .zshrc..."
  echo '
alias l="lsd -l"
alias ll="lsd -la"

alias k="kubectl"
alias kx="kubectx"
alias ks="kubens"

alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply"
alias tfr="terraform refresh"
alias tf="terraform"

alias ts="terraspace"
alias tsp="terraspace plan"
alias tsup="terraspace up"

eval "$(starship init zsh)"
eval "$(mcfly init zsh)"
eval "$(fnm env --use-on-cd)"

awsv() {
    aws-vault exec ${AWS_PROFILE} -- aws $@
}

tfv() {
    aws-vault exec ${AWS_PROFILE} -- terraform $@
}
' >>  ~/.zshrc
  echo_success "Done!"
}

info(){
  echo_info "Please add the following to your .zshrc file"
  echo '
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    docker
    aws
    kubectl
)
'
}

setup_shell() {
  chsh -s $(which zsh)
  source ~/.zshrc
 }

main() {
  echo_info "Starting setup..."
  install_brew
  install_zsh
  install_oh_my_zsh
  install_oh_my_zsh_plugins
  append_to_zshrc
  install_brew_packages
  install_aws_cli
  install_rust
  install_go
  install_node
  copy_configs
  setup_shell
  info
  echo_success "Setup complete!"
}

main
