ERR <-
function (cf, i) 
{
    target <- netFutureValue(replace(cf, cf < 0, 0), i)
    costs <- abs(replace(cf, cf > 0, 0))
    rootFunction <- function(rate) {
        netFutureValue(costs, rate) - target
    }
    uniroot(rootFunction, lower = 1e-04, upper = 100)$root
}
