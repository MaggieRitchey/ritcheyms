# (1) Approximately how many hours ahead of Sunbury was the peak flow in Lewisburg during the 2011 flood? (2 pt)
  
#6 hours 

# (2) Give one reason why information on the time between peak flow events up- and downstream could be valuable? (4 pts)

#This time between peak flow events between up and downstream would be extremely beneficial for measuring water flow rates to see how fastly a flood is moving. 


# Package scavenger hunt! (12 pts each)

## (3) Using Google and ONLY packages from GitHub or CRAN:
    # Find a package that contains at least one function specifically designed to measure genetic drift.
install.packages("learnPopGen")
library(learnPopGen)

 # Copy-paste into your script - and run - an example from the reference manual for a function within this package related to a measure of genetic drift. 
genetic.drift(p0=0.5, Ne=20, nrep=10, time=100, show="p", pause=0.1)
?print()
        # Depending on the function, either upload a plot of the result or use print() and copy/paste the console output into your script.
    # After running the function example, manipulate a parameter within the function to create a new result. 
        # Common options might be allele frequency, population size, fitness level, etc. 
        # Add the results of this manipulation to your script (if in the console) or upload the new plot.
       
genetic.drift(p0=0.5, Ne=300, nrep=10, time=100, show="p", pause=0.1)
          # By manipulating these parameters you can see how it impacts the results.
          # This type of manipulation is one example of how theoretical ecology and modelling are used to predict patterns in nature.



## (4) Using Google and ONLY packages from GitHub or CRAN:
    # Find a package that will generate standard diversity metrics for community ecology, specifically Simpson's Diversity Index.
install.packages("vegan")
library(vegan)

install.packages("simboot")
library(simboot)#your use of this package made the rest of your code break. I had to restart and bypass this in order to rerun.



    # Copy-paste into your script - and run - an example from the reference manual for a function to calculate Simpson's diversity. 
        # Depending on the example usage of the function, either upload a plot of the result or use print() and copy/paste the console output into your script.
?Simpson

data(BCI, BCI.env)
H <- diversity(BCI)
simp <- diversity(BCI, "simpson")
invsimp <- diversity(BCI, "inv")
## Unbiased Simpson
unbias.simp <- simpson.unb(BCI)
## Fisher alpha
alpha <- fisher.alpha(BCI)
## Plot all
pairs(cbind(H, simp, invsimp, unbias.simp, alpha), pch="+", col="blue")

 # After running the function example, modify your script to generate another diversity metric that is NOT part of the example. 
        # If there are two diversity metrics in the example script, neither of these will count as the modified script.
        # Hint: If the function can "only" caluclate Simpson's diversity, the inverse of Simpson's diversity is another common metric. 
        # Add the results of this manipulation to your script (if in the console) or upload the new plot.
data(BCI, BCI.env)
H <- diversity(BCI)
simp <- diversity(BCI, "simpson")

## Unbiased Simpson
unbias.simp <- simpson.unb(BCI)
## Fisher alpha
alpha <- fisher.alpha(BCI)
## Plot all
pairs(cbind(H, simp, unbias.simp, alpha), pch="+", col="blue")
        #This does not modify the actual outputs, only removes the inverse Simpson metric from the output.

          # Diversity metrics are frequently used in community ecology for reasons ranging from a quick comparison between sites to understanding community stability.
          # Their calculation can be very tedious by hand - and very fast with a package designed for the operation.



