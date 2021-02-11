#' Set the Pardot user credentials and authenticate using Salesforce OAuth
#'
#' Authenticate a user using Salesforce OAuth Access Token method.
#'
#' @param pardot_username A string containing your Pardot UserName
#' @param pardot_password A string containing your Pardot Password
#' @param pardot_businessunit_id A string containing your Pardot Business Unit Id
#' @param client_id A string containing your Salesforce OAuth client id
#' @param client_secret A string containing your Salesforce OAuth client_secret
#' @return Authentication result (a token or an error message)
#' 
#' @examples
#' \dontrun{
#' set_oauth_credentials("username", "password", "businessunit-id", "client-id", "client-secret")}
#' @export
#' set_oauth_credentials

set_oauth_credentials <- function(pardot_username, pardot_password, pardot_businessunit_id,
                            client_id, client_secret) {
    if (!is.null(pardot_username) && !is.null(pardot_password) && 
        !is.null(client_id) && !is.null(client_secret) && !is.null(pardot_businessunit_id)) {
        .paRdotEnv$data$method <- "oauth"
        .paRdotEnv$data$client_id <- client_id
        .paRdotEnv$data$client_secret <- client_secret
        .paRdotEnv$data$pardot_username <- pardot_username
        .paRdotEnv$data$pardot_password <- pardot_password
        .paRdotEnv$data$pardot_businessunit_id <- pardot_businessunit_id
    } else {
        warning("Warning -- OAuth credentials must be set!")
    }
    pardot_client.authenticate()
}
