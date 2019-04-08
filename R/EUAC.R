EUAC <-
function(ic, sv, ac, i, yr) {
    initialCost <- ic / annuityPByA(interestRate=i, maturity=yr)
    salvageValue <- sv / annuityFByA(interestRate=i, maturity=yr)
    (initialCost - salvageValue) + ac
}
