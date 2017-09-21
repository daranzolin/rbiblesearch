#' Get Available BibleSearch Versions
#'
#'
#' @return data frame of versions
#' @export
#'
#' @examples
#' get_biblesearch_versions()
get_biblesearch_versions <- function() {
  url <- "https://bibles.org/v2/versions.js"
  x <- biblesearch_GET(url)
  x <- x[[1]]
  x[[1]]
}
