## Put comments here that give an overall description of what your
## functions do

## I changed it to my need

makeCacheMatrix<-function(x=matrix())
{
  inv<-NULL
  set<-function(y)
  {
    x<<-y
    inv<<-NULL
  }
  get<-function(){x}
  setInverse<-function(inverse){inv<<-inverse}
  getinverse<-function(){inv}
  list(set=set,get=get,setInverse=setInverse,getinverse=getinverse)
  
}



## Implementation

cachesolve<-function(x,...)
{
  inv<-x$getInverse()
  if(!is.null(inv))
  {
    message("getting cached data")
    return(inv)
  }
  mat<-x$get()
  inv<-solve(mat,...)
  invsource
}