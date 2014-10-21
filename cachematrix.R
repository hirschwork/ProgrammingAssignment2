## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this function has three sub-functions.
##  get() -- returns the current matrix
##  getinverse() -- returns the inverse of the current matrix
##  set() -- clears the matrix in memory and puts the passed matrix into memory
makeCacheMatrix <- function(x = matrix()) {
  get <- function() x
  getinverse <- function () solve(x)
  set <- function(y) {
    CM <<- NULL
    x <<- y
  }
  list(get=get, getinverse= getinverse, set=set)
}

## Write a short comment describing this function

## this function returns the inverse of the passed matrix. It first checks if the matrix is already in cache (returning it)
##  otherwise it stores the inverse while also returning it.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if (!is.null(CM)) {
    print ("getting from cache..")
    CM }
  else {
      z <- solve(x$get())
      CM <<- z
      CM
  }
}
