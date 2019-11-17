setwd("/Users/katherinefranz/Desktop/IBC_Exercise_08")
#Exercise 8: Using Control Structures in R 

# Problem 1 

#read in score data 
scores <- read.delim("UWvMSU_1-22-13.txt")
scores

#define entries
entries=nrow(scores)

#create vector for times
timevect = scores$time

#initialize score vectors 
UWvect=c(1:entries)
MSUvect=c(1:entries)

#set initial scores as zero
UWscore =0
MSUscore=0

#create for-loop to fill score vectors with cumulative scores 

for (i in 1:entries)
{
  if (scores$team[i]=="UW")
  {UWscore = UWscore + scores$score[i]}

  else if (score$team[i] =="MSU")
  {MSUscore = MSUscore + scores$score[i]}

  UWvect[i] =UWscore
  MSUvect[i] =MSUscore
}

#plot score vectors as y lines with time vector as x 
plot(timevect,UWvect, type = 'l', col = "red", xlab = 
       "Time", ylab = "Score")
lines(timevect,MSUvect, col = "darkgreen")




