# Output.md is instructions of running the code

# makeCacheMatrix is a function that returns a list of functions
# It store a martix and a cached value of the inverse of the 
# matrix. Contains the following functions:
# 1. setMatrix      set the value of a matrix
# 2. getMatrix      get the value of a matrix
# 3. cacheInverse   get the cahced value (inverse of the matrix)
# 4. getInverse     get the cahced value (inverse of the matrix)

# makeCacheMatrix function

makeCacheMatrix <- function(x = numeric()) {
    
    # Set cache to NULL at beginning
    cache <- NULL
    
    # Store a matrix
    setMatrix <- function(newValue) {
        x <<- newValue
        cache <<- NULL
    }
    
    # Returns the stored matrix
    getMatrix <- function() {
        x
    }
    
    # Cache the given value
    cacheInverse <- function(solve) {
        cache <<- solve
    }
    
    # Get the cached value
    getInverse <- function() {
        cache
    }
    
    # return a list. Each named element of the list is a function
    list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


# The cacheSolve calculates the inverse matrix

cacheSolve <- function(y, ...) {
    
    # get the cached value
    inverse <- y$getInverse()
    
    # if a cached value exists return it
    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }
    
    # otherwise get the matrix, caclulate the inverse and store it in
    # the cache
    data <- y$getMatrix()
    inverse <- solve(data)
    y$cacheInverse(inverse)
    
    # return the inverse
    inverse
}
