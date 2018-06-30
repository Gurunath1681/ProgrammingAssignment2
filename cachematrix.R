## Put comments here that give an overall description of what your
## functions do
## The main objective of this exercise is to create functions makeCacheMatrix and cacheSolve

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
  Inv <- NULL
  set <- function(y) {
    x <<- y
    Inv <<- NULL
  }
  get <- function() x
  setInv <- function(inverse) Inv <<- inverse
  getInv <- function() Inv
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


cacheSolve <- function(x, ...) {
  m <- x$getInv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(x)
  x$setInv(m)
  m
}






## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
