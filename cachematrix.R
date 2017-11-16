## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                i <- x$getmtinv()
                if(!is.null(i)) {
                        message("getting cached data")
                        return(i)
                }
                data <- x$get()
                i <- solve(data, ...)
                x$setmtinv(i)
                i
        }


#testing
#create a matric 3x3
#x<-matrix(c(1,-2,-3,1,5,6, 1,5,-9), ncol = 3)
#assign object z to function
#z <- makeCacheMatrix(x)
#get the value of m with argument x
#z$get()
#     [,1] [,2] [,3]
#[1,]    1    1    1
#[2,]   -2    5    5
#[3,]   -3    6   -9
#invoking cacheSolve function for first time
#> cacheSolve(z)
#[,1]        [,2]        [,3]
#[1,]  0.71428571 -0.14285714  0.00000000
#[2,]  0.31428571  0.05714286  0.06666667
#[3,] -0.02857143  0.08571429 -0.06666667
#invoking cacheSolve function for first time, expected to get a cached version
#> cacheSolve(z)
#getting cached data <---worked
#[,1]        [,2]        [,3]
#[1,]  0.71428571 -0.14285714  0.00000000
#[2,]  0.31428571  0.05714286  0.06666667
#[3,] -0.02857143  0.08571429 -0.06666667