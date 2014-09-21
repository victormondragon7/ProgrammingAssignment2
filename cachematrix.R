# Two functions called "makeCacheMatrix" and "cacheSolve" the first to obtain the inverse of a matrix, supposing that the original
# matrix argument as entry is an invertible matrix (i.e, if A is the original matrix, then det(A)= +- 1
# the other function solves the inverse matrix
> makeCacheMatrix <- function(x = matrix()) {
+   m<-NULL
+   set<-function(y){
+   x<<-y
+   m<<-NULL
+ }
+ get<-function() x
+ setmatrix<-function(solve) m<<- solve
+ getmatrix<-function() m
+ list(set=set, get=get,
+    setmatrix=setmatrix,
+    getmatrix=getmatrix)
+ }
> 
> cacheSolve <- function(x=matrix(), ...) {
+     m<-x$getmatrix()
+     if(!is.null(m)){
+       message("getting cached data")
+       return(m)
+     }
+     matrix<-x$get ()
+     m<-solve(matrix, ...)
+     x$setmatrix(m)
+     m
+ }
> 
