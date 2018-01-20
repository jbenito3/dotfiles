set -gx PATH /usr/local/bin /usr/local/sbin $PATH

eval (python3 -m virtualfish compat_aliases)

if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
end


alias grep='grep -i --colour'
alias ll='ls -la'
alias listening='lsof -Pni'

export EDITOR='vim'
# export LC_CTYPE=en_US.UTF-8

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/cernbox/CERN/dev/src
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export SQLALCHEMY_DATABASE_URI_CLAIMSTORE=postgresql://user:pass@localhost/claimstore
export SQLALCHEMY_DATABASE_URI_INVENIO=postgresql://user:pass@localhost/invenio
export SQLALCHEMY_DATABASE_URI=$SQLALCHEMY_DATABASE_URI_INVENIO
# source /usr/local/bin/virtualenvwrapper.sh

# docker

#function docker-clean(){
#  docker ps -a | grep $1 | awk '{print $1;}' | xargs docker rm -f;
#  docker images | grep $1 | awk '{print $3;}' | xargs docker rmi -f;
#}

# encrypt
#function enc() { openssl enc -des3 -salt -in $1 -out $1.enc ;}
#function dec() { openssl enc -d -des3 -in $1.enc -out $1 ;}
#function dbuild-enc() { dec Dockerfile-production; docker build -f Dockerfile-production .; enc Dockerfile-production; rm Dockerfile-production; }

cd $HOME/cernbox/CERN/dev/src

# tmux
# ssh() {
#  tmux rename-window "$*"
#  command ssh "$@"
#  echo "Counting to 60"
#  sleep 60 && exit
#  tmux rename-window "bash (exited ssh)"
#}
