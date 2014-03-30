### System
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA_OPTS="-XX:MaxPermSize=128m -Xmx1024m"
export HADOOP_PREFIX=$HOME/Lib/hadoop-1.2.0
export MYSQL_HOME=/usr/local/mysql
export PATH="$MYSQL_HOME/bin:$JAVA_HOME/bin:/usr/local/bin:$HADOOP_PREFIX/bin:$PATH"
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
PS1="$GREEN\u@local$YELLOW\$(parse_git_branch)$ORANGE\$ $NO_COLOUR"

### Ruby
eval "$(rbenv init -)"

### Python
source ~/.virtual_envs/system/bin/activate
alias ipy='ipython qtconsole --pylab=inline --colors=linux --ConsoleWidget.font_size=12  &'

### Command Alias
alias ll='ls -lah'
alias be='bundle exec'
alias ss='bundle exec trinidad'
alias sc='bundle exec rails console'
alias cuke='bundle exec cucumber'
alias untar='tar -zxf'
alias es='/Applications/Emacs.app/Contents/MacOS/Emacs -nw --daemon'
alias et='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -t '
alias ec='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c '
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'

### vim clojure nailgun server
export VIMCLOJURE_SERVER_JAR="$HOME/Lib/vimclojure/server-2.3.6.jar"

### save path on cd
function cd {
    builtin cd $@
    pwd > ~/.last_dir
}

### restore last saved path
if [ -f ~/.last_dir ]
    then cd `cat ~/.last_dir`
fi

