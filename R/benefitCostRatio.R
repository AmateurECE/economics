benefitCostRatio <-
function (cf, MARR) 
{
    if (class(cf) != "numeric") 
        return(NULL)
    PVBenefits <- 0
    PVCosts <- 0
    exponent <- 0
    for (item in cf) {
        if (item > 0) {
            PVBenefits <- PVBenefits + pv(item, i = MARR, n = exponent)
        }
        else {
            PVCosts <- PVCosts + pv(abs(item), i = MARR, n = exponent)
        }
        exponent <- exponent + 1
    }
    PVBenefits/PVCosts
}
