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
