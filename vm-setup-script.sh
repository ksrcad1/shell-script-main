#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf dnf install bash-completion -y

if [ $? -ne 0 ] #check the execution of last command (dnf install mysql -y) through -> $? 
then
    echo "Install bash-completion...FAILURE"
    exit 1
else
    echo "Install bash-completion...SUCCESS"
fi

source "/etc/profile.d/bash_completion.sh"

if [ $? -ne 0 ]
then
    echo "source /etc/profile.d/bash_completion.sh...FAILURE"
    exit 1
else
    echo "source /etc/profile.d/bash_completion.sh...SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of git...FAILURE"
    exit 1
else
    echo "Installation of Git...SUCCESS"
fi
