# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# =============================================================================
#                                   Plugins
# =============================================================================
# zplug
##############################################################
# A next-generation plugin manager for zsh https://zplug.sh
# https://github.com/zplug/zplug
# Installation
# curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
# or  brew install zplug
#
# zplug configruation
# export ZPLUG_HOME=~/.zplug
# source "${ZPLUG_HOME}/init.zsh
source ~/.zplug/init.zsh

# zplug/zplug
zplug 'zplug/zplug', hook-build:'zplug --self-manage' # All that's left is to run "zplug update".

# zsh-users
# 加载原版oh-my-zsh中的功能(robbyrussell's oh-my-zsh).
# plugins=(git autojump zsh-autosuggestions z extract brew brew-cask colored-man sudo vscode zsh-syntax-highlighting)
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-completions', defer:2
zplug 'zsh-users/zsh-history-substring-search'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2

# theme
# zplug 'romkatv/powerlevel10k', use:powerlevel10k.zsh-theme

# plugins
# # Supports oh-my-zsh plugins and the like
# if [[ $OSTYPE = (linux)* ]]; then
#     zplug "plugins/archlinux", from:oh-my-zsh, if:"which pacman"
#     zplug "plugins/dnf",       from:oh-my-zsh, if:"which dnf"
# fi

# if [[ $OSTYPE = (darwin)* ]]; then
#     zplug "plugins/osx",      from:oh-my-zsh
#     zplug "plugins/brew",     from:oh-my-zsh, if:"which brew"
#     zplug "plugins/macports", from:oh-my-zsh, if:"which port"
# fi

zplug "plugins/osx",      from:oh-my-zsh
zplug "plugins/brew",     from:oh-my-zsh, if:"which brew"
zplug "plugins/brew-cask",     from:oh-my-zsh, if:"which brew"

zplug 'plugins/git', from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/vccode", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/web-search", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "wting/autojump", from:"github", as:command
# zplug "plugins/vi-mode", from:oh-my-zsh


# # 加载主题

# zplug check returns true if all packages are installed
# Therefore, when it returns false, run zplug install
# if ! zplug check; then
  # zplug install
# fi
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
# zplug load --verbose
zplug load

# zplug 命令
# ...
#
# 参考链接：
# https://github.com/2KAbhishek/Dotfiles/blob/master/.zshrc
# https://github.com/2kabhishek/Dotfiles
# https://gist.github.com/orkunsenturk/9dbf0461e38f50f537eea920bb8519f3
# https://gist.github.com/dbenfouzari/a3952a0cf5eece926178329766f5d7f5
#


# =============================================================================
#                                   Themes
# =============================================================================

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loadedjkkkkk
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"

# 字体设置需要放在 ZSH_THEME 前
POWERLEVEL9K_MODE='nerdfont-complete'
# POWERLEVEL9K_MODE='Sauce Code Pro Nerd Font Complete'
# powerlevel10k: 比POWERLEVEL9K效率更高，配置可以采用原 powerlevel9k 的配置
ZSH_THEME=powerlevel10k/powerlevel10k
# powerlevel9k
# ZSH_THEME="powerlevel9k/powerlevel9k"

# powerlevel9k settings 
# ============================================== 
#新起一行显示命令
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#右侧状态栏与命令在同一行
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

# 左侧栏目显示的要素（指定的关键字参考官网）
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir)
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icod dir vcs)
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs command_execution_time)
# 右侧栏目显示的要素
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs command_execution_time status root_indicator background_jobs time)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode status time)

# exection time
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=3
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='green'

# time
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S %Y/%m/%d}"
#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S %d/%m/%Y}"

# =============================================================================
#                                   Options
# =============================================================================
# History
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git autojump)
# plugins=(git autojump zsh-autosuggestions z extract brew incr zsh-syntax-highlighting)
# plugins=(git autojump zsh-autosuggestions z extract brew brew-cask colored-man sudo vscode zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#


# =============================================================================
#                                   Aliases
# =============================================================================

# Example aliases
# zsh 设置
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
# vim 设置
alias vimconfig="vim ~/.vimrc"
alias vimreload="source ~/.vimrc"
# neovim
alias nvi="nvim "
alias nv="nvim "
alias nviconfig="nvim ~/.config/nvim/init.vim"
# rm 替换
# trash_path='~/.trash'
# mkdir .trash
# alias rm='move1(){ /bin/mv -f $@ ~/.trash/; };move1 $@'
alias rm='rmtrash'
# 代理
alias vip='proxychains4'
# 解压缩
alias untar='tar -zxvf '
# 测试校验和
alias sha='shasum -a 256 '
# 启动 python webserver
alias www='python -m http.server 8000'
# 外网 ip
alias wanip='curl ipinfo.io/ip'
# 内网 ip
alias lanip='ipconfig getifaddr en0'
# ping 5次
alias ping5='ping -c 5'
# wget
alias wget='wget -c '
# ps query
alias 'ps?'='ps ax | grep '
# jupter lab
alias lab='jupyter lab'
# vim fzf
# alias vfzf="vim $(fzf)"
#cd fzf
# alias dfzf="cd $(find * -type d | fzf)"
# vscode atom subl3
# alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
#alias atom='/Applications/Atom.app/Contents/MacOS/Atom'
#alias subl='/Applications/SublimeText.app/Contents/SharedSupport/bin/subl'

alias diff="diff --color=auto"
# alias tmux="tmux -u"
alias tmuxm="tmux new-session \; split-window -h \; split-window -v \; attach"
alias cp="cp -iv"
alias mv="mv -iv"
# alias rm="rm -irv"
alias q="exit"

# incr 
source ~/.oh-my-zsh/custom/plugins/incr/incr*.zsh
# zsh-syntax-highlighting
#source /~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh-autosuggestions
# source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh-autosuggestions 的快捷键设置
bindkey ',' autosuggest-accept
# zsh-interactive-de
# source ~/.fzf/shell/zsh-interactive-cd.plugin.zsh

export PATH="/usr/local/sbin:$PATH"

# fzf
# 核心命令 FZF_DEFAULT_COMMAND 
# export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"
# 默认参数
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(coderay {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'"
# Ctrl + T 参数：打开fzf窗口，如果你选中某个条目并按下Enter， 选中的条目会被拷贝到命令行上
export FZF_CTRL_T_OPTS="--preview '(coderay {} || highlight -O ansi -l {} || cat {} || tree -C {}) 2> /dev/null | head -200'"
# Alt + C 参数: 会列出当前文件夹下的目录，选中条目会自动进入到相应目录
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

# for tmux
export FZF_TMUX=1
# tt
alias tt='fzf --preview '"'"'[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (rougify {}  || highlight -O ansi -l {} || coderay {} || cat {}) 2> /dev/null | head -500'"'"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# autojump
#[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# bash
source ~/.bash_profile

# 寻找PATH重复的路径
# echo $PATH|tr : '\n'|sort|uniq -d 

# =============================================================================
#                                   Variables
# =============================================================================

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# bash_profile 已经配置过了 
# export PATH="$PATH:$HOME/.rvm/bin"

# Homebrew Bottle 镜像源
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles

# vscode
# export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# standford nlp
export CORENLP_HOME="$HOME/lib/stanford-corenlp-full-2018-10-06"

# hadoop
# hadoop-3.1.2
# export HADOOP_HOME=$HOME/lib/hadoop-3.1.2
# hadoop-2.7.7
export HADOOP_HOME=$HOME/lib/hadoop-2.7.7
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=${HADOOP_HOME}/lib:${HADOOP_COMMON_LIB_NATIVE_DIR}"

export PATH="$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin"


# =============================================================================
#                                Key Bindings
# =============================================================================
#
# # Common CTRL bindings.
# bindkey "^a" beginning-of-line
# bindkey "^e" end-of-line
# bindkey "^f" forward-word
# bindkey "^b" backward-word
# bindkey "^k" kill-line
# bindkey "^d" delete-char
# bindkey "^y" accept-and-hold
# bindkey "^w" backward-kill-word
# bindkey "^u" backward-kill-line
# bindkey "^R" history-incremental-pattern-search-backward
# bindkey "^F" history-incremental-pattern-search-forward

# # Do not require a space when attempting to tab-complete.
# bindkey "^i" expand-or-complete-prefix

# # Fixes for alt-backspace and arrows keys
# bindkey '^[^?' backward-kill-word
# bindkey "^[[1;5C" forward-word
# bindkey "^[[1;5D" backward-word

# =============================================================================
#                                   Functions
# =============================================================================
#
function lc () {
    cd $1 &&
    la $2
}

mkcd ()
{
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}

function tmux-clean() {
    tmux list-sessions | grep -E -v '\(attached\)$' | while IFS='\n' read line; do
    tmux kill-session -t "${line%%:*}"
    done
}
