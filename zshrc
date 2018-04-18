# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler golang)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

GOPATH=/Users/slawosz/code/gopath
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/sbin # Needed on mac
PATH=$PATH:$HOME/bin # local
PATH=$PATH:$GOPATH/bin # local
PATH=$PATH:$HOME/gotools/bin # gotools I use; need to do GOPATH
PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

if [ -n "$INSIDE_EMACS" ]; then
  chpwd() { print -P "\033AnSiTc %d" }
  print -P "\033AnSiTu %n"
  print -P "\033AnSiTc %d"
fi
# export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-amd64

alias zeus='nocorrect zeus'
alias tmux="TERM=screen-256color-bce tmux"
alias gopath="export GOPATH=\$(pwd)"
alias sos="export GOPATH=/Users/slawosz/code/storageos/ubuntu-edit/go"
alias szsh="source ~/.zshrc"
alias vim="vim +NERDTree"
export EDITOR=vim
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
export DISABLE_AUTO_TITLE=true

# git clone git://github.com/kennethreitz/autoenv.git ~/.autoenv
# source ~/.autoenv/activate.sh
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/Cellar/node/0.12.5/libexec/npm/bin:$PATH" # hack
export PATH="$HOME/gotools/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
export PATH="$GOPATH/bin:$PATH"
eval "$(rbenv init -)"

# read additional paths:
# export MY_PATHS="foo"
# filename=".paths"
# (while read -r line
# do
#   echo $line
#   echo $MY_PATHS
#   MY_PATHS+="$line:$MY_PATHS"
# done) < "$filename"
# echo $MY_PATHS

# The next line updates PATH for the Google Cloud SDK.
source '/Users/slawosz/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/slawosz/google-cloud-sdk/completion.zsh.inc'


alias er="launchctl load ~/Library/LaunchAgents/com.storageos.control-rsync.plist"
alias dr="launchctl unload ~/Library/LaunchAgents/com.storageos.control-rsync.plist"
alias oscd="cd /Users/slawosz/code/storageos/ubuntu-edit/go/src/code.storageos.net/scm/storageos/control && sos"
export TERM=xterm-256color
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export COUNTRY=uk
