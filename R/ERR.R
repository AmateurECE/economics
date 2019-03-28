ERR <-
function (cf, i) 
{
    target <- 0
    life <- length(cf) - 1
    for (item in replace(cf, cf < 0, 0)) {
        target <- target + fv(item, i, life)
        life <- life - 1
    }
    costs <- abs(replace(cf, cf > 0, 0))
    rootFunction <- function(rate) {
        total <- 0
        life <- length(costs) - 1
        for (item in costs) {
            total <- total + fv(item, i = rate, n = life)
            life <- life - 1
        }
        total - target
    }
    uniroot(rootFunction, lower = 1e-04, upper = 100)$root
}
