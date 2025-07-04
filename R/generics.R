#' @include package_imports.R
#' @include classes.R
NULL


# Giotto Object Settings ####
# Methods and documentations found in methods-IDs.R
setGeneric("spatIDs", function(x, ...) standardGeneric("spatIDs"))
setGeneric("spatIDs<-", function(x, ..., value) standardGeneric("spatIDs<-"))
setGeneric("featIDs", function(x, ...) standardGeneric("featIDs"))

## instructions ####
# Methods and documentations found in methods-instructions.R
setGeneric(
    "instructions",
    function(gobject, param, ...) standardGeneric("instructions")
)
setGeneric(
    "instructions<-",
    function(gobject, param, initialize, ..., value) {
        standardGeneric("instructions<-")
    }
)

## set defaults ####
# Methods and documentations found in methods-instructions.R
setGeneric(
    "activeSpatUnit",
    function(gobject, ...) standardGeneric("activeSpatUnit")
)
setGeneric(
    "activeSpatUnit<-",
    function(gobject, ..., value) standardGeneric("activeSpatUnit<-")
)



# Object creation ####
setGeneric(
    "createGiottoPoints",
    function(x, ...) standardGeneric("createGiottoPoints")
)
setGeneric(
    "createGiottoPolygon",
    function(x, ...) standardGeneric("createGiottoPolygon")
)


# Object reconnection ####
# Some objects may operate base on on-disk files.
setGeneric("reconnect", function(x, ...) standardGeneric("reconnect"))


# Object Characteristics ####

## nrow() S4 generic ####
if (!isGeneric("nrow")) setOldClass("nrow")
if (!isGeneric("ncol")) setOldClass("ncol")
if (!isGeneric("dim")) setOldClass("dim")

## colnames and rownames generics ####
if (!isGeneric("colnames")) setOldClass("colnames")
if (!isGeneric("rownames")) setOldClass("rownames")


# copy() S4 generic ####
setGeneric("copy",
    function(x) standardGeneric("copy"),
    useAsDefault = data.table::copy
)


# lazy operations ####
setGeneric("doDeferred", function(x, ...) standardGeneric("doDeferred"))



# spatial operations ####
setGeneric(
    "calculateOverlap",
    function(x, y, ...) standardGeneric("calculateOverlap")
)
setGeneric(
    "overlapToMatrix",
    function(x, ...) standardGeneric("overlapToMatrix")
)

#' @title Data Processing
#' @name processData
#' @description Generic for processing an object containing measured values.
#' Specific methods should be defined for this generic to
#' perform pre or post processing specific to a data class type. No methods
#' are exported from \pkg{GiottoClass}. The methods, which may
#' differ depending on the input data, are attached from other packages which
#' focus on analyses and/or alternative data representations with specific ways
#' to implement those analyses.
#' @param x a data object
#' @param param a [processParam-class] inheriting object
#' @param ... additional arguments, for use in specific methods
#' @returns An object of the same class containing the processed values
#' @export
setGeneric("processData", function(x, param, ...) standardGeneric("processData"))
#' @title Data Clustering
#' @name clusterData
#' @description Generic for clustering numeric matrix-like data. `param` accepts
#' param classes from the bioconductor \pkg{bluster} framework.
#' No methods are exported from \pkg{GiottoClass}. The methods, which may
#' differ depending on the input data, are attached from other packages which
#' focus on analyses and/or alternative data representations with specific ways
#' to implement those analyses.
#' @param x a data object
#' @param param a [bluster::BlusterParam-class] inheriting object
#' @param ... additional arguments, for use in specific methods
#' @returns Clustering results. Exact outputs may depend on param settings
#' @export
setGeneric("clusterData", function(x, param, ...) standardGeneric("clusterData"))

# Methods and documentations found in methods-spatShift.R

setGeneric("spatShift", function(x, ...) standardGeneric("spatShift"))
setGeneric("affine", function(x, y, ...) standardGeneric("affine"))
setGeneric("shear", function(x, ...) standardGeneric("shear"))
setGeneric("XY", function(x, ...) standardGeneric("XY"))
setGeneric("XY<-", function(x, ..., value) standardGeneric("XY<-"))
setGeneric("settleGeom", function(x, ...) standardGeneric("settleGeom"))
setGeneric("combineGeom", function(x, ...) standardGeneric("combineGeom"))
setGeneric("splitGeom", function(x, ...) standardGeneric("splitGeom"))
setGeneric("area", function(x, ...) standardGeneric("area"))


# Methods and documentations found in methods-overlaps.R
setGeneric("overlaps", function(x, ...) standardGeneric("overlaps"))



# Giotto subnesting ####
# All methods and documentations found in methods-nesting.R

## prov() S4 generic ####
setGeneric("prov", function(x) standardGeneric("prov"))
setGeneric("prov<-", function(x, value) standardGeneric("prov<-"))

## spatUnit() S4 generic ####
setGeneric("spatUnit", function(x) standardGeneric("spatUnit"))
setGeneric("spatUnit<-", function(x, ..., value) standardGeneric("spatUnit<-"))

## featType() S4 generic ####
setGeneric("featType", function(x) standardGeneric("featType"))
setGeneric("featType<-", function(x, ..., value) standardGeneric("featType<-"))

## objName() generic ####
setGeneric("objName", function(x) standardGeneric("objName"))
setGeneric("objName<-", function(x, value) standardGeneric("objName<-"))

## setGiotto() generic ####
setGeneric("setGiotto", function(gobject, x, ...) standardGeneric("setGiotto"))


# coerce ####
setGeneric("as.sf", function(x, ...) standardGeneric("as.sf"))
setGeneric("as.sp", function(x, ...) standardGeneric("as.sp"))
setGeneric("as.stars", function(x, ...) standardGeneric("as.stars"))
setGeneric("as.terra", function(x, ...) standardGeneric("as.terra"))
