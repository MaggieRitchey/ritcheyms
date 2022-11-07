# For this week it's time to start exploring your own ideas and questions in R.
  # There are at least five options in the dataset to create the following comparisons.
library(readxl)
setwd("C:/GitHub/ritcheyms")


abiotic.tibble<-read_excel("Penaetal_2016_data.xlsx", sheet = "Abiotic factors")
abiotic<-as.data.frame(abiotic.tibble)
vege.tibble<-read_excel("Penaetal_2016_data.xlsx", sheet = "Vegetation_plots_all_sites")
vege<-as.data.frame(vege.tibble)
head(vege)

head(abiotic)



abiotic.names <- paste(abiotic$Site, abiotic$Land_Use, abiotic$Plot)
abiotic$names <- abiotic.names
head(abiotic)
vege.names <- paste(vege$Landuse, vege$Plot, vege$Site)
vege$names <- vege.names
head(vege.names)
abiotic.means <- aggregate(x = abiotic, by = list(abiotic$names), FUN = "mean")
vege.means <- aggregate(x = vege, by = list(vege$names), FUN = "mean")
head(vege.means)

abiotic.means1 <- abiotic.means[-19,-16]
abiotic.means2 <- abiotic.means1[,-1:-6]
abiotic.means2 <- sapply(abiotic.means2, as.numeric)
abiotic.means2 <- as.data.frame(abiotic.means2)

vege.means1 <- vege.means[,-98] 
vege.means2 <- as.data.frame(vege.means1[,-1:-4]) 
head(vege.means2)
vege.means2 <- sapply(vege.means2, as.numeric )

library(vegan)
colnames(abiotic.means2)
ord <- rda(vege.means2 ~ pH + totalN + Perc_ash + Kalium + Magnesium + Ca + Al + TotalP + OlsenP, abiotic.means2)

ord
anova(ord)
# (Q1 - 12 pts) Use the dataset from the tutorial to complete one redundancy analysis (RDA) with variance partitioning on a different community (NOT the nematodes).
  # Explain the ecological importance of your significant predictor variables, or the importance if none are significant for your community.
#These predictor varibales seem not to be significant to the community, especially with the large varience and P values. These exteme numbers signify no
#relationship. 

# (Q2 - 12 pts) Then use the dataset from the tutorial to create a linear model related to your RDA. Try multiple predictors to find the best fit model.
  # Explain the ecological importance of the significant predictors, or lack of significant predictors.
plot(ord, ylim = c(-2,2), xlim = c(-5,5))  
ord2 <- rda(vege.means2 ~., abiotic.means2) 
plot(ord2, ylim = c(-2,2), xlim = c(-5,5)) 
ord.int <- rda(vege.means2 ~1, abiotic.means2)
plot(ord.int, ylim = c(-2,2), xlim = c(-5,5)) 

mod1<-lm(vege.means2~pH + totalN + Perc_ash + Kalium + Magnesium + Ca + Al + TotalP + OlsenP, abiotic.means2)
summary(mod1)
anova(mod1)
AIC(mod1)
plot(mod1$residuals)

mod2<-lm(vege.means2~pH+Perc_ash+Kalium+Magnesium+Ca, abiotic.means2)
summary(mod2)
anova(mod2)
AIC(mod2)
plot(mod2$residuals)


mod3<-lm(vege.means2~pH+Kalium+Magnesium+Ca, abiotic.means2)
summary(mod3)
anova(mod3)
AIC(mod3)
plot(mod3$residuals)

mod4<-lm(vege.means2~pH+Magnesium+Ca, abiotic.means2)
summary(mod4)
anova(mod4)
AIC(mod4)
plot(mod4$residuals)
#This seems to be the best linear model! It is not too overfitted like mod1 and not underfitted like mod5 which shows no significance between any variable

mod5<-lm(vege.means2~Magnesium+Ca, abiotic.means2)
summary(mod5)
anova(mod5)
AIC(mod5)
plot(mod5$residuals)


ord3 <- rda(vege.means2 ~ totalN, abiotic.means2)
ord3
anova(ord3)
plot(ord3)


ord4<-rda(vege.means2 ~ pH, abiotic.means2)
ord4
anova(ord4)
plot(ord4)

ord5<-rda(vege.means2 ~ Perc_ash, abiotic.means2)
ord5
anova(ord5)
plot(ord5)

ord6<-rda(vege.means2 ~ Kalium, abiotic.means2)
ord6
anova(ord6)
plot(ord6)

ord7<-rda(vege.means2 ~ Magnesium, abiotic.means2)
ord7
anova(ord7)
plot(ord7)

ord8<-rda(vege.means2 ~ Ca, abiotic.means2)
ord8
anova(ord8)
plot(ord8)
colnames(abiotic)


ord9<-rda(vege.means2 ~ Al, abiotic.means2)
ord9
anova(ord9)
plot(ord9)

ord10<-rda(vege.means2 ~ TotalP, abiotic.means2)
ord10
anova(ord10)
plot(ord10)

ord11<-rda(vege.means2 ~ OlsenP, abiotic.means2)
ord11
anova(ord11)
plot(ord11)

#When plotted, there are no intercepts meaning there are no significant ecological predictors between abiotic and vegetation plots between all sites.
#Al seems to be the closest to significant out of all the factors. When breaking it down, we can be sure that no factors are influencing
#the vegetative plots. This is important to understand relationships within a community, or even the lack thereof. 
#Significant intercepts don't say much about the variables or their relationship. 
#Given that you looked at every plant species (using the whole community data frame instead of a single vector) you did have a few intersting comparisons in there other than Al.


# (Q3 - 6 pts) Provide a 3-4 sentence synthesis of how these results relate to one another and the value of considering both together for interpreting biotic-abiotic interactions.
#The fact that these factors do not significantly relate to one another actually tells us a lot. This method can be used to actually eliminate relationships in which
#these vegetation plots were not significantly related to the abiotic factors. This shows that species found in these plots are not influences by abiotic factors
#or the abiotic data set as a whole. This signifies it is completely independent from these parameters with no relation. 
#This is all true until you think about the linear models together with the rda. For a few species, abiotics mattered, just not for the community as a whole.
