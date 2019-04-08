netFutureValue <-
function (cashFlows, interestRate) 
{
    exponent <- length(cashFlows) - 1
    futureValue <- 0
    for (item in cashFlows) {
        futureValue <- futureValue + fv(item, interestRate, exponent)
        exponent <- exponent - 1
    }
    futureValue
}
