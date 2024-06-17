#!/bin/bash

echo "Please enter username::"

read -s USERNAME #here USERNAME is variable
# use -p to ask for prompt like below 2 lines 
#Please enter username::
#USERNAME
echo "Please enter password::"

read -s PASSWORD

echo "Username is: $USERNAME, Password is: $PASSWORD"