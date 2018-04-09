#!/bin/sh

sudo mongod &
R CMD Rserve --vanilla &
lazar-start
