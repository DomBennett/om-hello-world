pckgnm <- environmentName(env = environment())

#' @name hello_world
#' @title Say hello!
#' @description Run \code{echo "Hello World!"} in Ubuntu 16.04.
#' @param ... Additional things to say, character.
#' @return Logical
#' @export
hello_world <- function(...) {
  ids <- outsider:::ids_get(pckgnm = pckgnm)
  # launch container
  outsider:::docker_start(cntnr_id = ids[['cntnr_id']],
                          img_id = ids[['img_id']])
  on.exit(outsider:::docker_stop(cntnr_id = ids[['cntnr_id']]))
  # run command
  invisible(outsider:::docker_exec(cntnr_id = ids[['cntnr_id']], 'echo',
                                   'Hello World!', ...))
}

