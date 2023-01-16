parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
#export PS1="\u@\h:\w\$(parse_git_branch)> "
export PS1="\[\e[01;36m\]\u\[\e[00m\]@\[\e[01;32m\]\h\[\e[00m\]:\[\e[01;33m\]\w\[\e[01;31m\]\$(parse_git_branch)\[\e[00m\]> "
