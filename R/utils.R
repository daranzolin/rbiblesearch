set_biblesearch_token <- function(token) {
  Sys.setenv(BIBLESEARCH_API_TOKEN = token)
}

clean_text <- function(text) {
  text <- gsub("<.*?>", "", text)
  text <- gsub("\n", "", text)
  text <- sub( "^\\D*\\d", "", text)
  text <- gsub("  ", " ", text)
  text <- stringr::str_trim(text)
  gsub("([0-9])([a-zA-Z])", "\\1 \\2", text)
}

biblesearch_GET <- function(url) {
  r <- httr::GET(url,
                 httr::authenticate(user = Sys.getenv("BIBLESEARCH_API_TOKEN"), "xxx"),
                 httr::user_agent("rbiblesearch - https://github.com/daranzolin/rbiblesearch")
  )
  httr::stop_for_status(r)
  r %>%
    httr::content("text") %>%
    jsonlite::fromJSON()
}

