### System
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
export JAVA_HOME="/Library/Java/Home"
export JAVA_OPTS="-XX:MaxPermSize=128m -Xmx1024m"
export HADOOP_HOME=$HOME/Projects/code/conf/hadoop-0.20.2-CDH3B4
export PATH="$JAVA_HOME/bin:/usr/local/mysql/bin:$PATH"
export PATH=$HOME/Lib/pig/bin:$PATH
export PATH=$HADOOP_HOME/bin:$PATH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export CPPFLAGS=-I/opt/X11/include

### SBT for Scala
export SBT_OPTS='-Xms512m -Xmx1024m -XX:MaxPermSize=1024m'

### Git
alias diffs='diff --side-by-side --suppress-common-lines'
source ~/.git-completion.bash
# Show current git branch
function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"
PS1="$GREEN\u@machine$YELLOW\$(parse_git_branch)$ORANGE\$ $NO_COLOUR"

### Ruby
eval "$(rbenv init -)"

### Python
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc
source ~/.virtual_envs/system/bin/activate
alias ipy='ipython qtconsole --pylab=inline --colors=linux --ConsoleWidget.font_size=12  &'

### Command Alias
alias ll='ls -lah'
alias be='bundle exec'
alias ss='bundle exec trinidad'
alias sc='bundle exec rails console'
alias cuke='bundle exec cucumber'
alias untar='tar -zxf'

### vim clojure nailgun server
export VIMCLOJURE_SERVER_JAR="$HOME/Lib/vimclojure/server-2.3.6.jar"
