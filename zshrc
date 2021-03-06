# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git deb lol pip)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/paanini/Scripts/tasky/src:/home/paanini/Scripts/tasky/src:/home/paanini/Scripts/sbt/bin
POWERLINE_NO_BLANK_LINE="true"
TERM=xterm-256color
POWERLINE_SHOW_GIT_ON_RIGHT="true"
DEFAULT_USER="paanini"
#source /home/paanini/Scripts/todo.txt_cli-2.9/todo_completion
export http_proxy="http://10.1.9.20:8080"
export HTTP_PROXY="http://10.1.9.20:8080"
export https_proxy=https://10.1.9.20:8080
export HTTPS_PROXY=https://10.1.9.20:8080
unsetopt correct_all
export EDITOR=vim

source ~/.aliases
