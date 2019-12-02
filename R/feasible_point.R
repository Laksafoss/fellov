#' Find An Overlap of Ellipsoids
#'
#' Find the smallest width of ellipsoids resulting in an overlap.
#'
#' long long description
#'
#' @param ell a list of length at least 2 describing the ellipsoids.
#' @param initial starting value for the overlap point.
#' @param method a character string indicating the method used for solving the
#'   feasibility problem. The standard is "\code{QP}".
#' @param ... additional arguments to be passed to the low level feasibility
#'   method.
#'
#' @return logical.
#'
#' @examples
#' ell <- list(
#'   list(B = c(0,0), M = matrix(c(1,0,0,1), ncol = 2)),
#'   list(B = c(1,1), M = matrix(c(1,0,0,1), ncol = 2))
#' )
#'
#' @export
feasible_point <- function(ell, initial, method = "QP", ...) {
  # TODO
  return(TRUE)
}
