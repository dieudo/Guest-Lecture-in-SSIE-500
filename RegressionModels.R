#########################################################################################

########THIS IS A R SCRIPT ,USE THE PROVIDED DATASETS TO RUN REGRESSION MODELS############

#################SSIE500/PROFESSOR HIROKI SAYAMA & DIEUDONNE OUEDRAOGO#####################

##########################################################################################

#DATASET :data0
require(readr)|| install.packages("readr")
require(knitr)|| install.packages("knitr")
data0 <- read_delim("~/data0.txt", " ", escape_double = FALSE)
kable(data0)
fit0=lm(log(Y)~Z1+Z2+Z3+Z4+Z5,data=data0)#Linear model log(y) versus other components
# Stepwise Regression
require(MASS)|| install.packages(MASS)
step <- stepAIC(fit0, direction="both")#Stepwise Selection
step$anova # display results
#plot(step$residuals)
coefficients(step) # model coefficients
anova(step) # anova table 
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(step)
###########################################################################################

#DATASET :data2

require(readr)
data2 <- read_csv("~/Downloads/data2.csv")
kable(data2)
fit2=lm(Y~X,data=data2)#Linear Model Y versus X
summary(fit2)
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(fit2)

############################################################################################


