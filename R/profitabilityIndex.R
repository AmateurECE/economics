profitabilityIndex <-
function (cf, investment, MARR) 
{
    1 + (netPresentValue(cf, interestRate = MARR)/abs(investment))
}
