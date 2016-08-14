## Two functions are created: one for caching the Matrix, and the
## second to compute the inverse.

## makeCacheMatrix is the function which caches a matrix parameter named h

makeCacheMatrix <- function(x = matrix()) {
h <- NULL
 	set <-function(y){
 		x <<- y
 		h <<- NULL
 	}
 	get <-function() x
 	setmatrix <- function(solve) m<<- solve
 	getmatrix <- function() h
 	list (set = set, get = get,
 		 setmatrix = setmatrix
 		 getmatrix = getmatrix)
}


## cachesolve function computea the matrix inversion.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	h<- x$getmatrix()
	if (!is.null(h)) {
		message("getting cached data")
		return(h)
	} 
	matrix <- x$get()
	h <- solve(matrix, ...)
	x$setmatrix(h)
	h
	}