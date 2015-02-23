#' quickreadfiles
#' @export
quickreadfiles <- function(path, ...) {
  arguments <- c(as.list(environment()), list(...))
  arguments[1] <- NULL

  namesfun <- function(d) {
    namefile <- paste0(path, paste(unlist(d), collapse = ''), '.txt')
    data.frame(namefile, exist = file.exists(namefile))
  }

  namefiles <- expand.grid(arguments) %>%
    dplyr::group_by_(.dots = names(arguments)) %>%
    dplyr::do(namesfun(.))

  namefiles %>% dplyr::filter(exist) %>%
    dplyr::group_by_(.dots = names(arguments)) %>%
    dplyr::do(read.table(.$namefile, header = T))

}