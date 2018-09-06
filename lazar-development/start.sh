#!/bin/sh

sudo /usr/bin/mongod &
R CMD Rserve --vanilla & 

# fetch and load database content
#if [ ! -d "$HOME/dump" ]; then
#  wget https://dump.in-silico.ch/dump.tar.gz
#  tar xfvz dump.tar.gz
#  mongorestore
#fi

# run tests
#ruby $HOME/lazar/test/all.rb

cd $HOME/lazar-gui &&
unicorn -p 8088 -E production
