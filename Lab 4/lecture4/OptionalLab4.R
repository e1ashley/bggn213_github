#Section 1: BRFSS
source("http://thegrantlab.org/misc/cdc.R")
plot(cdc$height, cdc$weight)
cor(cdc$height, cdc$weight)
hist(cdc$height)
height_m <- cdc$height*0.0254
weight_kg <- cdc$weight * 0.454

#Section 2: BMI
BMI <- (weight_kg)/(height_m^2)
plot(cdc$height, BMI)
cor(cdc$height, BMI)
sum(BMI >= 30)

#Section 3: Accessing subsets of data using row and column indices
plot(cdc$height[1:100], cdc$weight[1:100])

#Section 4
sum(cdc$gender[BMI >= 30] == "m")
