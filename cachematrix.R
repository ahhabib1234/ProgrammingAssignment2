## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv_solve <- x$getinv()
    if(!is.null(inv_solve)) {
        message("getting inverse data")
        return(inv_solve)
    }
    data <- x$get()
    inv_solve <- solve(data, ...)
    x$setinv(inv_solve)
    inv_solve
    
}
