\name{asymp.test}
\alias{asymp.test}
\alias{asymp.test.default}
\alias{asymp.test.formula}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Asymptotic tests }
\description{
  Performs one and two sample asymptotic (no gaussian assumption on distribution) parametric tests on vectors of data.
}
\usage{
asymp.test(x,\dots)
\method{asymp.test}{default}(x, y = NULL,
parameter = c("mean", "var", "dMean", "dVar", "rMean", "rVar"),
alternative = c("two.sided", "less", "greater"),
reference = 0, conf.level = 0.95, rho = 1, ...)
\method{asymp.test}{formula}(formula, data, subset, na.action, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ a (non-empty) numeric vector of data values. }
  \item{y}{ an optional (non-empty) numeric vector of data values. }
  \item{parameter}{ a character string specifying the parameter under
    testing, must be one of "mean", "var", "dMean" (default), "dVar", "rMean", "rVar" }
  \item{alternative}{ a character string specifying the alternative hypothesis, must be one of "two.sided" (default), "greater" or "less". You can specify just the initial letter. }
  \item{reference}{ a number indicating the reference value of the parameter (difference or ratio true value for two sample test) }
  \item{conf.level}{ confidence level of the interval. }
  \item{rho}{ optional parameter (only used for parameters "dMean" and "dVar") for penalization (or enhancement) of the
    contribution of the second parameter. }
  \item{formula}{a formula of the form \code{lhs ~ rhs} where \code{lhs}
    is a numeric variable giving the data values and \code{rhs} a factor
    with two levels giving the corresponding groups.}
  \item{data}{an optional matrix or data frame (or similar: see
    \code{\link{model.frame}}) containing the variables in the
    formula \code{formula}.  By default the variables are taken from
    \code{environment(formula)}.}
  \item{subset}{an optional vector specifying a subset of observations
    to be used.}
  \item{na.action}{a function which indicates what should happen when
    the data contain \code{NA}s.  Defaults to
    \code{getOption("na.action")}.}
  \item{\dots}{further arguments to be passed to or from methods.}
}
\details{
  Asymptotic parametric test and confidence intervals are based on the following unified statistic :
  \deqn{\frac{\hat{\theta}(Y)-\theta}{\hat{\sigma_{\hat{\theta}}(Y)}}}{est(theta)(Y)-theta / est(var(est(theta)))(Y)} which asymptotically follows a \eqn{N(0,1)}{N(0,1)}.
  
  \eqn{\theta}{theta} stands for the parameter under testing
  (mean/variance, difference/ratio of means or variances).
  
  The term \eqn{\hat{\sigma_{\hat{\theta}}(Y)}}{est(var(est(theta)))} is calculated by the ad-hoc seTheta function (see \code{\link{seMean}}).
  }
\value{
  A list with class "htest" containing the following components:
  
  \item{ statistic }{ the value of the unified $\theta$ statistic. }
  \item{ p.value }{ the p-value for the test. }
  \item{ conf.int }{ a confidence interval for the parameter appropriate to the specified alternative hypothesis. }
  \item{ estimate }{ the estimated parameter depending on whether it wasa one-sample test or a two-sample test (in which case the estimated parameter can be a difference/ratio in means/variances). }
  \item{ null.value }{ the specified hypothesized value of parameter depending on whether it was a one-sample test or a two-sample test. }
  \item{ alternative }{ a character string describing the alternative hypothesis. }
  \item{ method }{ a character string indicating what type of asymptotictest was performed. }
  \item{ data.name }{ a character string giving the name(s) of the data. }
}
\references{ Coeurjolly, J.F. Drouilhet, R. Lafaye de Micheaux, P. Robineau, J.F. (2008) asympTest: R package for performing asymptotic parametric tests and confidence intervals, submitted to Journal of Statistical Software }
\author{ J.-F. Coeurjolly, R. Drouilhet, P. Lafaye de Micheaux, J.-F. Robineau }

\seealso{ \code{\link{t.test}}, \code{\link{var.test}} for normal distributed data. }
\examples{
## one sample
x <- rnorm(70, mean = 1, sd = 2)
asymp.test(x)
asymp.test(x,par="mean",alt="g")
asymp.test(x,par="mean",alt="l",ref=2)
asymp.test(x,par="var",alt="g")
asymp.test(x,par="var",alt="l",ref=2)
## two samples
y <- rnorm(50, mean = 2, sd = 1)
asymp.test(x,y)
asymp.test(x,y,"rMean","l",.75)
asymp.test(x,y,"dMean","l",0,rho=.75)
asymp.test(x,y,"dVar")
## Formula interface
asymp.test(uptake~Type,data=CO2)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{htest}
\keyword{univar}% __ONLY ONE__ keyword per line
