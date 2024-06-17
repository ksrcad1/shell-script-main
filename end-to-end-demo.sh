#!/bin/bash

#syntax to print the messages directly
echo "This is a Direct message"
#declare a variable and store the message in variable and the print
MESSAGE="This message is form the MESSAGE variable"
#referring variable
echo "using:: fomat-1 \$MESSAGE :: $MESSAGE "
echo "using:: fomat-2 \${MESSAGE} :: ${MESSAGE}"

#read the values from the command line as input
echo "Please enter username::"
read -s USERNAME1  # what ever the user enters will be stored in the USERNAME avriable
read -p "Please enter username2::" USERNAME2  # single line for prompt and entering value.

echo "Username1 is: $USERNAME1, and Username2 is: $USERNAME2"