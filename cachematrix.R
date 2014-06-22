## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #set the inverse of matrix as null
  inv <- NULL
  
  #set the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  #get the matrix
  get <- function() x
  
  #save the matrix inverse to inv
  setinv <- function(inverse) inv <<- inversen
  
  #return the matrix inverse
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getinv()n
  
  #if the inverse already exist, return the inverse from cache
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  #otherwise calculate the inverse and save inverse to cache
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
