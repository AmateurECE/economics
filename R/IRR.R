IRR <-
function (cf) 
{
    uniroot(netPresentValue, cashFlows = cf, lower = 1e-04, upper = 100)$root
}
