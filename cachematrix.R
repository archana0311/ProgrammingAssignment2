## Put comments here that give an overall description of what your
## functions do

## makecacheMatrix to create a special matrixobject that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  p<-NULL
  set<-function(y){
    x<<-y
    p<<-NULL
  }

get<-function()x
setInverse<-function(inverse)j<<-inverse
getInverse<-function()j
list(set=set,get=get,
     setInverse=setInverse,
     getInverse=getInverse)
}
    


## cacheSolve is a function to compute inverse of the cache its invers
cacheSolve <- function(x, ...) {
        j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
  mat <- x$get()
  j <- Inverse(mat,...)
  x$setInverse(j)
  j
}

