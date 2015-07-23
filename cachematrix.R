## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(s){
        x <<- s
        m <<- NULL
    }
    get <- function() x
    setInverse <- function(mInverse) m<<-mInverse
    getInverse <- function() m
    list(set = set, get=get, setInverse=setInverse , getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)){
        message("cached inverse exists, not calculating")
        return(m)
    }
    cached<-x$get()
    m <- solve(cached,...)
    x$setInverse(m)
    m        
}
