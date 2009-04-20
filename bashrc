source ~/.j.sh
source ~/.git-completion.sh
complete -o default -o nospace -F _git gh

if [ -f ~/.aliases ]; then
. ~/.aliases
fi


export PATH=~/bin:$PATH

function pless {
  pygmentize $1 | less -r
}

# Cheat autocomplete
function complete_cheat {
COMPREPLY=()
if [ $COMP_CWORD = 1 ]; then
sheets=`cheat sheets | grep '^ '`
COMPREPLY=(`compgen -W "$sheets" -- $2`)
fi
}
complete -F complete_cheat cheat


# http://henrik.nyh.se/2008/12/git-dirty-prompt
# http://www.simplisticcomplexity.com/2008/03/13/show-your-git-branch-name-in-your-prompt/
#   username@Machine ~/dev/dir[master]$   # clean working directory
#   username@Machine ~/dev/dir[master*]$  # dirty working directory

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '

export EDITOR='vim'
