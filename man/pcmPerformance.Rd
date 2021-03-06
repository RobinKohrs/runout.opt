% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pcm_performance.R
\name{pcmPerformance}
\alias{pcmPerformance}
\title{PCM runout distance performance}
\usage{
pcmPerformance(
  dem,
  slide_plys,
  slide_src,
  slide_id = 1,
  rw_slp = 33,
  rw_ex = 3,
  rw_per = 2,
  pcm_mu = 0.3,
  pcm_md = 75,
  buffer_ext = 500,
  buffer_source = 50,
  gpp_iter = 1000,
  predict_threshold = 0.5,
  plot_eval = FALSE,
  return_features = FALSE
)
}
\arguments{
\item{dem}{A DEM as a RasterLayer object}

\item{slide_plys}{Runout tracks as a SpatialPolygonsDataFrame}

\item{slide_src}{Source points as a SpatialPointsDataFrame or source areas
as a SpatialPolygonsDataFrame}

\item{slide_id}{Selects a single runout polygon from slide_plys by row}

\item{rw_slp}{Random walk slope threshold - below lateral spreading is modelled}

\item{rw_ex}{Random walk exponent controlling lateral spread}

\item{rw_per}{Random walk persistence factor to weight flow direction consistency}

\item{pcm_mu}{PCM model sliding friction coefficient}

\item{pcm_md}{PCM model mass-to-drag ratio (m)}

\item{buffer_ext}{(Optional) Defines buffer distance (in meters) around runout polygon
to crop source DEM. This helps to reduce computational time}

\item{buffer_source}{(Optional) Can define a buffer distance (in meters) to extend source
point to a source area}

\item{gpp_iter}{Number of model iterations}

\item{predict_threshold}{A cutoff value to define what quantile of simulated runout
frequencies is the predicted runout.}

\item{plot_eval}{(Logical) if TRUE, will plot simulated runout and runout polygon}

\item{return_features}{(Logical) if TRUE, returned list will include GPP input and output
data, in addition to a list of error measures.}
}
\value{
A list of runout distance performance measures.
}
\description{
Computes the error for runout distances simuluated using the random walk
     and PCM model components of the GPP tool in SAGA-GIS.
}
