## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will cache the matrix as well as its inverse
makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	
	set <- function(y) {
		x <<- y
		inverse <<- NULL
	}
	
	get <- function() x
	
	setInverse <- function(solve) inverse <<- solve
	
	getInverse <- function() inverse
	
	list(set=set,get=get,setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function
## This function solves the matrix and prints it's inverse. First it
## will check if value is present. If so, return value, else calculate
## inverse and then return the value after storing
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
	inverse <- x$getInverse()
	if(!is.null(inverse)) {
		message("getting cached data")
		return(inverse)
	}
	
	data <- x$get()
	inverse <- solve(data,...)	
	x$setInverse(inverse)
	inverse
}
