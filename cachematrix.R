## Put comments here that give an overall description of what your
## functions do
## the below two function creates an object to store the matrix and 
##also cach'es the inverse of the matrix

## Write a short comment describing this function
##The first function, makeCacheMatrix creates a special "list", 
## is a list containing a function to
## set the value of the matrix
## get the value of the matrix
## set the value of inverse of the matrix
## get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## the cacheSolve takes the object x (created by using makeCacheMatrix) 
## as an input and check if the inverse of the matrix has been cached or not, 
## if yes, it will return the cached value of the inverse matrix (m)
## if not, it will calculate the inverse of the matrix, 
## store it in the cache and also return it.

cacheSolve <- function(x) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data") 
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
