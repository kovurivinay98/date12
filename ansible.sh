#!/bin/bash
userid=$(id -u)
if [ $userid -eq 0 ]
then
    dnf list installed ansible
        if [ $? -ne 0 ]
        then
            dnf install ansible -y
            if [ $? -eq 0 ]
            then
                echo "Installation Success"
            else
                echo "Installation Failed"
            fi
        else
            echo "Already Installed"
        fi
else
    echo "Not Root User"
fi