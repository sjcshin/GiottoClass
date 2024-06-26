% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spatial_structures.R
\name{convert_to_reduced_spatial_network}
\alias{convert_to_reduced_spatial_network}
\title{convert_to_reduced_spatial_network}
\usage{
convert_to_reduced_spatial_network(full_spatial_network_DT)
}
\arguments{
\item{full_spatial_network_DT}{full spatial network in data.table format}
}
\value{
data.table
}
\description{
Convert to a reduced spatial network. Specifically, removes
the duplicated connections so that only \eqn{a} -> \eqn{b} interactions
remain.
}
\examples{
g <- GiottoData::loadGiottoMini("visium")
spat_net <- getSpatialNetwork(g, output = "networkDT")
spat_net_full <- convert_to_full_spatial_network(spat_net)

convert_to_reduced_spatial_network(spat_net_full)
}
\keyword{internal}
