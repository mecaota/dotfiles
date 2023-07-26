# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 読み込み
script_dir=$(cd $(dirname $0); pwd)
source $script_dir/antigen/antigen.zsh
source $script_dir/.p10k.zsh # ~/.p10k.zsh
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc" # gcloud
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc" # gcloud

# antigen
antigen use oh-my-zsh
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle olets/zsh-abbr@v5.1.0
antigen theme romkatv/powerlevel10k
antigen apply

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

# エイリアス
abbr -S reload="source $HOME/.zshrc"
