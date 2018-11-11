source ~/.bash/aliases

export GREP_OPTIONS='--color=auto'
export HOSTNAME="LOCAL"
export HOSTNAME_SHORT="${HOSTNAME%%.*}"
export HISTFILESIZE=
export EDITOR=vim

 alias C='clear'
 alias c='cd'
 alias d='docker'
 alias dc='docker-compose'
 alias de='docker exec -it'
 alias g='git'
 alias G="git add -A && git commit -m 'latest' && git push"
 alias gA='git add -A && git commit -m 'latest' && git push'
 alias gcb='git checkout -b'
 alias gcm='git checkout master'
 alias gl='git pull'
 alias GL='git pull origin master'
 alias gp='git push'
 alias l="clear && ls -l"
 alias L='clear && ls -la'
 alias P='vi ~/.bash_profile ~/.bash/* ~/.vimrc && source ~/.bash_profile'
 alias v='vim'
