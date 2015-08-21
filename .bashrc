export DOCKER_CERT_PATH=/Users/daijingwu/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376

eval "$(boot2docker shellinit)"

alias grep="grep -n --colo=auto"

[ -f ~/.bashrc_docker ] && . ~/.bashrc_docker
