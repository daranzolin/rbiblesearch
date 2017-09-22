clean_text <- function(text, version) {
  text <- gsub("<.*?>", "", text)
  text <- gsub("\n", "", text)
  text <- sub( "^\\D*\\d", "", text)
  text <- gsub("  ", " ", text)
  text <- stringr::str_trim(text)
  text <- gsub("([0-9])([a-zA-Z])", "\\1 \\2", text)

  if (version == "spa-RVR1960") {
    text <- sub('.*)', "", text)
  }
  text
}

biblesearch_GET <- function(url) {
  r <- httr::GET(url,
                 httr::authenticate(user = Sys.getenv("BIBLESEARCH_API_TOKEN"), "xxx"),
                 httr::user_agent("rbiblesearch - https://github.com/daranzolin/rbiblesearch")
  )
  httr::stop_for_status(r)
  r <- httr::content(r, "text", encoding = "UTF-8")
  jsonlite::fromJSON(r)
}

get_first_verse <- function(verses) {


}

