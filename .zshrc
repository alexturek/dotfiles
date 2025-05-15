# prompt colors
export PS1="%{$(tput setaf 39)%}%n%{$(tput setaf 45)%}@%{$(tput setaf 51)%}%m %{$(tput setaf 195)%}%~%{$(tput sgr0)%}> "

# make things use color
export CLICOLOR=1

# specific colors for ls
export LSCOLORS=GxFxCxDxBxegedabagaced

# Get mise loaded
eval "$(/Users/aturek/.local/bin/mise activate zsh)"

# Alex specific shortcuts

alias fileslike="find * -type f | grep";
alias fileswith="find * -type f -print0 | xargs -0 grep -l";
alias gitst="git status";
alias gitdiff="git diff HEAD";

# Set up tab completion
autoload -Uz compinit && compinit
