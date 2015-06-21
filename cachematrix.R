## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function returns a list of functions which can change the matrix and also store its inverse in cache
makeCacheMatrix <- function(x = matrix()) {
  my_matrix_inverse=NULL
  set<-function(decoy){
    my_matrix<<-decoy
    my_matrix_inverse<<-NULL
  }
  get<-function() my_matrix
  set_inverse<-function(solve) my_matrix_inverse<<-solve
  get_inverse<-function() my_matrix_inverse
  list(set=set,get=get,set_inverse=set_inverse,get_inverse=get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  my_matrix_inverse <- my_matrix$get_inverse()
  if(!is.null(my_matrix_inverse)) {
    message("getting cached data")
    return(my_matrix_inverse)
  }
  data <- my_matrix$get()
  my_matrix_inverse <- solve(data, ...)
  my_matrix$set_inverse(my_matrix_inverse)
  my_matrix_inverse
        ## Return a matrix that is the inverse of 'x'
}
