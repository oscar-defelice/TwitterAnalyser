#!/bin/bash

while getopts u:o:n: flag
do
    case "${flag}" in
        u) username=${OPTARG};;
        o) output=${OPTARG};;
        n) max=${OPTARG};;
    esac
done

printf "Date: %s\nWe are now starting scraping tweets from @%s\n" "$date" "$username"

snscrape --jsonl --progress --max-results $max twitter-search "from:$username" > $output
