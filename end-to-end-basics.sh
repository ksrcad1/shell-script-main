#!/bin/bash

#syntax to print the messages directly
echo "This is a Direct message"
#declare a variable and store the message in variable and the print
MESSAGE="This message is form the MESSAGE variable"
#referring variable
echo "using:: fomat-1 \$MESSAGE :: $MESSAGE "
echo "using:: fomat-2 \${MESSAGE} :: ${MESSAGE}"

#read the values from the command line as input
echo "Please enter username1::"
read -s USERNAME1  # -s slient, what ever the user enters will be stored in the USERNAME avriable
read -p "Please enter username2::" USERNAME2  # single line for prompt and entering value.
# -p will not make it silent, so use both
read -sp "Please enter username3::" USERNAME3 # -ps throws error, it is -sp, silent first, then prompt
echo "Username1 is: $USERNAME1, and Username2 is: $USERNAME2 , and Username3 is: $USERNAME3"
#https://ryanstutorials.net/bash-scripting-tutorial/bash-input.php

#array in shell script
#just like in the programming languages , you can use arrays in shell scripts.
MYARRAY=("element1" "element2" "element3" "element4") #declaration
# to access array elements, you can loop through the array elements or loop through indicies.
echo "the element at index-0 is: ${MYARRAY[0]}"
echo "All elements of and array can be printed using 'array[@]' : ${MYARRAY[@]}"
echo "looping thorugh the array elements"
for str in ${MYARRAY[@]}; do #declaration
  echo $str
done
#

## passing the arguments from cmd line 
NUMBER=$1

if [ $NUMBER -gt 10 ]
then
    echo "Given number $NUMBER is greater than 10"
else
    echo "Given number $NUMBER is less than 10" 
fi

#-gt, -lt, -eq, -ge, -le


for str in ${MYARRAY[@]}; do #declaration
  #echo $str
  if [ $str == "element1" ]
  then
    echo "executed if condtion and element is: $str"
  else
    echo "exiting the loop, condition failed"
    exit 1
  fi
done
