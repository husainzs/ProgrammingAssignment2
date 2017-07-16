## Calculates the Inverse matrix of a given square matrix. 
##First check if the inverse exist or not. If not, calculates it.

makeCacheMatrix <- function(x = matrix() ) {
  i <- NULL
  
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  get <- function() {
    x
  }
  
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  getInverse <- function() {
    i
  }
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


cacheSolve <- function(x, ...) {
  
  m <- x$getInverse()
  
  if(!is.null(m) ) {
    message("Yaay inverse exist")
    return(m)
  }

  mx <- x$get()
  m <- solve(mx)
  x$setInverse(m)
  m
}
