#' Returns student results
#' 
#' @param daacs_conn a connection to the mongolite database.
#' @param student_id (optional) can be a character vector to limit the students
#'        data to return. Of omitted, return all student data.
#' @param assessments list of assessments to include results from.
#' @param calc_overall returns the overall numeric score which is the average
#'        of item responses.
#' @param domains whether to include all of the domain scores within each 
#'        assessment in the returned data.frame.
#' @param ... other parameters passed to mongolite.
#' @returns a data.frame with student results.
#' \describe{
#'     \item[username] username from DAACS
#'     \item[firstName] student's first name
#'     \item[lastName] student's last name
#'     \item[assessmentCategory] the domain (i.e. COLLEGE_SKILLS, MATHEMATICS, etc.)
#'     \item[assessmentLabel]
#'     \item[takenDate]
#'     \item[status]
#'     \item[takenDate]
#'     \item[overallScore]
#'     \item[SUBDOMAIN SCORES] 
#' }
#' @examples 
#' \dontrun{
#' getStudentResults() # Returns all students
#' getStudentResults(c('jbryer@excelsior.edu', 'angela.lui@cuny.edu'))
#' }
#' @export
getStudentResults <- function(
	daacs_conn,
	student_id,
	assessments = c('COLLEGE_SKILLS', 'MATHEMATICS', 'WRITING', 'READING'),
	calc_overall = TRUE,
	domains = FALSE,
	...
) {
	if(missing(conn)) {
		stop('Must specify a valid mongolite connection.')
	}
	if(missing(student_id)) { 
		# Return all student data
	} else {
		# Return student data for the specified IDs
		
	}
	
}
