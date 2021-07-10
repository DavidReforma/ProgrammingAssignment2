## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix is the first and main function I used
## I used "dj" as a variable for null
## The function makeCacheMatrix includes; set = set, get = get, setInverse = setInverse, getInverse = getInverse

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
## I used cacheSolve as a function to calculate inverse
## cacheSolve will then retrieve the inverse from the cache

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
