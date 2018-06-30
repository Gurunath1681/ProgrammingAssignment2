## Put comments here that give an overall description of what your
## functions do
## The main objective of this exercise is to create functions makeCacheMatrix and cacheSolve



## This function retrieves the inverse of a matrix from the cache
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


## This function checks if the inverse already exists, otherwise, it solves for its inverse 

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
