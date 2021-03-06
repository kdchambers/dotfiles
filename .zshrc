export ZSH="/home/keith/.oh-my-zsh"

export LANG=en_IE.UTF-8
export LC_CTYPE=en_IE.UTF-8
export LC_ALL=en_IE.UTF-8
export XDG_CONFIG_HOME=/home/keith/.config

export KANBANFILE=~/.config/kanban/.kanban.csv
export KANBANCONF=~/.config/kanban/.kanban.conf

export PATH=$PATH:/home/keith/.local/bin

ZSH_THEME="random" # Favourite themes af-magic 
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="false"

# Uncomment the following line if you want to disable marking untracked files under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ssh-agent fossil fzf)

zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities github_id_rsa
zstyle :omz:plugins:ssh-agent lifetime 12h

export FZF_BASE='~/.fzf'

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR='nvim'

export ARCHFLAGS="-arch x86_64"

alias xi=xbps-install
alias xr=xbps-remove
alias xq=xbps-query

alias sudo='echo "Sudo disabled. Use doas"'
alias doas='doas '
alias ls='ls -a --color=tty'
alias kb='kanban'
alias szsh='source ~/.zshrc'

alias gs='git status'
alias gd='git diff'
alias gc='git clone'

alias rc='rclone'
alias pm='podman'
alias nn='nvim'
alias rr='zig build run'
alias rb='zig build'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source "/$HOME/zsh-vim-mode/zsh-vim-mode.plugin.zsh"


