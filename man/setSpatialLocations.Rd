% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/slot_accessors.R
\name{setSpatialLocations}
\alias{setSpatialLocations}
\title{Set spatial locations}
\usage{
setSpatialLocations(
  gobject,
  x,
  spat_unit = NULL,
  name = "raw",
  provenance = NULL,
  verbose = TRUE,
  initialize = TRUE
)
}
\arguments{
\item{gobject}{giotto object}

\item{x}{spatLocsObj or list of spatLocsObj. Passing NULL will remove a
specified set of spatial locations data.}

\item{spat_unit}{spatial unit (e.g. "cell")}

\item{name}{name of spatial locations, default "raw"}

\item{provenance}{provenance information (optional)}

\item{verbose}{be verbose}

\item{initialize}{(default = FALSE) whether to initialize the gobject before
returning}
}
\value{
giotto object
}
\description{
Function to set a spatial location slot
}
\details{
Spatial information will be set to the nested location described
by their tagged spat_unit and name information. An alternative location can
also be specified through the respective params in this function.
}
\examples{
g <- GiottoData::loadGiottoMini("visium")
x <- getSpatialLocations(g, output = "data.table")
sl <- data.frame(cell_ID = x$cell_ID, sdimx = rnorm(624), sdimy = rnorm(624))

setSpatialLocations(gobject = g, x = createSpatLocsObj(sl, name = "raw"))
}
\seealso{
Other spatial location data accessor functions: 
\code{\link{getSpatialLocations}()},
\code{\link{get_spatial_locations}()},
\code{\link{set_spatial_locations}()}

Other functions to set data in giotto object: 
\code{\link{get_cell_id}()},
\code{\link{get_feat_id}()},
\code{\link{setCellMetadata}()},
\code{\link{setDimReduction}()},
\code{\link{setExpression}()},
\code{\link{setFeatureInfo}()},
\code{\link{setFeatureMetadata}()},
\code{\link{setGiottoImage}()},
\code{\link{setMultiomics}()},
\code{\link{setNearestNetwork}()},
\code{\link{setPolygonInfo}()},
\code{\link{setSpatialEnrichment}()},
\code{\link{setSpatialGrid}()},
\code{\link{setSpatialNetwork}()},
\code{\link{set_NearestNetwork}()},
\code{\link{set_cell_id}()},
\code{\link{set_cell_metadata}()},
\code{\link{set_dimReduction}()},
\code{\link{set_expression_values}()},
\code{\link{set_feat_id}()},
\code{\link{set_feature_info}()},
\code{\link{set_feature_metadata}()},
\code{\link{set_giottoImage}()},
\code{\link{set_multiomics}()},
\code{\link{set_polygon_info}()},
\code{\link{set_spatialGrid}()},
\code{\link{set_spatialNetwork}()},
\code{\link{set_spatial_enrichment}()},
\code{\link{set_spatial_locations}()}
}
\concept{functions to set data in giotto object}
\concept{spatial location data accessor functions}
