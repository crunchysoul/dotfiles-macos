# 256 color support for tmux
export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
################################################################################
ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="random"
#ZSH_THEME="agnoster"

# Using Nerd-Fonts
POWERLEVEL9K_MODE='nerdfont-complete'
# POWERLEVEL9K_MODE='awesome-fontconfig'

# Default right prompt:
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(zsh_showStatus status root_indicator background_jobs time)

# Show Spotify status, usint shpotify:
prompt_zsh_showStatus () {
  state=`osascript -e 'tell application "Spotify" to player state as string'`;
  if [ $state = "playing" ]; then
    artist=`osascript -e 'tell application "Spotify" to artist of current track as string'`;
    track=`osascript -e 'tell application "Spotify" to name of current track as string'`;

    echo -n "$artist - $track";
  fi
}

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
plugins=(git npm z ruby osx yarn mix) 


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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

##############################################################################
# My powerlevel9k Config
##############################################################################

# Light powerline color:
#POWERLEVEL9K_COLOR_SCHEME='light'
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time context dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv)
#POWERLEVEL9K_STATUS_VERBOSE=false
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

# Fish short path:
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# Empty prompt:
prompt_context() {}

# # Short path like fish:
# setopt prompt_subst
# PS1='%n@%m $(shrink_path -l)>'

# Right prompt:
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

##############################################################################
# My Config System & Homebrew
##############################################################################

# Homebrew $PATH:
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

# iterm2 integration:
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# sqlite3 $PATH setting:
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Load rbenv automatically by appending
# the following to ~/.zshrc:
eval "$(rbenv init -)"

# JAVA_HOME:
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

# Haskell Cabal:
export PATH="$HOME/Library/Haskell/bin:$PATH"

# Git bare repository dotfiles:
# https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
# NOTE: use local git from brew, name to .dotconfig
# NOTE: name is .dotconfig, not .cfg in tutorial
alias config='/usr/local/bin/git --git-dir=$HOME/.dotconfig/ --work-tree=$HOME'

# Delete NVM for homebrew node:
# Heroku and Yarn has dependency issue with nvm:

# Rust $PATH:
export PATH="$HOME/.cargo/bin:$PATH"

# Latexmk:
export PATH="$HOME/Library/TeX/texbin:$PATH"

# Python2:
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# React Native Android:
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# GO:
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Luna-studio:
export PATH=$HOME/.local/bin/luna-studio:$PATH

##############################################################################
# My Alias:
##############################################################################

alias vim=nvim
alias edz='vim ~/.zshrc'
alias edv='vim ~/.vimrc'
alias sz='source ~/.zshrc'
alias song='spotify status'

alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew cask cleanup; brew doctor'
alias bcs='brew cask search'
alias bci='brew cask install'
alias bcl='brew cask list'
alias bco='brew cask outdated'
alias bs='brew search'
alias bi='brew install'
alias bl='brew list'

alias cfga='config add'
alias cfgc='config commit -m'
alias cfgp='config push'
alias cfglfun='config log -1 | cowsay -f dragon-and-cow | lolcat'

alias gadd='git add'
alias gadd.='git add .'
alias gcmt='git commit -m'
alias gadcmt='git add . && git commit -m'
alias gpsh='git push'
alias glogs='git log --pretty=oneline --abbrev-commit'
alias glogfun='git log -1 | cowsay -f dragon-and-cow | lolcat'
alias spoofmac="openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//' | xargs sudo ifconfig en0 ether"
alias whatmac='ifconfig en0 | grep ether'
