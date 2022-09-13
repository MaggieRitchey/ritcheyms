# With the data frame you created last week you will:
a<- c("matt","classroom","Susquehanna","mouse","keyboard","map","pen","laptop","clock","lamp","trash","coat","rain","docs","board")
b<- c("cat","dog","lizard","zebra","dog","lizard","horse","cat","horse","elephant","horse","turkey","cat","dog","lizard")#many more than three unique values.
c<- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
d<- c(1,1,2,3,3,4,5,6,7,8,9,10,11,12,13)
e<-c(1.2,2.1,3.1,4,5,6,7,8,9,10,11,12,13.4,14,15)

df<-as.data.frame(cbind(a,b,c,d,e))

df$c<-as.numeric(as.character(df$c))
df$d<-as.numeric(as.character(df$d))
df$e<-as.numeric(as.character(df$e))

add.row<-data.frame("l","r",700,3,5.600)

colnames(add.row)<-colnames(df)


df1<-rbind(df, add.row)

row.names(df1)<-df1$a
df1<-df1[,-1]
df1

# Create a barplot for one numeric column, grouped by the character vector with 3 unique values
  # Add error bars with mean and standard deviation to the plot
  # Change the x and y labels and add a title
  # Export the plot as a PDF that is 4 inches wide and 7 inches tall.

?aggregate
df.mean<-aggregate(df1$d~df1$b, FUN = 'mean')
df.mean

colnames(df.mean)<-c("Factor","Mean")
df.mean

barplot(df.mean$Mean)

barplot(df.mean$Mean, names.arg=df.mean$Factor)
#Invalid graphics state? "In doTryCatch(return(expr), name, parentenv, handler)
df.sd<-aggregate(df1$d~df1$b, FUN="sd")

colnames(df.sd)<-c("Factor","StanDev")

b.plot<-barplot(df.mean$Mean, names.arg=df.mean$Factor, ylim=c(0,15))

arrows(b.plot, df.mean$Mean-df.sd$StanDev, b.plot, df.mean$Mean+df.sd$StanDev, angle=90, code=3)




# Create a scatter plot between two of your numeric columns.
  # Change the point shape and color to something NOT used in the example.
  # Change the x and y labels and add a title
  # Export the plot as a JPEG by using the "Export" button in the plotting pane.

plot(df1$e~df1$d)

plot(df1$e~df1$c)

plot(df1$e~df1$c, xlab="Explanatory", ylab= "Response")

plot(df1$e~df1$c, xlab ="Explanatory", ylab="Repsonse", main = "Maggies Scatterplot")
plot(df1$e~df1$c, xlab ="Explanatory", ylab="Repsonse", main = "Maggies Scatterplot", cex.axis=0.8)
plot(df1$e~df1$c, xlab ="Explanatory", ylab="Repsonse", main = "Maggies Scatterplot", cex.axis=0.8, cex.main=0.5)
plot(df1$e~df1$c, xlab ="Explanatory", ylab="Repsonse", main = "Maggies Scatterplot", cex.axis=0.8, cex.main=1.25, cex.lab=1.25, pch=22, col='tomato2')

?pch
??color
colors()
# Upload both plots with the script used to create them to GitHub.
  # Follow the same file naming format as last week for the script.
  # Name plots as Lastname_barplot or Lastname_scatterplot. Save them to your "plots" folder.
