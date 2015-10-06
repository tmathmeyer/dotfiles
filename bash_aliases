#================================#
#            exports             #
#================================#


alias exeunt='pkill terminal'
alias android-connect='simple-mtpfs -o allow_other /media/nexus7'
alias android-disconnect='fusermount -u /media/nexus7'
alias antlr4='java -jar /usr/local/lib/antlr-4.4-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'
alias slip='java -jar /usr/local/bin/slip.jar'

#================================#
#            aliases             #
#================================#

alias tmux='tmux -2'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias install='sudo pacman -S'
alias search='pacman -Ss'
alias remove='sudo pacman -Rs'

alias open='thunar'

alias ccc='ssh tjmeyer@ccc.wpi.edu'
alias hyp='ssh -Y ted@tm.wpi.edu'
alias mhtc='ssh -Y tjmeyer@mhtc.cs.wpi.edu'

alias wpi='sudo netctl start wlp2s0-WPI-Wireless'
alias rewpi='sudo netctl stop wlp2s0-WPI-Wireless && sudo netctl start wlp2s0-WPI-Wireless'


alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

alias lra='ls -Ra | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

touchdir() {
    mkdir $1
    cd $1
}

loginstall() {
    sudo pacman -S $1
    touch /home/ted/.programs/$1
}
