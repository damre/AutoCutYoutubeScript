# AutoCutYoutubeScript
Ubuntu script. Download multiple videos and save only chosen sections of each videos.

LINUX ONLY

This script download and cut multiple youtube videos.
It reads the information about the videos to download in the file videolist.txt that HAVE TO BE in the script folder

videolist.txt example:

https://www.youtube.com/watch?v=lXKv5A7IUEQ*8.50 9.20 15.00 19.00*videoName
https://www.youtube.com/watch?v=UdeMCUDuR2A*1.00 2.00 10.00 12.15 13.10 15.00*secondVideoName

The output of the script with this version of videolist.txt will be:

videoname0.mp4 videoname2.mp4 secondVideoName0.mp4 secondVideoName2.mp4 secondVideoName4.mp4 (saved in the script folder)

USE this line format:

videolink*StartFirstCutTime EndFirstCutTime StartSecondCutTime EndSecondCutTime etc etc etc*videoname
you can add as many section you like 

DON'T forget the "*" symbol!
DON'T add any spaces, commas or dots
DON'T remove any spaces bethween StartTime and EndTime


PREREQUISITES
youtube-dl 
avconv

both installed on the pc where this script run.
