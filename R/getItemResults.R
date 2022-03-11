#' Returns individal item responses.
#' 
#' 
#' @param daacs_conn a connection to the mongolite database.
#' @param student_id (optional) can be a character vector to limit the students
#'        data to return. Of omitted, return all student data.
#' @param assessments list of assessments to include results from.
#' @returns a data.frame where each row represents a student response to an
#'          individual question.
#' \describe{
#' \item[username] student's username in DAACS.
#' \item[assessment] which assessment this item is from.
#' \item[takenDate] the time the student completed the question.
#' \item[stem] the question stem
#' \item[response] the student's answer to the question as a character (i.e.
#'      strongly agree for SRL, A through D for multiple choice).
#' \item[score] the score for the student.
#' }
#' @export
getItemResults <- function(
	daacs_conn,
	student_id,
	assessments = c('COLLEGE_SKILLS', 'MATHEMATICS', 'WRITING', 'READING'),
	...
) {
	if(missing(conn)) {
		stop('Must specify a valid mongolite connection.')
	}
	
}