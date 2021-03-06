% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/likelihood.R
\name{anovaLR}
\alias{anovaLR}
\title{implements a scaled variant of the maximum likelihood ratio test}
\usage{
anovaLR(X, Y)
}
\arguments{
\item{X}{covariate matrix}

\item{Y}{response vector}
}
\value{
\eqn{p}-value of the test
}
\description{
Compared to \code{\link{maxLR}}, the residual sum of squares (RSS) is scaled
by the degrees of freedom of the model \eqn{df = n - k}, where \eqn{n} is
the number of samples and \eqn{k} is the number of covariates. In
\code{\link{maxLR}}, the RSS is instead averaged over \eqn{n}. Both estimators
are asymptotically equivalent, with minor differences for finite samples.
Further details in this \href{https://stats.stackexchange.com/a/155614}{link}.
}
\examples{
n <- 50
p <- 20
X <- matrix(rnorm(n*p), nrow = n, ncol = p)
Y <- rnorm(n)
stat.anova <- anovaLR(X, Y)

}
\seealso{
Other LR test: 
\code{\link{maxLR}()}
}
\concept{LR test}
