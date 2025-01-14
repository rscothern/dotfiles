#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
setopt NOBGNICE
## restart running processes on exit
#setopt HUP

setopt PROMPT_SUBST

## history
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
setopt APPEND_HISTORY            # append to history file
setopt HIST_NO_STORE             # Don't store history commands

export HISTSIZE=130000
export SAVEHIST=130000
export HISTFILE=~/.history

## never ever beep ever
setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
MAILCHECK=0

# autoload -U colors
#colors

# User specific aliases and functions for all shells
export EDITOR=emacs
export HOST=$(hostname)

autoload -U select-word-style
select-word-style bash

function quotify()
{
    if [ "x$1" = "x-" ]; then
        cat;
    else
        cat $1| sed 's/^\|$/"/g'|paste -sd,
    fi
}

alias pst='ps faxo stat,euid,ruid,tty,tpgid,sess,pgrp,ppid,pid,pcpu,comm'
alias cp='cp --backup=numbered'
alias ln='ln --backup=numbered'
alias mv='mv -f --backup=numbered'
alias now="date +%s"
