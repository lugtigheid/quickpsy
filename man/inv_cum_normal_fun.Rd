% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/inv_cum_normal_fun.R
\name{inv_cum_normal_fun}
\alias{inv_cum_normal_fun}
\title{Inverse cumulative normal function}
\usage{
inv_cum_normal_fun(prob, p)
}
\arguments{
\item{prob}{Vector of probabilities.}

\item{p}{Vector of parameters \code{p = c(mean, standard_deviation)}.}
}
\value{
\code{x} at each probability.
#'
}
\description{
Inverse cumulative normal function
}
\examples{
yseq <- seq(0, 1, .01)
xseq <- inv_cum_normal_fun(yseq, c(2, .5))
curve <- data.frame(x = xseq, y = yseq)
ggplot(curve, aes(x = x, y = y)) + geom_line()
}
\seealso{
\code{\link{cum_normal_fun}}
}

