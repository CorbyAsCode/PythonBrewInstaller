#!/bin/bash

# This is a script to install pythonbrew

sudo easy_install pythonbrew && \
    echo "Finalizing pythonbrew installation";\
    pythonbrew_install

echo "[[ -s '$HOME/.pythonbrew/etc/bashrc' ]] && source '$HOME/.pythonbrew/etc/bashrc'" >\
    ~/.bashrc

source ~/.bashrc

echo "Installing Python 2.7.5 using pythonbrew"

pythonbrew install 2.7.5 && \
    python switch 2.7.5

which python
