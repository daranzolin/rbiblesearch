% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/biblesearch_passage.R
\name{biblesearch_passage}
\alias{biblesearch_passage}
\title{Get Passage}
\usage{
biblesearch_passage(version = NULL, book = NULL, verses = NULL)
}
\arguments{
\item{version}{valid BibleSearch version}

\item{book}{book, e.g. "Genesis"}

\item{verses}{character vector, e.g. "1-5"}
}
\value{
text
}
\description{
Get Passage
}
\examples{
biblesearch_passage(version = "eng-ESV", book = "john", verses = "1-5")
}
