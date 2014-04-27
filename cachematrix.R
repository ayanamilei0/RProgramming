## This R file helps to cache the inverse of a matrix when you already have
## calculated its value. If not, it can help you calculate and cache the inverse

## Creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    ## set the matrix
    
    get <- function() x
    ## get the matrix
    
    
    setinv <- function(inv) m <<- inv
    ## set the inverse of the matrix
    
    getinv <- function() m
    ## get the inverse of the matrix
    
    list(set = set, get = get, setinv = setinv,
         getinv = getinv)
    ## Creat the special "list" of function that can cache the inverse

}

## Computes the inverse of the special "matrix" returned by makeCacheMatrix 
## function. If the inverse has already been calculated and cached, then the 
## cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
    m <- x$getinv()
    ## get the inverse of the matrix from makeCacheMatrix
    if(!is.null(m)){
        message("Getting cached inverse")
        return(m)
    }
    ## see if the inverse has been cached: yes, then return the cached inverse
    
    data <- x$get()
    m <- solve(data, ...)
    ## No, then calculate the inverse
    
    x$setinv(m)
    ## cache the calculated inverse
    
    m
    ## Return a matrix that is the inverse of 'x'
}
