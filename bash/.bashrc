# do not show host name; show git branch
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;32m\]$(__git_ps1)\n$\[\033[00m\] '

# some more ls aliases
alias lal='ls -alF'
alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'
alias cd.='cd ..'
alias sc='source'

# git alias
alias gck='git checkout'
alias gcmt='git commit'
alias gadd='git add'
alias gpll='git pull'
alias gpsh='git push'
alias gsts='git status'
alias gshw='git show'
alias gdff='git diff'

# automatically show linenumber in grep
alias grep='grep -n --color=auto'

# npm config
# NPM_PACKAGES="${HOME}/.npm-packages"
# PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
# unset MANPATH # delete if you already modified MANPATH elsewhere in your config
# export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

alias qmake5='qmake -qt5'

# good for YouCompleteMe
# alias cmake='cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON'
# alias catkin_make='catkin_make -DCMAKE_EXPORT_COMPILE_COMMANDS=ON'
# alias catkin_make_isolated='catkin_make_isolated -DCMAKE_EXPORT_COMPILE_COMMANDS=ON'

# ros setup
if [ -f /opt/ros/kinetic/setup.bash ]; then
    source /opt/ros/kinetic/setup.bash
fi
if [ -f /opt/ros/melodic/setup.bash ]; then
    source /opt/ros/melodic/setup.bash
fi
# if [ -f ~/catkin_ws/devel/setup.bash ]; then
#   source ~/catkin_ws/devel/setup.bash
# fi

# soruce ~/catkin_ws/setup.bash may pollute PYTHONPATH
# to use python3 normally, execute the following command
#export PYTHONPATH=""

# local path (it seems this is set in Ubuntu default)
# export PATH=$PATH:~/.local/bin/
v2() {
    str=''
    arr=("$@")
    for i in ${!arr[@]}; do
        if [ "$i" -eq 0 ]; then
            str+="${arr[$i]}"
        else
            str+="%20${arr[$i]}"
        fi
    done
    curl "v2en.co/$str"
}

# local dynamic lib setup
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
# customize terminal title
PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'
export CMAKE_INSTALL_PREFIX=$HOME/.local/
export CMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}:$HOME/.local
