# 
# ~/.zshrc
# 
autoload -U promptinit
promptinit
autoload -U compinit
compinit
#autoload predict-on
#predict-on

#パス設定
#path=($HOME/.bin $path)

# 履歴設定
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=10000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt share_history

# キーバインド
bindkey -v
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "" history-beginning-search-backward-end
bindkey "" history-beginning-search-forward-end

# カラー設定
export TERM='xterm-256color'
autoload -U colors && colors 

# エイリアス
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -la'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias history='history 1'
alias wget='wget -P ~/Downloads'
alias ping='ping -4'
alias pkexec='pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY'

# プロンプト設定
USER_NAME="%F{133}%n%f"
HOSTS="%F{220}%M%f"
ATMARK="%F{037}@%f"
KORON="%F{001}:%f"
PIPE="%F{001}|%f"
NEWLINE=$'\n'
DIR="%F{037}%~%f"
USER_PROMPT="%F{037}%#%f"
PROMPT="${USER_NAME}${ATMARK}${HOSTS}${KORON}${DIR}${PIPE}${NEWLINE}${USER_PROMPT} " 

[ -f ${HOME}/.zshrc.mine ] && source ${HOME}/.zshrc.mine

cat /etc/os-release | head -n 1 | sed 's/^.*"\(.*\)".*$/\1/'
zsh --version
