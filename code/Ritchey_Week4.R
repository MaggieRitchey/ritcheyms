# Look at the plot and model results for our Dryad data in the tutorial. Part 1: Without knowing which points represent which groups, 
  # give one explanation for why these data might be difficult to draw spatial inferences about genes.(3 points)
  #Both axises are large and points seem to be thrown into a white void, with nothing like guidelines to gauge how much soace there actually is. The titles also give us no clue what we are looking at.
  # Part 2: Despite the drawbacks, give the result or interpretation that you feel most confident in (3 points), and EXPLAIN WHY (4 points).
#Between the two sets, there is a positive corrwlation as the dots seem to be moving upwards. There are also a few outlyers. 

# For your scripting assignment we will use the "ge_data" data frame found in the "stability" package.
  # Install the "stability" package, load it into your R environment, and use the data() function to load the "ge_data". (2 points)
install.packages("stability")
library(stability)
??`stability-package`
data(ge_data)

ge_data



# Create two linear models for Yield Response: one related to the Environment and one to the Genotype. (2 points each)
  # 'Yield Response' in this dataset is a measure of phenotype expression.
  # Hint: Look at the help file for this dataset.
mod.env <-lm(ge_data$Yield ~ ge_data$Env)
mod.geno <- lm(ge_data$Yield ~ ge_data$Gen)

plot(ge_data$Yield ~ ge_data$Env)
plot(ge_data$Yield ~ ge_data$Gen)

# Test the significance of both models and look at the model summary. (3 points each)
  # Which model is a better fit to explain the yield response, and WHY? (6 points)
  #Yield with Env seems to be the best model. When plotted linearly, Yield with Gen seems to be very over fitted. (Run codes above)
  # Hint: Does one model seem more likely to be over-fitted?

anova(mod.env)
anova(mod.geno)
summary(mod.env)
summary(mod.geno)
# Which environment would be your very WORST choice for generating a strong yield response? (2 points)
#The worse choice ould be the the Genotype yield response as there is no clear linear response. 