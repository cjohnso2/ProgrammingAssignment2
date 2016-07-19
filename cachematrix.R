## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  Get <- function() x
  setmatrix <- function(solve) m<<- solve
  getmatrix <- function() m
  list(set=set, get=get, 
       setmatrix = setmatrix,
       getmatrix = getmatrix)

}


## Write a short comment describing this function
##The below function will compute the inverse of a matrix and if it has already been cached from the above function return it with out running.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  Matrix <- x$get()
  M <- solve(matrix, ...)
  x$setmatrix(m)
  m
}
