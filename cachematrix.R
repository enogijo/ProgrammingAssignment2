## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL                     #m is an empty variable
    set <- function(y) {          # create a function called set that
        x <<- y                   # sets the arguement y to equal x
        m <<- NULL                # and sets m as empty
    }
    get <- function() x           #function print normal matrix x
    setMatrix <- function(x) m <<- solve(x) #function takes normal maxtrix x and produces inverse, m
    getMatrix <- function() m     #function prints inverse matrix m
    list(set = set, get = get,    #makes a list of each function
    setMatrix = setMatrix,
    getMatrix = getMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$getMatrix()                  # extract inverse matrix from previous makeCacheMatrix funx
    if(!is.null(m)) {                   # if m is not null
        message("getting cached data")  # print this message "getting cached data"
        return(m)                       # return inverse matrix
    }
    data <- x$get()                     # extract normal matrix, x
    m <- solve(data, ...)               # use solve() to produce inverse matrix
    m                                   # Return a matrix, m, that is the inverse of 'x'
}
