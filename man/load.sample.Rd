% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ms_load.R
\name{load.sample}
\alias{load.sample}
\title{Load mass spec data from a 2-column space-delimited text file}
\usage{
load.sample(froot, name = "Sample", spots, fext = ".txt")
}
\arguments{
\item{froot}{the file path to the directory containing the data, plus the part of the filename that stays the same}

\item{name}{the name of the sample}

\item{spots}{a vector of spot names - there *must* be three of these}

\item{fext}{the file extension. Default is ".txt"}
}
\description{
Load mass spec data from a 2-column space-delimited text file
}
\examples{
froot  <- "~/tmp/bioarch_keri/20160909_Keri13/20160909_Keri13_0_"
spots  <- c("G7","G10","G13")
sample <- "C1"
}
