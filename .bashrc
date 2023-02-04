export EDITOR=`which emacs`

alias sep='screen_line=$(for i in $(seq $(tput cols)); do echo -n "."; done); for i in {1..10}; do echo $screen_line; done'

scan() {
    grep -I -i -r "$1" .
}
