% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/twidlr-lme4.R
\name{lmer}
\alias{lmer}
\alias{predict.merMod}
\title{data.frame-first formula-second method for \code{\link[lme4]{lmer}}}
\usage{
lmer(data, formula, ...)

\method{predict}{merMod}(object, data, ...)
}
\arguments{
\item{data}{frame containing the variables in the model}

\item{formula}{a two-sided linear formula object describing both the
    fixed-effects and random-effects part of the model, with the
    response on the left of a \code{~} operator and the terms, separated
    by \code{+} operators, on the right.  Random-effects terms are
    distinguished by vertical bars (\code{|}) separating expressions
    for design matrices from grouping factors.  Two vertical bars
    (\code{||}) can be used to specify multiple uncorrelated random
    effects for the same grouping variable. (Because of the way it is
    implemented, the \code{||}-syntax \emph{works
    only for design matrices containing
    numeric (continuous) predictors}; to fit models with independent
  categorical effects, see \code{\link{dummy}} or the \code{lmer_alt}
  function from the \code{afex} package.) 
}

\item{...}{Additional arguments to pass to model function}
}
\description{
This function passes a data.frame, formula, and additional arguments to
\code{\link[lme4]{lmer}}
}
\examples{
fit <- lmer(airquality, Ozone ~ Wind + (Wind | Month))
summary(fit)

# Help page for function being twiddled
?lme4::lmer
}
\seealso{
\code{\link[lme4]{lmer}}
}
