#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y

if [ $? -ne 0 ] #check the execution of last command (dnf install mysql -y) through -> $? 
then
    echo "Installation of mysql...FAILURE"
    exit 1
else
    echo "Installation of mysql...SUCCESS"
fi

dnf remove mysql -y

if [ $? -ne 0 ]
then
    echo "mysql removal...FAILURE"
    exit 1
else
    echo "mysql removal...SUCCESS"
fi

echo "is script proceeding?"