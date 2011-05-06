\name{ggplots-package}
\alias{ggplots-package}
\alias{ggplots}
\docType{package}
\title{
	Higher order plots for ggplot2
}
\description{
	Higher order plots for ggplot2. Nothing more than a utility wrapper for frequently generated plots.
}
\details{
\tabular{ll}{
Package: \tab ggplots\cr
Type: \tab Package\cr
Version: \tab 0.1-1\cr
Date: \tab 2011-05-06\cr
License: \tab Artistic-2.0\cr
LazyLoad: \tab yes\cr
}
}
\author{
John Myles White

Maintainer: John Myles White <jmw@johnmyleswhite.com>
}
\keyword{ package }
\examples{
library('ggplots')

df <- data.frame(x = c(1, 2, 3, 4, 5), y = c(2, 3, 4, 4, 5), z = c(5, 3, 4, 1, 1))

p <- correlation.matrix(df)

p
}
