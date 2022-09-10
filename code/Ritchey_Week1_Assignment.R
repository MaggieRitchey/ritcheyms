# Now it is time to create your own data frame using the tools we have learned this week.
# First, resave this script as: your last name_Week1_Assignment
  # e.g. mine would be Wilson_Week1_Assignemnt


# Create 3 numeric vectors and 2 character vectors that are each 15 values in length with the following structures:
  # One character vector with all unique values
   #I think character is all text right? I don't know it is step one and I am confused already
a<- c("matt","classroom","Susquehanna","mouse","keyboard","map","pen","laptop","clock","lamp","trash","coat","rain","docs","board")
a
  # One character vector with exactly 3 unique values
b<- c("cat","dog","lizard","zebra","dog","lizard","horse","cat","horse","elephant","horse","turkey","cat","dog","lizard")#many more than three unique values.
b
  # One numeric vector with all unique values
c<- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
c
  # One numeric vector with some repeated values (number of your choosing)
d<- c(1,1,2,3,3,4,5,6,7,8,9,10,11,12,13)
d
  # One numeric vector with some decimal values (of your choosing)
e<-c(1.2,2.1,3.1,4,5,6,7,8,9,10,11,12,13.4,14,15)
e


# Bind the vectors into a single data frame, rename the columns, and make the character vector with unique values the row names.
  #oh god I am lost. I remember the bind function but I'm not confident I did the above portions right. I need a better understanding on the definitions
  #like numeric, unique, values, etc etc 
  #bind the vectors into a single data frame 
data<- cbind(a,b,c,d,e)
data
#step 2 rename the columns 
df <- as.data.frame(data)
df
#okay i don't know the significance on what I did but I'm purely trying to follow along with the tutorial right now 
colnames(df) <- c("Title", "Description", "Name", "Info", "Rename")
df
#I just gave them random names because I'm unsure on what the initial instructions meant in the first place...
#Wait I'm confused on the last instruction Matt please don't kill me 

# Remove the character vector with unique values from the data frame.
#Okay uhm I didn't know how to do this in the first place I'M SORRY
df[1,]
df[-1,] #this only displays the data frame without those values, it doesn't create a new object. You need the <- for that.
  #I don't know if this works but it did something 


# Add 1 row with unique numeric values to the data frame.
#again, now i am lost but I promise i am trying 
binary.solo <- c(1,1,0,0,1,1) #too many values in this.

new.df <- cbind(df.a, binary.solo) #you got an error from this line - that should have been a sign to stop and figure out what happened.
new.df

df.r <- rbind(df.a,binary.solo) #What is df.a? You have not created this and you're calling for it in a function.
df.r

#this doesn't feel right 

# Export the data frame as a .csv file 
df <- data.frame
write.csv(df,"C:\\Users\\Desktop)#this is not the right location - you are also missing the end quote and need one slash instead of two.

# Generate summary statistics of your data frame and copy them as text into your script under a new section heading.

# Upload your script and your .csv file to Blackboard.


