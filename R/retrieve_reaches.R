#' Retrieve NHDPlusV2 reaches from state boundary for CASTool
#'
#' @return
#' @export
#'
#' @examples
retrieve_reaches <- function(state){
  if(nchar(state) == 2){
    state <- state.name[which(state.abb == state)]
  }

  reach_name <- paste(state, "Reaches", sep = "_")

  data(list = reach_name, package = "CASToolBaseDataPckg", envir = environment())
  boundary_ret <- get(reach_name, envir = environment())

  return(boundary_ret)
}
