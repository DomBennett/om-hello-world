#' @name hello_world
#' @title Say hello!
#' @description Run \code{echo "Hello World!"} in Ubuntu 16.04.
#' @param ... Additional things to say, character.
#' @return Logical
#' @export
hello_world <- function(...) {
  base_id <- 'hello-world'
  img_id <- paste0('dombennett/', base_id)
  # generate unique container ID by counting processes
  nps <- outsider:::docker_ps_count()
  cntnr_id <- paste0(base_id, '_', nps)
  # launch container
  outsider:::docker_start(cntnr_id = cntnr_id, img_id = img_id)
  on.exit(outsider:::docker_stop(cntnr_id = cntnr_id))
  # run command
  invisible(outsider:::docker_exec(cntnr_id = cntnr_id, 'echo', 'Hello World!',
                                   ...))
}
