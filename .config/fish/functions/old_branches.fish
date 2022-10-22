function old_branches
   git branch --sort=committerdate | xargs echo
end
