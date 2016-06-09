# Programming Assignment 2: "makeCacheMatrix" and "cacheSolve" functions

makeCacheMatrix <- function(x = matrix()) {
        cache <- NULL
        setMatrixF <- function(values) {
              x <<- values
              cache <<- NULL
        }

        getMatrixF <- function() {
              x
        }

       
        cacheInverseF <- function(solve) {
              cache <<- solve
        }

        
        getInverseF <- function() {
              cache
        }
        
       # This function will return a list of functions
       list(setMatrixF = setMatrixF, cacheInverseF = cacheInverseF, getMatrixF = getMatrixF, getInverseF = getInverseF)
}


cacheSolve <- function(x, ...) {
        inverse <- x$getInverseF()
        if(!is.null(inverse)) {
           # cache data
           return(inverse)
        }
        dataM <- x$getMatrixF()
        inverse <- solve(dataM)
        x$cacheInverseF(inverse)
        inverse
}
