RProgramming
============
Hey there!

Thanks for reviewing my code. I have finished all the objectives listed in the instruction, and also I added some comments to make your review easier!

======In case you want to run the code======
source("cachematrix.R")
x <- yourmatrix ## Here you can define your own test matrix
list <- makeCacheMatrix() ## Get the special "cache matrix" 
list$set(x) ## Set the matrix
list$get() ## Get the matrix
list$setinv(b) ## Set the inverse
list$getinv() ## Get the inverse

cacheSolve(list) ## Give you the inverse: if it has been cached by list$setinv, it will show "Getting cached inverse" and display the inverse; if the inverse has not been cached, this sentence will calculate, display and cached the inverse for you

====================END=====================

Cheers, 

Min Zhong/ayanamilei0
