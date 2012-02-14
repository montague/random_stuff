alias update="rvm get head; brew update; rvm reload;"
alias s="source ~/.bash_profile"
alias oe="open /Applications/Emacs.app"
alias ls="ls -alFG"
alias e="emacs"
alias c="clear"
alias ep="e ~/.bash_profile"
alias p="cat ~/.bash_profile"
alias o="open"
alias nc="mate /opt/nginx/conf/nginx.conf"
alias npid="ps awx | grep nginx"
alias pg="cat ~/.gitconfig"
alias eg="emacs ~/.gitconfig"
alias dfm="git diff | mate"
alias tlog="tail -f log/development.log"
alias nb="sudo kill -HUP"
alias showall="defaults write com.apple.finder AppleShowAllFiles"
alias mongostart="mongod run --config /usr/local/Cellar/mongodb/1.8.3-x86_64/mongod.conf"

#location shortcuts
alias cdp="cd ~/work/projects"
alias cdw="cd ~/work"
alias cdd="cd ~/Desktop"
alias cdc="cd ~/code"
alias cddc="cd ~/Dropbox/code"
alias cdsmb="cd ~/work/projects/smb_portal"
alias cdww="cd ~/work/projects/where_web"
alias cdnb="cd ~/work/projects/nearbuys"
alias cdh="cd ~/Dropbox/me/hydrogen/hydrogen_app"

#rails shortcuts
alias r="rake"
alias lc="r log:clear"
function rt(){
    rake test TEST=$1;
}
function rtt(){
    ruby -I "test:lib" $1 -n test_$2;
}

#command line prompt

#shows ruby version, current dir, current branch
export PS1="\[\e[0m\][\$(~/.rvm/bin/rvm-prompt i v g)]\[\e[1;36m\]\$(parse_git_branch)\[\e[0m\]:\W$ \[\e[0;92m\]" 

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PATH="/usr/local/bin:/usr/local/sbin:$PATH" # Add MySql config
export EDITOR="/usr/local/bin/mate"

#for nginx
export PATH="/opt/nginx/sbin:$PATH"

#for git completion
source ~/.git-completion.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
