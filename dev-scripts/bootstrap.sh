#!/bin/bash

if [ ! -f $HOME/.local/bin/brownie ] && \
       [ ! -f /usr/bin/brownie ] ; then
    pip install eth-brownie
    brownie pm install OpenZeppelin/openzeppelin-contracts@3.2.0
fi

export PATH=$HOME/.local/bin:$PATH
cd ..
if [ ! -f /usr/bin/solc ] ; then
    sudo npm install -g solc
    pushd /usr/bin
    sudo ln -s solcjs solc
    popd
fi

if [ ! -f /usr/bin/ganache-cli ] ; then
    sudo npm install -g ganache-cli
fi

brownie compile

