# mac osx specific stuff
if [[ "$OSTYPE" =~ "darwin"* ]]; then
  export PATH=$PATH:/opt/homebrew/bin
  BREW_PATH="$(brew --prefix)"

  GUN_PATH=/opt/homebrew/opt/gnu-getopt/bin
  GNU_PATH=/opt/homebrew/opt/gawk/libexec/gnubin
  GNU_PATH=$GNU_PATH:/usr/local/opt/gnu-sed/libexec/gnubin
  GNU_PATH=$GNU_PATH:/usr/local/opt/gnu-tar/libexec/gnubin

  # Add gnu versions of utilities (from their brew install text)
  PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
  PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"
  PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"
  PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
  PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"
  PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"


  PATH=$BREW_PATH:$PATH:~/bin:./node_modules/.bin:.bin

  # Add man page links
  MANPATH="/opt/homebrew/opt/coreutils/libexec/gnuman:$MANPATH"
  MANPATH="/opt/homebrew/opt/gawk/libexec/gnuman:$MANPATH"
  MANPATH="/opt/homebrew/opt/gnu-getopt/gnuman:$MANPATH"
  MANPATH="/opt/homebrew/opt/gnu-sed/libexec/gnuman:$MANPATH"
  MANPATH="/opt/homebrew/opt/gnu-tar/libexec/gnuman:$MANPATH"
  MANPATH="/opt/homebrew/opt/grep/libexec/gnuman:$MANPATH"

  # old (delete these if man pages work)
  # GNU_MANPATH=/usr/local/opt/coreutils/libexec/gnuman
  # GNU_MANPATH=$GNU_MANPATH:/usr/local/opt/gnu-sed/libexec/gnuman
  # GNU_MANPATH=$GNU_MANPATH:/usr/local/opt/gnu-tar/libexec/gnuman
  #
  # MANPATH=$GNU_MANPATH:$MANPATH
fi

# copied from http://unix.stackexchange.com/questions/148/colorizing-your-terminal-and-shell-environment
export TERM=xterm-color
# export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# this is here for GNU ls (the other is for BSD ls)
# export LS_COLORS="di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

# BSD ls
# export LS_COLORS=$LSCOLORS
# export LS_OPTIONS='--color=auto'

# username @ hostname shortpath>
export PS1='\[\e[92m\]\u\[\e[0m\] @ \[\e[93m\]\h\[\e[0m\] \[\e[96m\]\w\[\e[0m\]> '

# git shortcuts
alias gitst="git status";
alias gitdiff="git diff HEAD";

# git autocomplete in bash (assumes homebrew)
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

alias ls="ls --color=auto" # this is for GNU ls
alias grep="grep --color=auto" # this is for GNU grep

# Set iterm window title to PWD
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

# Python
# If there's a virtualenv in this directory, use its bin
PATH=./env/bin:$PATH

# To make 'psql' work without -h commands
export PGHOST=localhost