## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of the inverse
# 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {

 # m holds the cached value 
 # initially set it to NULL
 m <- NULL
    set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}
}

## Write a short comment describing this function

# The following function returns the inverse of the matrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getinverse()
	## Check if inverse is being cached
	if(!is.null(m)) {
    	message("getting cached data")
    	return(m)
  	}
	##If inverse is not being cached it is calculated
	data <- x$get()
	m <- solve(data)
	x$setinverse(m)
	m
}
