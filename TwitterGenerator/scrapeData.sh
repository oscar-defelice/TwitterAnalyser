#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)
################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo
   echo -e "\033[1mThis script performs the scraping of a given user name tweets\033[0m"
   echo
   echo -e "\033[1mSyntax\033[0m: ./scrapeData <username> [h|n|o] [options]"
   echo
   echo -e "\033[1margument\033[0m:"
   echo "username  the Twitter username"
   echo -e "\033[1moptions\033[0m:"
   echo "h         print this help."
   echo "n         the maximum number of tweets to download"
   echo "o         the output file path and name"
}

while getopts ":h" option;
do
   case $option in
      h) # display Help
         Help
         exit;;
   esac
done

while getopts o:n: flag
do
    case "${flag}" in
        o) output=${OPTARG};;
        n) max=${OPTARG};;
    esac
done
username=$1
outpath=${output:-"tweets.json"}
maxnum=${max:-"10"}

if test ! -z ${username}
then
  printf "Date: %s\nWe are now starting scraping tweets from @%s\n" "$date" "$username"
  snscrape --jsonl --progress --max-results $max twitter-search "from:$username" > $output
else
  echo "username argument is compulsory, see help for further instructions."
  echo "./scrapeData.sh -h"
fi
