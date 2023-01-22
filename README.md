# Netflix Global Top 10
This script opens in mpv the trailer of the weekly top 10 of Netflix under the Films (English), Films (Non-English), TV (English), or TV (Non-English) categories. 

![image](https://user-images.githubusercontent.com/71613402/213900364-a1f3c791-0026-4415-956f-51a88de5c917.png)

The screenshot above is from this website: https://top10.netflix.com/

# Dependencies
The only dependency needed is the mpv player. You can find instalation instructions at https://mpv.io/installation/

# Running
First grab the file we will be running. It is located in this repository. You can download it by running: 
```
curl https://raw.githubusercontent.com/luispengler/top10netflix/main/top10.sh > top10.sh
```
You need to make it executable in order to run the top10.sh file. Do it by running:
```
chmod +x top10.sh
```
Now you have to write your API Key for the program to work. To get a youtube API, create an account at https://developers.google.com/ , then create a project at https://console.developers.google.com/project. After it is ready, you will be able to create a YouTube DATA API. Paste your API Key in the program. It is simple getting this API, but if you have any doubts look for any tutorial online. If you have any suggestions on how to do this program without the API Key, feel free to open an issue.

Finally, you can run the program:
```
./top10.sh
```
# Configuration
By default (my preference), the top 10 list is only of the Films (English) category, but you can alter the code to choose between Films (Non-English), TV (English), TV (Non-English).

Films (English):
```
cat top10.tsv | head -n 11 | sed '1d' | cut -f 4 -d "	" | sed 's/$/\%20trailer/' | sed 's/ /\%20/g' | sed 's/\:/\%3A/g' | sed 's/\&/\%26/g'| sed 's/\?/\%3F/g' | uniq > movies.txt
```

Films (Non-English):
```
cat top10.tsv | head -n 21 | tail -11 | sed '1d' | cut -f 4 -d "	" | sed 's/$/\%20trailer/' | sed 's/ /\%20/g' | sed 's/\:/\%3A/g' | sed 's/\&/\%26/g'| sed 's/\?/\%3F/g' | uniq > movies.txt

```

TV (English):
```
cat top10.tsv | head -n 31 | tail -11 | sed '1d' | cut -f 4 -d "	" | sed 's/$/\%20trailer/' | sed 's/ /\%20/g' | sed 's/\:/\%3A/g' | sed 's/\&/\%26/g'| sed 's/\?/\%3F/g' | uniq > movies.txt
```

TV (Non-English):
```
cat top10.tsv | head -n 41 | tail -11 | sed '1d' | cut -f 4 -d "	" | sed 's/$/\%20trailer/' | sed 's/ /\%20/g' | sed 's/\:/\%3A/g' | sed 's/\&/\%26/g'| sed 's/\?/\%3F/g' | uniq > movies.txt
```

# Considerations
The website says the list is published every Tuesday, so I recommend running it once a week to get the updates.
