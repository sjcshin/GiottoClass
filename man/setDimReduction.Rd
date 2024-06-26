% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/slot_accessors.R
\name{setDimReduction}
\alias{setDimReduction}
\title{Set dimension reduction data}
\usage{
setDimReduction(
  gobject,
  x,
  spat_unit = NULL,
  feat_type = NULL,
  name = "pca",
  reduction = c("cells", "feats"),
  reduction_method = c("pca", "umap", "tsne"),
  provenance = NULL,
  verbose = TRUE,
  initialize = TRUE
)
}
\arguments{
\item{gobject}{giotto object}

\item{x}{dimObj or list of dimObj to set. Passing NULL will remove a
specified set of dimension reduction information from the gobject}

\item{spat_unit}{spatial unit (e.g. "cell")}

\item{feat_type}{feature type (e.g. "rna", "dna", "protein")}

\item{name}{name of reduction results}

\item{reduction}{reduction on cells or features}

\item{reduction_method}{reduction method (e.g. "pca")}

\item{provenance}{provenance information (optional)}

\item{verbose}{be verbose}

\item{initialize}{(default = FALSE) whether to initialize the gobject before
returning}
}
\value{
giotto object
}
\description{
Function to dimension reduction information into the Giotto
object.
}
\examples{
g <- GiottoData::loadGiottoMini("visium")
dimred <- getDimReduction(g)

setDimReduction(gobject = g, x = dimred)
}
\seealso{
Other dimensional reduction data accessor functions: 
\code{\link{getDimReduction}()},
\code{\link{get_dimReduction}()},
\code{\link{set_dimReduction}()}

Other functions to set data in giotto object: 
\code{\link{get_cell_id}()},
\code{\link{get_feat_id}()},
\code{\link{setCellMetadata}()},
\code{\link{setExpression}()},
\code{\link{setFeatureInfo}()},
\code{\link{setFeatureMetadata}()},
\code{\link{setGiottoImage}()},
\code{\link{setMultiomics}()},
\code{\link{setNearestNetwork}()},
\code{\link{setPolygonInfo}()},
\code{\link{setSpatialEnrichment}()},
\code{\link{setSpatialGrid}()},
\code{\link{setSpatialLocations}()},
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
\concept{dimensional reduction data accessor functions}
\concept{functions to set data in giotto object}
\keyword{autocomplete}
