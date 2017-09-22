#' Get Passage
#'
#' @param version valid BibleSearch version
#' @param book book, e.g. "Genesis"
#' @param verses character vector, e.g. "1-5"
#'
#' @return text
#' @export
#'
#' @examples
#' biblesearch_passage(version = "eng-ESV", book = "john", verses = "1-5")
biblesearch_passage <- function(version = NULL, book = NULL, verses = NULL) {

  if(is.null(version) || is.null(book) || is.null(verses)) {
    stop("Must supply version, book, and verses arguments")
  }
  BASE_URL <- "https://bibles.org/v2/passages.js?q[]=%s+%s&version=%s"
  url <- sprintf(BASE_URL, book, verses, version)
  text <- biblesearch_GET(url)$response$search$result$passages$text
  if (is.null(text)) stop("No text available for that version.", call. = FALSE)
  clean_text(text, version)
}
