export EDITOR=`which emacs`

alias sep='screen_line=$(for i in $(seq $(tput cols)); do echo -n "."; done); for i in {1..10}; do echo $screen_line; done'

scan() {
    grep -I -i -r "$1" .
}

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'%f'
COLOR_USR=$'%F{243}'
COLOR_DIR=$'%F{82}'
COLOR_GIT=$'%F{39}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '
