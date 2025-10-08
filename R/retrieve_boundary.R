#' Retrieve state boundary
#'
#' @return
#' @export
#'
#' @examples
retrieve_boundary <- function(state){
  if(nchar(state) == 2){
    state <- state.name[which(state.abb == state)]
  }

  boundary_name <- paste(state, "BoundaryShapefile", sep = "_")

  data(list = boundary_name, package = "CASToolBaseDataPckg", envir = environment())
  boundary_ret <- get(boundary_name, envir = environment())

  return(boundary_ret)
}
