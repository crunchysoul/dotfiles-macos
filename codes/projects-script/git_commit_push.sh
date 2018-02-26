#!/bin/bash
# script to do dotfile bare git operation

# bare git dotfile alias does not work
# assign baregit operation to bash variable $GIT
GIT=(git --git-dir=$HOME/.dotconfig --work-tree=$HOME)

# git it away
${GIT[@]} commit -m 'dotfile auto commit' $1
${GIT[@]} push
${GIT[@]} status
