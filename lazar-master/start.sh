#!/bin/sh

sudo mongod &
R CMD Rserve --vanilla &
cd $HOME/lazar-gui &&
unicorn -p 8088 -c unicorn.rb -E production
