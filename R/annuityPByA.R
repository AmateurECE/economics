annuityPByA <-
function (interestRate, maturity) 
{
    (1 - ((1 + interestRate)^(-1 * maturity)))/interestRate
}
