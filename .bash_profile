export PATH="/usr/local/share/python:/usr/local/bin:~/anaconda/bin:$PATH"
export PATH="/usr/local/texlive/2016basic/bin/universal-darwin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH=$HOME/local/bin:$PATH

cd ~
. .bash/aliases
. .bash/functions

if [ -f .bash/git-completion.sh ]; then
  . .bash/git-completion.sh
  . .bash/git-prompt.sh
fi

if [ $(uname) = 'Darwin' ]; then
    . ~/.logins
    export JAVA_HOME=$(/usr/libexec/java_home)
    LS_COLORS=gxfxbEaEBxxEhEhBaDaCaD
    export LS_COLORS
fi
cd -

# Config
# Make changes here to describe your environment
export USE_TERMINAL_THEMES=1
export GREP_OPTIONS='--color=auto' 
export HOSTNAME="$(hostname)"
if [ HOSTNAME = "15MBP-010757.LOCAL" ]; then
    HOSTNAME='LOCAL'
fi
export HOSTNAME_SHORT="${HOSTNAME%%.*}"
export ME=$(whoami)
export HISTFILESIZE=
export EDITOR=vim

GIT_PS1_SHOWCOLORHINTS=true PROMPT_COMMAND='__git_ps1 "${ME}@${HOSTNAME^^}:\w" "\\\$ "'
