export EDITOR=vim

# Eternal bash history.
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history
export HISTCONTROL=ignoreboth:erasedups
PROMPT_COMMAND="history -a; $PROMPT_COMMAND" # Force prompt to write history after every command.

bind "set show-all-if-ambiguous on"
bind "set completion-display-width 1"        # Displays completion list in a vertical line
bind "set menu-complete-display-prefix on"   # Partial completion on first tab, cycle results on second tab
bind "TAB: menu-complete"
bind '"\e[Z": menu-complete-backward'
bind "set completion-ignore-case on"

alias ll='ls -la'
alias grep='grep --color=auto -i'
h(){
    history | grep -i "$1";
}

# Optional for terminals not supporting true colors (for vim solarized colorscheme)
sh ~/.vim/colors/solarized.sh
