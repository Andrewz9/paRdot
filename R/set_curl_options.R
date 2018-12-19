#' Set curl options for Pardot API calls.
#' See httr::config() and curl::handle_setopt() for options.
#' Alternative to using this function, use httr::set_config() to globally set the curl options.
#'
#' @param curl_options To set curl options directly. Usage: curl_options = httr:config(...)
#' @examples
#' \dontrun{
#' # Connect using SSL/TLS v1.2 for Pardot API calls only
#' set_curl_options(httr::config(sslversion = 6))
#' set_credentials("your-username", "your-password", "your-user-key")
#' 
#' library(httr)
#' set_config(config(sslversion = 6)) # Connect using SSL/TLS v1.2 for any curl connection
#' set_credentials("your-username", "your-password", "your-user-key")}
#' @export set_curl_options

set_curl_options <- function(curl_options = NULL) {
    pardot_curl_options <<- curl_options
}
