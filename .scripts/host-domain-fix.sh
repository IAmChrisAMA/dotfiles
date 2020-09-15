#! /bin/bash

EDITOR=vim

##############################

echo "Make sure you are 100% the connection you have is proper or else it'll assume outgoing everytime."
echo "Ctrl-C or Ctrl-D to cancel now. Otherwise Press any key to continue..."
read -p ""

if wget http://ipecho.net/plain -O - -q | grep -A 2 --quiet -oh "107.221."    # Add more to the public to make it more accurate however this should be fine. 
    then
        sed '8 s/#192.168.1.66/192.168.1.66/g' /etc/hosts > /tmp/hosts
        mv /tmp/hosts /etc/hosts
        chown root: /etc/hosts
else
        sed '8 s/192.168.1.66/#192.168.1.66/g' /etc/hosts > /tmp/hosts
        mv /tmp/hosts /etc/hosts
        chown root: /etc/hosts
fi

#############################
