#
# /.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

#PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w \033[1;36m\][\@] \033[1;31m\]\$\[\033[0m\] '

## Git_Prompt
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1

source ~/git-prompt.sh

PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w \[\033[1;36m\][\@] \[\033[1;31m\]\$\[\033[0m\]$(__git_ps1) '

####
alias ramram='echo 3 | sudo tee /proc/sys/vm/drop_caches'
alias ls='lsd'
alias ll='lsd -lah'
alias vi=nvim
alias vim=nvim
alias sudo='sudo '
alias x='startx'
#alias w='/usr/lib/plasma-dbus-run-session-if-needed /usr/bin/startplasma-wayland'
alias w='niri-session'
alias cpv='rsync -ah --info=progress2'
#alias lisvpn='sudo openvpn --config /home/anishjoshi/Downloads/anish.joshi@pdc01.lisnepal.com.np__ssl_vpn_config.ovpn --auth-user-pass /home/anishjoshi/Downloads/pass.txt'
alias ssh='TERM=xterm-256color ssh'
alias night='redshift -O 3500'
alias day='redshift -O 5500'
alias c="clear"
alias cd..="cd .."
alias h="history"
alias hgrep='history | grep'
alias mv='mv -i'
alias cp='cp -i'
alias psmem="ps auxf | sort -nr -k 4"
alias f='find . -name'
alias ff='find / -name'
alias ref='sudo reflector --verbose --sort rate -l 10 --save /etc/pacman.d/mirrorlist --download-timeout 10000'
alias truenas='sudo mount --verbose -t cifs //192.168.1.154/FileSharing /mnt/truenas -o username=arch-aj,password=arch-aj,uid=3007,gid=3000'
alias discordo='discordo --token '
alias validate_jenkins='curl --user "jenkins:jenkins" -X POST -F "jenkinsfile=<Jenkinsfile" http://192.168.1.214:8080/pipeline-model-converter/validate'
#alias cat='bat'
export PATH=/usr/local/bin/:$PATH
export EDITOR="nvim"
export VISUAL="nvim"
eval "$(fzf --bash)"

#alias s='XDG_CURRENT_DESKTOP=kde sway --unsupported-gpu'

#complete -C '/usr/local/bin/aws_completer' aws
