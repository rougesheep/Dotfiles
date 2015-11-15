# .bash_profile
# Prompt
if [ -f ~/.git-prompt.sh ]; then
  # Git prompt settings
  # https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
  . ~/.git-prompt.sh
  GIT_PS1_SHOWCOLORHINTS=1
  PROMPT_COMMAND='__git_ps1 "\[\e[0;32m\]\h \[\e[0;35m\]\w\[\e[0m\]" "\[\e[0;37m\] > \[\e[0m\]"'
  PS1=""
else
  # Basic Prompt
  PS1="\[\e[0;32m\]\h \[\e[0;35m\]\w\[\e[0m \[\e[0;37m\] > \[\e[0m\]"
fi

# Aliases
alias ls='ls --color'
alias grep='grep --color'
alias ll='ls -lh'
alias la='ls -lha'
