netPresentValue <-
function (cashFlows, interestRate) 
{
    exponent <- 0
    presentValue <- 0
    for (item in cashFlows) {
        presentValue <- presentValue + pv(item, interestRate, 
            exponent)
        exponent <- exponent + 1
    }
    presentValue
}
