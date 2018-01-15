#!/bin/sh

sudo /user/bin/mongod &
#cd $HOME/lazar-gui &&
#unicorn -p 8088 -E production

ruby $HOME/lazar/test/all.rb
