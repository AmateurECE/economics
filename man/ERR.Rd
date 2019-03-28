\name{ERR}
\alias{ERR}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
ERR
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ERR(cf, i)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cf}{
%%     ~~Describe \code{cf} here~~
}
  \item{i}{
%%     ~~Describe \code{i} here~~
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
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
