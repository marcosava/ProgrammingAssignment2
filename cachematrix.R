## Put comments here that give an overall description of what your
## functions do

## Sets/gets the value of a matrix and its inverted form. Finally, stores it.

makeCacheMatrix <- function(x = matrix()) {
  i <- matrix()
  set <- function(y) {
    x <<- y
    i <<- matrix()
  }
  get <- function() x
  setinverted <- function(solve) i <<- solve
  getinverted <- function() i
  list(set = set, get = get,
       setinverted = setinverted,
       getinverted = getinverted)
}


## Look for the inverted matrix, and if it has been calculated before, then it retrieves it; if it hasn't, it calculates it and stores it. Finally, it prints it out. 

cacheSolve <- function(x, ...) {
  i <- x$getinverted()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverted(i)
  i
}
