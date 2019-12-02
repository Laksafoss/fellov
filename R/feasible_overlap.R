#' Feasibility of Ellipsoid Overlap
#'
#' Determin if the ellipsoids overlap.
#'
#' long long description
#'
#' @param ell a list of length at least 2 describing the ellipsoids.
#' @param width a vector the (non-negative) widths of ellipsoids in the
#'   ellipsoid precision matrix norm.
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
feasible_overlap <- function(ell, width = 1, method = "QP", ...) {
  # TODO
  return(TRUE)
}
