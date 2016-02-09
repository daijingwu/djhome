export DOCKER_CERT_PATH=/Users/daijingwu/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376

# color theme
alias ls='ls -Gh'
alias ll='ls -l'
alias gam="~/gam/gam.py"
export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export LSCOLORS=ExFxBxDxCxegedabagacad
#export PS1='\[[\e[0;33m\]\u\[\e[m\]@\[\e[0;32m\]\h\[\e[m\] \[\e[0;36m\]\W\[\e[m\]]# '
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

capture() {
    sudo dtrace -p "$1" -qn '
        syscall::write*:entry
        /pid == $target && arg0 == 1/ {
            printf("%s", copyinstr(arg1, arg2));
        }
    '
}

eval "$(boot2docker shellinit)"

alias grep="grep -n --colo=auto"

[ -f ~/.bashrc_docker ] && . ~/.bashrc_docker
