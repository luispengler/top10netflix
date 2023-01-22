# Netflix Global Top 10
This script opens in mpv the trailer of the weekly top 10 of Netflix. 

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
Now you have to write your API Key for the program to work. To get a youtube API, create an account at https://developers.google.com/ , then create a project at https://console.developers.google.com/project. After it is ready you will be able to create an YouTube DATA API. Paste your API Key in the program.

Finally, you can run the program:
```
./top10.sh
```
