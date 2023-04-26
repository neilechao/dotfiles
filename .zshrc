export EDITOR=`which emacs`

alias sep='screen_line=$(for i in $(seq $(tput cols)); do echo -n "."; done); for i in {1..10}; do echo $screen_line; done'

scan() {
    grep -I -i -r "$1" .
}

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
