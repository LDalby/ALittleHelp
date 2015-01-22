#' Calculate bearing between points
#'
#' Return the bearing between a sequence of points
#' 
#' @param x integer vector of x coordinates
#' @param y integer vector of y coordinates
#' @return vector of bearings (the first one being NA)
#' @export
GetBearing = function(x,y) {
	temp = NA
	for (i in 2:length(x)) {
		temp[i] = bearing(c(x[i-1], y[i-1]), c(x[i], y[i])) 
	}
	return(temp)
}
