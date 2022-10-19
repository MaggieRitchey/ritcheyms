# First, recreate Figure 4 from Herron et al. (2019). De novo origins of multicellularity in response to predation. Scientific Reports.
  # Search datadryad.org by the paper title and download the dataset. It will include .csv files and R scripts, organized by figure.

  # Save the script and change the working directory on lines 8 and 115 to match your GitHub repository. (6 points)
setwd("C:/GitHub/ritcheyms/data")
data<-read.csv("Figure4Data.csv", header=TRUE)

library(ggplot2)

ggsave(filename=paste("C:/GitHub/ritcheyms/data",
                      paste("Figure4", ".png", sep=""), sep=""), plot=myplot,
       width = 10, height = 4, bg = 'transparent')


  # Export and save the plot you've created. (2 points)
  # Zoom into your plot to look at the distribution for different strains.

# Do all of the strains in the plot have the same distributions (yes/no)? (2 pt)
#no

# Based on these observations of your strain distributions, why did the authors use a Kruskal-Wallis test rather than ANOVA to compare the strains? (2 pts)

#there is no assumption on how the data will be distributed
# Use the fitdist() and gofstat() functions to compare the poisson, negative binomial, and logistic distributions for:
?fitdist
?gofstat
  # (1) - The number of cells of progeny (data$Num.Cells.Progeny)
  # (2) - The replication time (data$RepTime.sec)
      # 3 points each
    #HINT- "Num.Cells.Progeny" has defined breaks. To display results, use the formula with the "chisqbreaks" argument as follows:
      #gofstat(list(fit.1, fit.2, fit.3, etc), chisqbreaks=c(1,2,4,8,16,32,64))
data <- na.omit(data)

fit.logis <- fitdist(data$Num.Cells.Progeny, distr = "logis")
fit.pois<-fitdist(data$Num.Cells.Progeny,distr = "pois")
fit.nbinom<-fitdist(data$Num.Cells.Progeny, distr = "nbinom")

gofstat(list(fit.logis, fit.pois, fit.nbinom), chisqbreaks = c(1,2,4,8,16,32,64))

fit.logis<-fitdist(data$RepTime.sec, distr = "logis")
fit.pois<-fitdist(data$RepTime.sec, distr = "pois")
fit.nbinom<-fitdist(data$RepTime.sec, distr = "nbinom")

gofstat(list(fit.logis,fit.pois,fit.nbinom))

# Based on the AIC scores, which distribution is the best fit for: (4 pts)
  # (1) - The number of cells of progeny (data$Num.Cells.Progeny)?
  #1-mle-logis
  # (2) - The replication time (data$RepTime.sec)?
  #3-mle-nbinom


# Plot a generic histogram for the replication time (data$RepTime.sec) (2 pt)
hist(data$RepTime.sec)
?histogram
# Based on the patterns of this histograms and Figure 4:
  #Give one hypothesis for an evolutionary process represented by the two tallest bars in your histogram. (6 pts)
#A change in the rate of predation represented in this historgram, due to something like human interaction or natural disaster
  # Don't cheat by looking at the paper! 
    # This hypothesis does not need to be correct - it only needs to be ecologically rational based these two figures.








