
#
# import stuffs
# @import graphics
# @import stats
#' @import sf
#' @importFrom grDevices colorRampPalette
#' @importFrom stats aggregate median na.omit quantile runif sd


# Rcpp stuff
#' @useDynLib mapsf,.registration = TRUE
#' @importFrom Rcpp evalCpp
NULL



# #' @importFrom magrittr %>%
# #' @export
# magrittr::`%>%`

#' @importFrom utils globalVariables
.gmapsf <- new.env(parent = emptyenv())
globalVariables(".gmapsf", package = "mapsf", add = FALSE)
.gmapsf$args <- list(
  name = "default",
  bg = "white",
  fg = "black",
  mar = c(5.1, 4.1, 4.1, 2.1),
  tab = TRUE,
  pos = "left",
  inner = FALSE,
  line = 1.2,
  cex = 1,
  font = 2
)
.gmapsf$inset <- FALSE
