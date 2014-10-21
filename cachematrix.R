## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
