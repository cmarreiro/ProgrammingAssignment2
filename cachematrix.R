## 2 functions that together create inverse of matrix and cache it


## function to create matrix

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set<- function(y){
        x<<-y
        i<<-NULL
  }
  get <- function() x
  setinv <- function(inv) i <<- inv
  getinv <- function() i
  list(set = set, get = get,
     setinv = setinv,
     getinv = getinv)
}
  



## function to calculate the inverse of matrix and cache it 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i<-x$getinv()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  mymatrix<-x$get()
  myinv<-solve(mymatrix)
  x$setinv(myinv)
  myinv
}
