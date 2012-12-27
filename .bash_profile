if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

export JAVA_HOME="/Library/Java/Home"
export HADOOP_HOME=$HOME/Lib/hadoop
export PATH="$JAVA_HOME/bin:/usr/local/mysql/bin:$PATH"
export PATH=$HOME/Lib/pig/bin:$PATH
export PATH=$HADOOP_HOME/bin:$PATH

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

export JAVA_OPTS="-XX:MaxPermSize=128m -Xmx1024m"

[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

export CLICOLOR=1

export LSCOLORS=GxFxCxDxBxegedabagaced

eval "$(rbenv init -)"

alias diffs='diff --side-by-side --suppress-common-lines'

source ~/.git-completion.bash

export CODE_DIR=$HOME/Projects/code
alias ll='ls -lah'
alias be='bundle exec'
alias ss='bundle exec trinidad'
alias sc='bundle exec rails console'
alias cuke='bundle exec cucumber'
alias ge='cd $CODE_DIR/extranet'
alias ga='cd $CODE_DIR/adServer'
alias untar='tar -zxf'

function jstest() {
  ant -Dargs="$1" -f tags/build/build.xml start-and-run-all
}

export PATH=$HOME/Projects/data-analysis/bin:$PATH

# Show current git branch
function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u@machine$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

source ~/.virtual_envs/system/bin/activate

export S3=s3://intentmedia-hawk-output/keshi

alias ipy='ipython qtconsole --pylab=inline'

alias s3go='bin/push_to_s3.sh s3://intentmedia-hawk-output/keshi/local-jars'
