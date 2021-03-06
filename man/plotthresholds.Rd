% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/plotthresholds.R
\name{plotthresholds}
\alias{plotthresholds}
\title{Plot the thresholds}
\usage{
plotthresholds(qp, x = NULL, panel = NULL, xpanel = NULL, ypanel = NULL,
  color = NULL, geom = "bar", ci = T)
}
\arguments{
\item{qp}{output from quickpsy.}

\item{x}{Name of the variable to displayed in the x-axis.}

\item{panel}{Name of the variable to be split in panels.}

\item{xpanel}{Name of the variable to be split in horizontal panels.}

\item{ypanel}{Name of the variable to be split in vertical panels.}

\item{color}{Name of the variable codded by color.}

\item{geom}{If \code{'bar'} displays bars.
If \code{'point'} displays points (default is 'bar').}

\item{ci}{If \code{FALSE} confidence intervals are not plotted
(default is \code{TRUE}).}
}
\description{
\code{plotthresholds} plot the thresholds.
}
\examples{
library(MPDiR) # contains the Vernier data
fit <- quickpsy(Vernier, Phaseshift, NumUpward, N,
                grouping = .(Direction, WaveForm, TempFreq))
plotthresholds(fit)
plotthresholds(fit, x = WaveForm)
plotthresholds(fit, xpanel = Direction)
plotthresholds(fit, color = Direction)
plotthresholds(fit, color = Direction, ypanel = WaveForm, geom = 'point')
}
\seealso{
\code{\link{plotthresholds_}}
}

