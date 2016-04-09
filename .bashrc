#greetings
echo "May the force be with you, `logname`!"

#python promt random color or bg color
export PYTHONSTARTUP=./.py_promt

# alias

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

gpip(){
     PIP_REQUIRE_VIRTUALENV="" pip "$@"
   }

#python versions 
alias py2="python"
alias py3="python3"


# Set up the Terminal colors
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
reset=$(tput sgr0)

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# and the prompt
if [[ "$logname" != "root" ]]; then
    logname="$"
else
    logname="#"
fi


# git stuff
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[$red\]\w \[$yellow\]>\[$green\] $logname\[$blue\]\$(parse_git_branch) \[$reset\]"

# Setting PATH
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
