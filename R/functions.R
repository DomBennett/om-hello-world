pkgnm <- environmentName(env = environment())

#' @name hello_world
#' @title Say hello!
#' @description Run \code{echo "Hello World!"} in Ubuntu 18.04.
#' @return Logical
#' @export
hello_world <- function() {
  outsider::.run(pkgnm = pkgnm, files_to_send = NULL, 'echo', 'Hello World!',
                 'This is ....\n', 'lsb_release', '-idrc')
}

#' @name system_info
#' @title Fetch system information
#' @description Fetch the system information of the outsider module.
#' @return Logical
#' @export
system_info <- function() {
  outsider::.run(pkgnm = pkgnm, files_to_send = NULL, 'uname', '-a')
}
