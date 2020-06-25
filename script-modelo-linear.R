# Load the data
library(carData)
library(car)
library(dplyr)
data("Salaries", package = "carData")

# Inspect the data
sample_n(Salaries, 3)
#
# Compute the model
model <- lm(salary ~ sex, data = Salaries)
summary(model)$coef
contrasts(Salaries$sex)
#
model2 <- lm(salary ~ yrs.service + rank + discipline + sex, data = Salaries)
Anova(model2)
summary(model2)
