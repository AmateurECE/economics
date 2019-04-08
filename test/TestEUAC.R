###############################################################################
# NAME:             TestEUAC.R
#
# AUTHOR:           Ethan D. Twardy <edtwardy@mtu.edu>
#
# DESCRIPTION:      Test for the EUAC function.
#
# CREATED:          04/08/2019
#
# LAST EDITED:      04/08/2019
###

library(economics)

## Data comes from Economic Decision Analysis, 4e; Roberts, Nelson, Gale
## Problem 2, pg. 136

initialCost <- 10e3 # Initial cost of the machine.
salvageValue <- 4000 # Salvage value of the machine.
ir <- 0.15          # Interest rate
numYears <- 6
annualCost <- replicate(numYears, 0)
for (i in 1:numYears) {
    gradient <- (1 / ir) - (i / ((1 + ir)**i - 1))
    annualCost[i] <- 1500 + (700 * gradient)
}

## Calculate EUAC(n)
minIndex <- 0
min <- Inf
for (i in 1:numYears) {
    euac.i <- EUAC(ic=initialCost, sv=salvageValue, ac=annualCost[i], i=ir,
                     yr=i)
    if (euac.i < min) {
        min <- euac.i
        minIndex <- i
    }
}

##############################################################################
