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

export KANBANFILE=~/.config/kanban/.kanban.csv
export KANBANCONF=~/.config/kanban/.kanban.conf

export EDITOR='nvim'
export FZF_BASE='~/.fzf'

alias xi='xbps-install'
alias xr='xbps-remove'
alias xq='xbps-query'

alias doas='doas '
alias ls='ls -a --color=tty'
alias kb='kanban'
alias vc='veracrypt -t'

alias gs='git status'
alias gd='git diff'
alias gc='git clone'

alias rc='rclone'
alias nn='nvim'
alias nf='nvim $(fzf)'
alias rr='zig build run'
alias rb='zig build'

cd() { builtin cd "$@" && ls; };
