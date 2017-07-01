## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the below function does the following - 
## sets the value of the matrix
## gets the value of the matrix
## sets the value of the inverse matrix
## gets the value of the inverse matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinvmat <- function(invmat) m <<- invmat
  getinvmat <- function() m
  list(set = set, get = get,
       setinvmat = setinvmat,
       getinvmat = getinvmat)
  
  
  

}


## Write a short comment describing this function
##The following function calculates the inverse of the matrix
##created with the above function. However, it first checks to see if the inverse has already been calculated.
##If so, it gets the inverse from the cache and skips the computation. Otherwise, it calculates the inverse of the matrix
##and sets the value of the inverse in the cache via the setinvmat function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinvmat()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinvmat(m)
  m
}
