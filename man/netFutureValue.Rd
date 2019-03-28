\name{netFutureValue}
\alias{netFutureValue}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
netFutureValue
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
netFutureValue(cashFlows, interestRate)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cashFlows}{
%%     ~~Describe \code{cashFlows} here~~
}
  \item{interestRate}{
%%     ~~Describe \code{interestRate} here~~
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
function (cashFlows, interestRate) 
{
    exponent <- 0
    futureValue <- 0
    for (item in cashFlows) {
        futureValue <- futureValue + fv(item, interestRate, exponent)
        exponent <- exponent + 1
    }
    futureValue
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
