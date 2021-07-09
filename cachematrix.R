## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        dj <- NULL
        set <- function(y) {
                x <<- y
                dj <<- NULL
                }
        get <- function() {x}
        
        setInverse <- function(inverse) {dj <<- inverse}
        getInverse <- function() {dj}
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        dj <- x$getInverse()
        if(!is.null(dj)) {
                message("retrieved cached data")
                return(dj)
                }
        mat <- x$get()
        dj <- solve(mat, ...)
        x$setInverse(dj)
        dj
         ## Return a matrix that is the inverse of 'x'
}
