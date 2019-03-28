annuityFByA <-
function (interestRate, maturity) 
{
    (((1 + interestRate)^maturity) - 1)/interestRate
}
