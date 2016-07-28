#!/bin/bash
echo Hey, what is your github username?
read username
echo Thanks, I have $username as your github username
echo what would you like the project name to be?
read projectname
echo Ok, going to go ahead and create that repo at github
 curl -u $username https://api.github.com/user/repos -d '{"name":"'$projectname'"}'
echo make sure you initialze your git remote with: git remote add origin $username@github.com/$username/$projectname.git
