\name{MeanAbsoluteDeviation}
\alias{MeanAbsoluteDeviation}
\title{Mean absolute deviation of the return distribution}
\usage{
  MeanAbsoluteDeviation(R, ...)
}
\arguments{
  \item{R}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of asset returns}

  \item{\dots}{any other passthru parameters}
}
\description{
  To calculate Mean absolute deviation we take the sum of
  the absolute value of the difference between the returns
  and the mean of the returns and we divide it by the
  number of returns.
}
\details{
  \deqn{MeanAbsoluteDeviation = \frac{\sum^{n}_{i=1}\mid
  r_i - \overline{r}\mid}{n}}{MeanAbsoluteDeviation =
  sum(|r-mean(r)|)/n }

  where \eqn{n} is the number of observations of the entire
  series, \eqn{r_i} is the return in month i and
  \eqn{\overline{r}} is the mean return
}
\examples{
data(portfolio_bacon)
print(MeanAbsoluteDeviation(portfolio_bacon)) #expected 1.78

data(managers)
print(MeanAbsoluteDeviation(managers['1996']))
print(MeanAbsoluteDeviation(managers['1996',1]))
}
\author{
  Matthieu Lestel
}
\references{
  Carl Bacon, \emph{Practical portfolio performance
  measurement and attribution}, second edition 2008 p.62
}
\keyword{distribution}
\keyword{models}
\keyword{multivariate}
\keyword{ts}
