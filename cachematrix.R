## Put comments here that give an overall description of what your
## functions do
## Updated By Gaurav Gahlot
## Write a short comment describing this function
## This Function takes a matrix as input and returns a Matrix inverse
## IMPORTANT THIS IS a PSEUDO CODE BASED ON EXAMPLE GIVEN BY Dr. Roger D. Peng and is NOT TESTED YET--GAURAV
makeCacheMatrix <- function(x = matrix()) {
   ##Initialize inverse as null
        mat_INVERSE <- NULL
        set <- function(y) {
                x <<- y
                mat_INVERSE <<- NULL
        }
        get <- function() x
        set_INVERSE <- function(inverse) mat_INVERSE <<- inverse
        get_INVERSE <- function()mat_INVERSE
        list(set = set, get = get,
             set_INVERSE = set_INVERSE,
             get_INVERSE = get_INVERSE)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}
