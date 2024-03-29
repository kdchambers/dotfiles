# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep
bindkey -v

bindkey "^N" down-line-or-search
bindkey "^P" up-line-or-search

# Fix awful coloring of mounted ntfs (Happens due to permissions being too permissive)
LS_COLORS='ow=36'

# Start ssh-agent, needs to happen at beginning of shell creation as env vars are loaded
eval `ssh-agent -s`

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/keith/.zshrc'

autoload -Uz compinit
compinit

PROMPT='%F{green}%n@%m%f '         # green user@host
PROMPT+='%F{blue}%~%f'             # blue current working directory
PROMPT+=$'\n'                      # new line
PROMPT+='%F{%(?.green.red)}%#%f '  # %/# (normal/root); green/red (ok/error)

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export XDG_CONFIG_HOME=/home/keith/.config

export PATH=$PATH:/home/keith/.local/bin

export EDITOR='nvim'
export FZF_BASE='~/.fzf'

alias xi='xbps-install'
alias xr='xbps-remove'
alias xq='xbps-query'

alias doas='doas '
alias ls='ls -a --color=tty'
alias vc='veracrypt -t'

alias gs='git status'
alias gd='git diff'
alias gc='git clone'
alias ga='git add'

alias rc='rclone'
alias nn='nvim'
alias nf='nvim $(fzf)'

cd() { builtin cd "$@" && ls; };
