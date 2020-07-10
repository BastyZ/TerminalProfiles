# BastyZ
# add git branch to prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[01;32m\]\u\[\033[01;30m\]@\[\033[01;36m\]\h \[\033[34m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

