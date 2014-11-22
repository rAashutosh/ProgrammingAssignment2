## Functions to cache the inverse of a matrix
## Function 1--- makeCacheMatrix--> creates a matrix whose inverse is to be cached
## Function 1(1)--- set--> setting the matrix
## Function 1(2)--- get--> method to get the matrix
## Function 1(3)--- setInverse--> setting the inverse of the matrix
## Function 1(4)--- getInverse--> getting the inverse of the matrix set by above function
## Function 2--- cacheSolve--> computing the inverse of the matrix returned by function 1. 


## Function 1

makeCacheMatrix <- function(x = matrix()) {
 i <- NULL

    ## Function 1(1)
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
}
    ## Function 1(2)
   get <- function() {
    	## Return the matrix
    	m
    }

    ## Function 1(3)
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## Function 1(4)
    getInverse <- function() {
        i
    }

    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Function 2
cacheSolve <- function(x, ...) {
    m <- x$getInverse()

    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
         }   
            
            data <- x$get()

    m <- solve(data) %*% data

    x$setInverse(m)

    ## Return the matrix
    m
}
