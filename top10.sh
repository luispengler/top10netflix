#!/bin/sh

#Get the current list of top 10 and save in the movies.txt file formatted in a way youtube understands
curl https://top10.netflix.com/data/all-weeks-global.tsv > top10.tsv
cat top10.tsv | head -n 11 | sed '1d' | cut -f 4 -d "	" | sed 's/$/\%20trailer/' | sed 's/ /\%20/g' | sed 's/\:/\%3A/g' | uniq > movies.txt

# My API key
API_KEY='WRITE HERE YOUR YOUTUBE DATA API KEY'

# Loop through the titles in the movies.txt
while read -r title; do
  # Make an HTTP request to the YouTube API using curl
  response=$(curl -s "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$title&key=$API_KEY")

  # Extract the URL of the first video from the API response
  url=$(echo $response | jq -r '.items[0].id.videoId')

  # Save the trailers URLs in the playlist.txt file
  echo https://www.youtube.com/watch?v=$url >> playlist.txt
done < "movies.txt"

#Now play each one of the trailers
mpv --playlist=playlist.txt

#Now clean directory of those files
rm top10.tsv movies.txt playlist.txt
