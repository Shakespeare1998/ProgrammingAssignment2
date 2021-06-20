## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creates a list of functions that are applied onto the matrix.

makeCacheMatrix <- function(x = matrix()) {
  inv_mat<-NULL
  
  
  set <- function(y) {
    x <<- y
    inv_mat <<- NULL
  }
  get <- function() x
  set_inv <- function(inv) inv_mat <<- inv
  get_inv <- function() inv_mat
  list(set = set, get = get,
       set_inv = set_inv,
       get_inv = get_inv)

}


## Write a short comment describing this function
## Checks if the iverse of the matrix exists, and computes the inverse if it doesn't.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv_mat<- x$get_inv()
  
  if(!is.null(inv_mat)){
    message("getting cached data")
    return(m)
  }
  dt<-x$get()
  inv_mat<-solve(dt, ...)
  x$set_inv(inv_mat)
  inv_mat
  
}
