alias rm='rm -i'
alias ls="ls -ltrG"

alias httpdump='sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E "Host\: .*|GET \/.*"'

alias ip="python -c \"import socket; print '\n'.join(socket.gethostbyname_ex(socket.gethostname())[2])\""

alias h='history'
alias tu="top -o cpu"
alias tm="top -o vsize"
alias g="git status"
alias ff="open -a Firefox"

alias l="ls -l"
alias ..="cd .."
alias cdd="cd -"

alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"

alias ports="sudo lsof -iTCP -sTCP:LISTEN -P"
alias t="tree -L 1 -C -h"

alias webshare='python -m SimpleHTTPServer'
alias shipit='git push origin master && git push heroku master'

alias e="emacs"
alias edit='emacsclient $@'

alias hl='pbpaste | highlight --font="Source Code Pro" --style=anotherdark --syntax=csharp -O rtf | pbcopy'

alias startmongo='mongod --profile=1 --slowms=1 --config /usr/local/etc/mongod.conf'
alias mongologs='tail -f /usr/local/var/log/mongodb/mongo.log'

# Ruby ones
alias bi='bundle install'

alias refresh='git stash && git pull --rebase && git stash apply'
