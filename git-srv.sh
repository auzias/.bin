#!/bin/bash

#http://technology.mattrude.com/2009/07/creating-a-secure-git-repository-server/

mkdir "$1"
cd "$1"
git init --bare
echo "*TODO on git client:"
echo 'mkdir "$1"'
echo 'cd "$1"'
echo "touch README"
echo "git add README"
echo "git commit -m 'Added README file, first commit'"
echo "git remote add origin ssh://user@server_git:port_ssh$pwd"
echo "git push origin master"
