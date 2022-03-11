#' Returns a connection to a DAACS database.
#' 
#' @export
#' @importFrom mongolite mongo
getDAACSConnection <- function(
	username,
	password,
	host,
	port,
	db
) {
	# TODO: How to handle saving the password?
	daacs_conn <- list()
	daacs_conn$username <- username
	daacs_conn$host <- host
	daacs_conn$port <- port
	daacs_conn$URI <- paste0('mongodb://', username, ':', password, '@',
				  host, ':', port, '/', db)
	daacs_conn$m.users <- mongo(url = URI, collection = "users")
	daacs_conn$m.user_assessments <- mongo(url = URI, collection = "user_assessments")
	daacs_conn$m.events <- mongo(url = URI, collection = "event_containers")
	class(daacs_conn) <- c('daacs_connection')
	return(daacs_conn)
}
