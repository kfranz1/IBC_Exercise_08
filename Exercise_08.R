setwd("/Users/katherinefranz/Desktop/IBC_Exercise_08")
#Exercise 8: Using Control Structures in R 

# Problem 1 

#read in score data 
scores <- read.delim("UWvMSU_1-22-13.txt")

#define number of entries
entries=nrow(scores)

#create vector for times
timevect = scores$time

#initialize score vectors w/ length = # entries 
UWvect=c(1:entries)
MSUvect=c(1:entries)

#set initial scores as zero
UWscore =0
MSUscore =0

#create for-loop to fill score vectors with cumulative scores 
for (i in 1:entries)
{
  if (scores$team[i]=="UW")
  {UWscore = UWscore + scores$score[i]}

  else if (scores$team[i] =="MSU")
  {MSUscore = MSUscore + scores$score[i]}

  UWvect[i] =UWscore
  MSUvect[i] =MSUscore
}

#plot score vectors as y lines with time vector as x 
plot(timevect,UWvect, type = 'l', col = "red", xlab = 
       "Time", ylab = "Score")
lines(timevect,MSUvect, col = "darkgreen")
title("UW and MSU Game ")
legend(5, 40, legend=c("UW", "MSU"),
       col=c("red", "darkgreen"), lty=1, cex=0.8)


# Problem 2 

# generate random number 1-100
mynumber <- sample(1:100,1)

cat("I'm thinking of a number 1-100...","\n")

#ask user for guess input 
yourguess<-readline(cat("Guess: "))
#convert string guess into an integer 
yourguess <-as.integer(yourguess)

# respond to incorrect guesses 
while (yourguess != mynumber) {
  if (yourguess > mynumber){
    cat("Lower","\n")
    yourguess<-readline(cat("Guess:"))
    yourguess <-as.integer(yourguess)
    
  } else if (yourguess < mynumber){
    cat("Higher","\n")
    yourguess<-readline(cat("Guess: "))
    yourguess <-as.integer(yourguess)
  }
}
#respond to correct guess
cat("Correct!")


