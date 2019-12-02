#' Ellipsoid Wrangeler
#'
#' short
#'
#' Takes an ellipsoid parameterization and and outputs the parameterization
#' needed for \code{method} to run. A parameterization is simply a named list,
#' where each named entry is a parameter. The following parametrizations are
#' accepted as input. The radius parameter \code{r} is only needed when the
#' function \code{\link{feasible_overlap}} is to be applied.
#' \describe{
#'   \item{c, S, r}{A vector giving the center coordinates \code{C}, a matrix
#'     \code{S} specifying the dispersion and the radius parameter \code{r}:
#'     \deqn{latex}{E = \{x \in  R^n : (x-c)^T S^{-1} (x-c) \le r \}}}
#'   \item{c, P, r}{A vector giving the center coordinates \code{C}, a matrix
#'     \code{P} specifying the precision and the radius parameter \code{r}:
#'     \deqn{latex}{E = \{x \in  R^n : (x-c)^T P (x-c) \le r \}}}
#'   \item{c,l,L}{TODO !!!}
#' }
#'
#' @param e a list of ellipsoids to be wrangled.
#' @param method a feasibility method determining the output of the wrangeler.
#' @param ... additional arguments TODO !!
#'
#' @return The output of the wrangler depends on the method.
#' \describe{
#'   \item{QP, Marginal}{Returns the (c,P,r) parameterization.}
#'   \item{PairTransform}{Returns the (c,l,L) parameterization.}
#' }
#'
#' @examples
#' # two dimensional unite ball
#' e <- list(c = c(0,0), S = matrix(c(1,0,0,1), ncol = 2), r = 1)
#' f <- wrangle_ellipsoid(e, method = "QP") # now (c,P,r) parameterization
#'
#' @export
wrangle_ellipsoid <- function(e, method, ...) {
  center <- 1 # I THINK WE ALWAYS NEED THIS ONE
  if (method %in% c("QP", "Marginal")) {
    P <- 1 # solve(sigma)
    # SKAL HAVE MIDTE OF PRECISION
    return(list(C = center, P = P))
  } else if (method == "PairTransform") {
    lambda <- 1
    # SKAL HAVE MIDTE OF EGENVÆRDIER AF PRECISION
    return(list(C = center, lambda = lambda))
  }
  return(e)
}
