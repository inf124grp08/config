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

# The -A flag makes new-session behave like attach-session if
# session-name already exists
# -s is the unique session name
tmux new-session -A -s "default"
