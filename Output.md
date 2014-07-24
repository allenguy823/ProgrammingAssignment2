The following code demonstrates how to use the `cachematrix.R` R script.

Input:

	source("cachematrix.R")

	a <- makeCacheMatrix( matrix(c(4,2,2,4), nrow = 2, ncol = 2) )

	summary(a)

	a$getMatrix()

	cacheSolve(a)

	# the 2nd time we run the function,we get the cached value
	cacheSolve(a)

Output:

 source("cachematrix.R")
 
 a <- makeCacheMatrix( matrix(c(4,2,2,4), nrow = 2, ncol = 2) )
 
  summary(a)
             Length Class  Mode    
setMatrix    1      -none- function
getMatrix    1      -none- function
cacheInverse 1      -none- function
getInverse   1      -none- function
 
  a$getMatrix()
     [,1] [,2]
[1,]    4    2
[2,]    2    4
 
  cacheSolve(a)
           [,1]       [,2]
[1,]  0.3333333 -0.1666667
[2,] -0.1666667  0.3333333
 
  # the 2nd time we run the function,we get the cached value
  cacheSolve(a)
getting cached data
           [,1]       [,2]
[1,]  0.3333333 -0.1666667
[2,] -0.1666667  0.3333333
