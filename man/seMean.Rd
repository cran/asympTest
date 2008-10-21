\name{seMean}
\alias{seMean}
\alias{seMean.default}
\alias{seVar}
\alias{seVar.default}
\alias{seDMean}
\alias{seDMean.default}
\alias{seDMeanG}
\alias{seDMeanG.default}
\alias{seDVar}
\alias{seDVar.default}
\alias{seRMean}
\alias{seRMean.default}
\alias{seRVar}
\alias{seRVar.default}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{ se functions }
\description{
  se functions compute the Standard Error of respectively mean,
  variance, difference of means, of variances and ratio of means and variances.
}
\usage{
seMean(x,\dots)
\method{seMean}{default}(x,\dots)
seVar(x,\dots)
\method{seVar}{default}(x,\dots)
seDMean(x,\dots)
\method{seDMean}{default}(x, y, rho = 1, \dots)
seDMeanG(x,\dots)
\method{seDMeanG}{default}(x, y,\dots)
seDVar(x,\dots)
\method{seDVar}{default}(x, y, rho = 1, \dots)
seRMean(x,\dots)
\method{seRMean}{default}(x, y, r0,\dots)
seRVar(x,\dots)
\method{seRVar}{default}(x, y, r0,\dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ a (non-empty) numeric vector of data values. }
  \item{y}{ an optional (non-empty) numeric vector of data values. }
  \item{rho}{ optional parameter for penalization (or enhancement) of the
    contribution of the second parameter. }
  \item{r0}{ an optional parameter for ratio of means (seRMean) or
    variances (seRVar). It acts as parameter r in seDMean and seDVar. Defaults are mean(x)/mean(y) in seRMean and
    var(x)/var(y) for seRVar. }
  \item{\dots}{further arguments to be passed to or from methods.}
}
\details{
  se functions performs classical standard error estimation for
  parameters mean, variance, difference of means or variances, ratio of
  means or variances.
}
\value{
  Return the value of the estimated standard error for the corresponding parameter.
}

\seealso{ \code{\link{asymp.test}} that used estimated standard error
  for asymptotic parametric tests. }

\examples{
x <- rnorm(70, mean = 1, sd = 2)
y <- rnorm(50, mean = 2, sd = 1)
## mean statistic 
asymp.test(x)$stat
mean(x)/seMean(x)
## variance statistic
asymp.test(x,param="var",alt="l",param0=2)$stat
(var(x)-2)/seVar(x)
## difference of means statistic
asymp.test(x,y)$stat
(mean(x)-mean(y))/seDMean(x,y)
}

\references{ Coeurjolly, J.F. Drouilhet, R. Lafaye de Micheaux, P. Robineau, J.F. (2008) asympTest: R package for performing asymptotic parametric tests and confidence intervals, submitted to Journal of Statistical Software }
\author{ J.-F. Coeurjolly, R. Drouilhet, P. Lafaye de Micheaux, J.-F. Robineau }


%\keyword{ }

