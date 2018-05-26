## Put comments here that give an overall description of what your
## functions do

##  creates list of functions that cache a matrix 1. gets value of matrix 2. sets value of matrix 3. sets value of inverse 4. gets value of inverse

makeCacheMatrix<-function(x = matrix()){
  
  i <- NULL
  set<-function(y){
    x<<-y
    inverse<<-NULL
  }
  get<-function()x
  
  setinverse<-function(inverse) i <<- inverse
  getinverse<-function()i
  list(set=set,get=get,setinverse=setinverse, getinverse=getinverse)
  
  
}

## returns inverse of matrix, checks if matrix has been cached. If it hasn't the matrix is cached for future use.

cacheSolve<-function(x,...){
  i<- x$getinverse()
   if(!is.null(i)){
     message("getting cached data")
     return(i)
     
     
   }
  data<-x$get()
  i<- solve(data,...)
  x$setinverse(i)
  i
  
  
}