% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/twidlr-stats.R
\name{kmeans}
\alias{kmeans}
\alias{predict.kmeans}
\title{data.frame-first formula-second method for \code{\link[stats]{kmeans}}}
\usage{
kmeans(data, formula = ~., ...)

\method{predict}{kmeans}(object, data, ...)
}
\arguments{
\item{data}{Data frame containing the variables in the model}

\item{formula}{One-sided \code{\link[stats]{formula}} (optional). If omitted,
all variables in "data" will be included.}

\item{...}{Additional arguments to pass to model function}

\item{object}{Fitted model}
}
\description{
This function passes a data.frame, formula, and additional arguments to
\code{\link[stats]{kmeans}}.
}
\examples{
# Standard kmeans
kmeans(iris, centers = 3)

# formula interface can be used to select certain variables
kmeans(iris, ~ Petal.Width + Sepal.Width, centers = 3)

#... or create new variables. Consider non-linear example:

# Create data for two circles
x <- matrix(rnorm(300),nc=2)
y <- x/sqrt(rowSums(x^2))
d <- data.frame(rbind(y, y*5))
plot(d)

library(broom)
library(ggplot2)
# Show clustering with X and Y dimensions
tmp <- augment(kmeans(d, ~., 2), d)
ggplot(tmp, aes(X1, X2, color = .cluster)) +
  geom_point()

# Show clustering where formula used to add a quadratic component
tmp <- augment(kmeans(d, ~ X1 + X2 + I(X1^2 + X2^2), 2), d)
ggplot(tmp, aes(X1, X2, color = .cluster)) +
  geom_point()

# Help page for function being twiddled
?stats::kmeans
}
\seealso{
\code{\link[stats]{kmeans}}
}
