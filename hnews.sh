#!/bin/bash
# Created by ak fluge
# Color config
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
# art install apt-get install toilet
echo "╻ ╻┏━┓┏━╸╻┏ ╻┏┓╻┏━╸┏┓╻┏━╸╻ ╻┏━┓
┣━┫┣━┫┃  ┣┻┓┃┃┗┫┃╺┓┃┗┫┣╸ ┃╻┃┗━┓
╹ ╹╹ ╹┗━╸╹ ╹╹╹ ╹┗━┛╹ ╹┗━╸┗┻┛┗━┛
"
echo "make a choice"
# Declare variable choice and assign value 4
choice=4
# Print to stdout
 echo "${green}1. News"
 echo "${green}2. Time"
 echo "${green}3. Info"
 echo -n "${reset}Please choose a word [1,2 or 3]? "
# Loop while the variable choice is equal 4
# bash while loop
while [ $choice -eq 4 ]; do
 
# read user input
read choice
# bash nested if/else
if [ $choice -eq 1 ] ; then
 
        echo "${red} > > > ${reset}News"

        keyword="title" # search content keyword


if (curl -s "https://news.ycombinator.com/" | grep "$keyword" | sed 's/<\/*[^>]*>//g') #hacking news

then
        echo "Success!"
else
        echo "Error!"
    fi

else                   

        if [ $choice -eq 2 ] ; then
                 echo -e "${red} > > > ${green}Time" DATE=`date '+%Y-%m-%d %H:%M:%S'` # time and date

        else
         
                if [ $choice -eq 3 ] ; then
                        echo "${red} > > > ${green}simple script version 1.0${red} < < <" # Info

                else
                        echo "${reset}Please make a choice between 1-3 !"
                        echo "1. News"
                        echo "2. Time"
                        echo "3. Info"
                        echo -n "${reset}Please choose a word [1,2 or 3]? "
                        choice=4
                fi   
        fi
fi
done 
