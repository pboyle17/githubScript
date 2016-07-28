#!/bin/bash
echo Hey, what is your github username?
read username
echo Thanks, I have $username as your github username
echo what would you like the project name to be?
read projectname
echo Ok, going to go ahead and create that repo at github

curl -u $username https://api.github.com/user/repos -d '{"name":"'$projectname'"}'
$username@github.com/$username/$projectname.git
touch readme.md
echo "This file was created automatically by pboyle17's github command line repo initialization script" >> readme.md
git init
git add .
git commit -m 'intialze the repo'
git remote add origin git@github.com:$username/$projectname.git
git push origin master
