#' Set API Key
#'
#' @param key
#'
#' @return
#' @export
#'
#' @examples
#' set_biblesearch_key("fdsdffdssd4324213234")
set_biblesearch_key <- function(key) {
  Sys.setenv(BIBLESEARCH_API_TOKEN = key)
}
