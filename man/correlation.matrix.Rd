\name{correlation.matrix}
\alias{correlation.matrix}
\title{
	Produce a blue-scale heatmap of the correlation matrix for a given data.frame.
}
\description{
	Produce a blue-scale heatmap of the correlation matrix for a given data.frame using ggplot2.
}
\usage{
correlation.matrix(df,
									 method = "spearman",
									 scale = TRUE,
									 colors = NULL)
}
\arguments{
  \item{df}{
	Data frame whose columns will define the correlation matrix.
}
  \item{method}{
	What type of correlation to use? Defaults to Spearman rank order correlation.
}
  \item{scale}{
	Should we z-score correlations before plotting them?
}
  \item{colors}{
	What color scheme should we use?
}
}
\value{
	Returns a ggplot object that can be easily saved or visualized.
}
\examples{
library('ggplots')

df <- data.frame(x = c(1, 2, 3, 4, 5), y = c(2, 3, 4, 4, 5), z = c(5, 3, 4, 1, 1))

p <- correlation.matrix(df)

p
}
