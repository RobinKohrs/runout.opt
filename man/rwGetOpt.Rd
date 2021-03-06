% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/randomwalk_gridsearch.R
\name{rwGetOpt}
\alias{rwGetOpt}
\title{Get random walk grid search optimal parameters}
\usage{
rwGetOpt(x, measure = median, from_save = FALSE)
}
\arguments{
\item{x}{A list of random walk grid search values}

\item{measure}{A measure (e.g. median, mean) to find optimal parameter across grid search space}

\item{from_save}{(Logical) if TRUE, will load save files from current working directory}
}
\value{
A dataframe  with the optimal parameter set and AUROC performance
}
\description{
Get random walk grid search optimal parameters
}
