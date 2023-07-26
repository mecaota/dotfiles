script_dir=$(cd $(dirname $0); pwd)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 読み込み
source $script_dir/alias.zsh
source $script_dir/antigen.zsh
source $script_dir/.p10k.zsh # ~/.p10k.zsh

# 補完設定
autoload -U compinit
compinit
zstyle ':completion:*' menu yes select
zstyle ':completion:*' recent-dirs-insert both

# オプション
setopt EXTENDED_GLOB
setopt BARE_GLOB_QUAL
setopt AUTO_CONTINUE
setopt NOTIFY
setopt IGNORE_EOF
unsetopt AUTO_CD
unsetopt AUTO_PUSHD

# issue: https://github.com/romkatv/powerlevel10k/issues/1554
plugins=(zsh-z `#git`)

# gcp
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"
