# Read in the "Toscano_Griffen_Data.csv" data from GitHub and load the three packages we used in the tutorial this week.
# The paper these data came from is uploaded to Canvas as "Toscano&Griffen_2014_JAE..."


setwd("C:/GitHub/ritcheyms/data")
df<-read.csv("Toscano_Griffen_Data.csv")
library(MASS)
library(MuMIn)
library(mgcv)
head(df)

# First create models with the same (y) and method (GLMM) as the published paper, using the GLMM function from the tutorial. 
  #Create two different models using the same 3 predictor (x) variables from the dataset. (4 points each) 
    # In one model only include additive effects.
summary(glmm.mod1 <- glmmPQL(claw.width + carapace.width + eaten~temperature, family = gaussian, random = ~ 1 |block , data = df))


summary(glmm.mod2 <-glmmPQL(claw.width + carapace.width + eaten ~toadfish.cue.treatment, family = gaussian, random = ~1 |block, data = df))

?glmm.mod

    # In the other model include one interactive effect.
#I am having trouble distinguishing between additive effect versus an interactive effect, so I am sorry if the above steps are wrong,
#     also i could not figure out how to add them into one line of code
    # Use a binomial distribution and block as a random effect in both models to match the paper's analyses. Remember ?family to find distribution names.

# The authors used proportional consumption of prey as the (y) in their model, but did not include this in the dataset.
  # So we are going to create it - run the following line, assuming df= your data frame (feel free to change that):
df$prop.cons <- df$eaten/df$prey 

# (Q1) - The code in line 8 is performing two operations at once. What are they? (2 pts)
#Goodness of fit and correlation

# (Q2) - Did the interactive effect change which variables predict proportional consumption? How, specifically, did the results change? (5 pts)
#
#Yes, actual correlation scores in the summary 
# (Q3) - Plot the residuals of both models. Do you think either model is a good fit? Why or why not? (3 pts)
plot(gam.mod1$residuals)
plot(gam.mod2$residuals)

# Re-run both models as generalized additive models instead (using gam). Then compare the AIC of both models. (4 points each)
gam.mod1<-gam(claw.width + carapace.width + eaten~temperature, family = gaussian, random = ~ 1 |block , data = df)
summary(gam.mod1)
AIC(gam.mod1)
gam.mod2<-gam(claw.width + carapace.width + eaten ~toadfish.cue.treatment, family = gaussian, random = ~1 |block, data = df)
AIC(gam.mod2)
summary(gam.mod2)
AIC(gam.mod1,gam.mod2)

# (Q4) - Which model is a better fit? (2 pt)
#gam.mod1 is a better fit due to its lower AIC score and the higher rsquared value


# (Q5) - Based on the residuals of your generalized additive models, how confident are you in these results? (2 pts)
#I am confident gam.mod1 is a better fit due to the lower AIC score, the higher r-squared value, and the randomness the
#residuals have when plotted. 






