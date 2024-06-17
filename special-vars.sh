#!/bin/bash

echo "All variables using \$@: $@"
echo "Number of variables passed using \$#: $#"
echo "Script Name using \$0: $0"
echo "Current working directory using \$PWD: $PWD"
echo "Home directory of current user using \$HOME: $HOME"
echo "Which user is running this script\$USER: $USER"
echo "Hostname using \$HOSTNAME variable: $HOSTNAME"
echo "Process ID of the current shell script uisng \$$: $$"
sleep 60 &
echo "Process ID of last background command \$!: $!"