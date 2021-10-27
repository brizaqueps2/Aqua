#
#   bashrc
#

# copy the file
# cp -av .bashrc /etc/skel/
# cp -av .bashrc /root/
# cp -av .bashrc /home/username/

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

alias n20="nice -n -20"
alias n19="nice -n -19"

PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h '; else echo '\[\033[01;32m\]\u@\[\033[01;31m\]\h '; fi)\[\033[01;31m\]:(\[\033[01;34m\] \w \\$\[\033[00m\] "

# Bash info
if [ -f /etc/bash_fedoraInfo ];
then
    . /etc/bash_fedoraInfo
fi