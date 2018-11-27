#!/bin/bash

if ! ansible --version | grep 2.7.2
then
    if apt-get update -q
    then
        echo "Apt updated"
    fi
    if apt-get install -yq python-pip python-dev libffi-dev libssl-dev
    then 
        echo "Dependencies installed"
    fi
    if pip install -U pip ansible==2.7.2
    then 
        echo "Ansible 2.7.2 installed"
    fi
fi
