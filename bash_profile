# .bash_profile
# Bash Completion
if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  source "$(brew --prefix)/etc/bash_completion"
fi
# Prompt
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
  GIT_PS1_SHOWCOLORHINTS=1
  PROMPT_COMMAND='__git_ps1 "\[\e[0;32m\]\h \[\e[0;35m\]\w\[\e[0m\]" "\[\e[0;37m\] > \[\e[0m\]"'
  PS1=""
else
  # Basic Prompt
  PS1="\[\e[0;32m\]\h \[\e[0;35m\]\w\[\e[0m\] \[\e[0;37m\] > \[\e[0m\]"
fi

# Aliases
alias ls='ls -G'
alias grep='grep --color'
alias ll='ls -lh'
alias la='ls -lha'
