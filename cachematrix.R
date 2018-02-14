## Coursera R Programming Assignment 2
## These functions cache the inverse of a matrix
## caching the inverse of a matrix avoids the need to 
## recalculate the inverse repeatedly 

##MakeCacheMatrix takes an input matrix x 
makeCacheMatrix <- function(x = matrix()) {
# inverse matrix inv
    inv <- NULL 
    
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    
    
#  get function matrix
  get <- function() {x}

  
  
# set and get functions for inverse matrix
  
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() inv
  
# return the list 
  list(get=get, set=set, getinv = getinv, setinv = setinv)
  
  
}


## calculatesthe inverse of matrix 'x' and caches the result

cacheSolve <- function(x, ...) {

## get the current state of the inverse
## to understand if it has been calculated already
  inv <- x$getinv()
  if(!is.null(inv)){
## if it is already available, return the current value
    message("Inverse matrix cached")
    print(inv)
  }
## if not available, calculate the inverse
  mat <- x$get()
  inv <- solve(mat,...)
## .. and cache it in the inv matrix
  x$setinv(inv)
  
  print(inv)
   
}
