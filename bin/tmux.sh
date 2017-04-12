#!/bin/bash -
#===============================================================================
#
#          FILE: tmuxStarter.sh
#
#         USAGE: ./tmuxStarter.sh
#
#   DESCRIPTION: This script checks to see if tumx has been started. If it has
#                is attches to the sesssion if it hasn't if starts it
#
#       OPTIONS:
#  REQUIREMENTS: tmux
#          BUGS:
#         NOTES: this will be run from bash_profile
#        AUTHOR: Kyle San Clemente
#       CREATED: 03-31-2017
#      REVISION:
#===============================================================================

export PATH="$HOME/config/bin:$PATH"

#tmux autostart no loop
if command -v tmux>/dev/null; then #
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux attach
fi

if [ -z "$TMUX" ]; then
 base_session='my_session'
   #Create a new session if it doesn't exist
   tmux has-session -t $base_session || tmux new-session -d -s $base_session
   # Are there any clients connected already?
   client_cnt=$(tmux list-clients | wc -l)
   if [ $client_cnt -ge 1 ]; then
     session_name=$base_session"-"$client_cnt
     tmux new-session -d -t $base_session -s $session_name
     tmux -2 attach-session -t $session_name \; set-option destroy-unattached
   else
     tmux -2 attach-session -t $base_session
   fi
fi


