export SRC_HOME=<write_path_to_src>

# Force local path (e.g. python3 from brew)

set -gx PATH /usr/local/bin /usr/local/sbin $PATH

# Virtualfish

eval (python3 -m virtualfish compat_aliases)

if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
end

# virtualenvwrapper

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$SRC_HOME
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# source /usr/local/bin/virtualenvwrapper.sh

# Some aliases

alias grep='grep -i --colour'
alias ll='ls -la'
alias listening='lsof -Pni'

# Exporting

#export LC_CTYPE=en_US.UTF-8
export EDITOR='vim'
export SQLALCHEMY_DATABASE_URI_CLAIMSTORE=postgresql://user:password@localhost/claimstore
export SQLALCHEMY_DATABASE_URI_INVENIO=postgresql://user:password@localhost/invenio
export SQLALCHEMY_DATABASE_URI=$SQLALCHEMY_DATABASE_URI_INVENIO

# Initiate in a src directory
cd $SRC_HOME 

# openstack and docker

#function rssh() { ssh -C -i cloud.key root@$RDOCKERHOST "$@" ;}
#function rdocker() { ssh -C -i cloud.key root@$RDOCKERHOST "docker $@" ;}
#export RDOCKERHOST=some.remote.host.com

# docker

#function docker-clean(){
#  docker ps -a | grep $1 | awk '{print $1;}' | xargs docker rm -f;
#  docker images | grep $1 | awk '{print $3;}' | xargs docker rmi -f;
#}

# encrypt

#function enc() { openssl enc -des3 -salt -in $1 -out $1.enc ;}
#function dec() { openssl enc -d -des3 -in $1.enc -out $1 ;}
#function dbuild-enc() { dec Dockerfile-production; docker build -f Dockerfile-production .; enc Dockerfile-production; rm Dockerfile-production; }
