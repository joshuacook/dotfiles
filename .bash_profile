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

if [ -f ~/.logins ]; then
    . ~/.logins
fi

cd -

# Config
# Make changes here to describe your environment
export USE_TERMINAL_THEMES=1
export GREP_OPTIONS='--color=auto' 
export HOSTNAME="LOCAL"
if [ HOSTNAME = "Joshuas-MacBook-Pro.local" ]; then
    HOSTNAME='LOCAL'
fi
export HOSTNAME_SHORT="${HOSTNAME%%.*}"
export ME=$(whoami)
export HISTFILESIZE=
export EDITOR=vim

GIT_PS1_SHOWCOLORHINTS=true PROMPT_COMMAND='__git_ps1 "${ME}@${HOSTNAME}:\w" "\n\\\$ "'


# added by Anaconda3 4.2.0 installer
export PATH="/Users/joshuacook/anaconda3/bin:$PATH"

# Add GHC 7.10.3 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.10.3.app"
if [ -d "$GHC_DOT_APP" ]; then
      export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

