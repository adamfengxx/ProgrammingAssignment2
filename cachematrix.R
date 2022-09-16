## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##this function creates a matrix 
makeCacheMatrix <- function(x = matrix()){
        inv <- NULL                        ##"inv" will hold value of matrix inverse
        set <- function(y){
                x <<- y
                inv <<- NULL 
        }
        
        get <- function(){
                x
        }
        
        setinverse <- function(inverse){
                inv <<- inverse
        }
        
        getinverse <- function(){
                inv
        }
        
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


##compute the inverse of the matrix above

cacheSolve <- function(x, ...){
        inv <- x$getinverse() ## Return a matrix that is the inverse of 'x'
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}
