% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classes.R
\docType{class}
\name{cellMetaObj-class}
\alias{cellMetaObj-class}
\alias{cellMetaObj}
\title{S4 cellMetaObj}
\value{
cellMetaObj
}
\description{
Framework to store cell metadata
}
\section{Slots}{

\describe{
\item{\code{metaDT}}{metadata info}

\item{\code{col_desc}}{(optional) character vector describing columns of the metadata}

\item{\code{spat_unit}}{spatial unit of aggregated expression (e.g. 'cell')}

\item{\code{feat_type}}{feature type of aggregated expression (e.g. 'rna', 'protein')}

\item{\code{provenance}}{origin data of aggregated expression
information (if applicable)}
}}

\examples{
GiottoData::loadSubObjectMini("cellMetaObj")
}
