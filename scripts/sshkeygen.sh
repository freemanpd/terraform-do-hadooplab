#!/bin/bash
set -x

SSH_KEY_APPLY () {

FILE=../hadooplab_private_key
    
    if [ -e "$FILE" ]; then
        echo "$FILE exists. not creating. run make rebuild"
        else
        ssh-keygen -b 2048 -t rsa -f ../hadooplab_private_key -q -N "" <<< y
    fi

}

SSH_KEY_DESTROY () {

    rm -rf ../hadooplab_private_key*

}

case "$1" in
    apply)
    SSH_KEY_APPLY
    ;;

    destroy)
    SSH_KEY_DESTROY
    ;;
    
    rebuild)
    SSH_KEY_DESTROY
    SH_KEY_APPLY
    ;;
    
    *)
    echo $"Usage: $0 {apply|destroy}"
    exit 1
esac
