\name{benefitCostRatio}
\alias{benefitCostRatio}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
benefitCostRatio
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
benefitCostRatio(cf, MARR)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cf}{
%%     ~~Describe \code{cf} here~~
}
  \item{MARR}{
%%     ~~Describe \code{MARR} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
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
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
