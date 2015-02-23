#' one_limit
#'
#' @export
one_limit <- function(d, x, xmin, xmax, log) {
  if (is.null(xmin)) xmin <- min(d[[x]])
  if (is.null(xmax)) xmax <- max(d[[x]])
  if (log) {
    xmin <- log(xmin)
    xmax <- log(xmax)
  }
  data.frame(xmin, xmax)
}