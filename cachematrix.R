## Put comments here that give an overall description of what your
## functions do

## Creates a special Matrix object which caches its inverse 

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set <- function(y)
    x <<- y 
  m<<- NULL 
  get <- function() x 
  setinverse<- function(solve) m <<-solve
  print(setinverse)
  getinverse <- function() m 
  list(set = set, get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)
  
  
}


#### computes the inverse of the matrix defined in function "makeCacheMatrix"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  
  data <- x$get()
  m<-solve(data,...)
  x$setinverse(m)
  m
}
