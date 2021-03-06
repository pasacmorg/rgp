% Generated by roxygen2 (4.0.1): do not edit by hand
\name{makeLocalRestartStrategy}
\alias{makeLocalRestartStrategy}
\title{Evolution restart strategies}
\usage{
makeLocalRestartStrategy(populationType = NULL,
  extinctionPrevention = FALSE, breedingFitness = function(individual) TRUE,
  breedingTries = 50)
}
\arguments{
\item{populationType}{The sType of the replacement individuals, defaults to \code{NULL} for
creating untyped populations.}

\item{extinctionPrevention}{Whether to surpress duplicate individuals in newly initialized
populations. See \code{\link{geneticProgramming}} for details.}

\item{breedingFitness}{A breeding function. See the documentation for
\code{\link{geneticProgramming}} for details.}

\item{breedingTries}{The number of breeding steps.}
}
\description{
Evolution restart strategies are functions of the signature \code{function(fitnessFunction,
population, populationSize, functionSet, inputVariables, constantSet)} that return a list of
two obtjects: First, a population that replace the run's current population. Second, a list
of elite individuals to keep.
}
\details{
\code{makeLocalRestartStrategy} creates a restart strategy that replaces all individuals with
new individuals. The single best individual is returned as the elite. When using a
multi-criterial fitness function, only the first component counts in the fitness sorting.
}

