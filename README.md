RProgramming
============
Hey there!

Thanks for reviewing my code. I have finished all the objectives listed in the instruction, and also I added some comments to make your review easier!

======In case you want to run the code======
1 source("cachematrix.R")
2 x <- yourmatrix ## Here you can define your own test matrix
3 list <- makeCacheMatrix() ## Get the special "cache matrix" 
4 list$set(x) ## Set the matrix
5 list$get() ## Get the matrix
6 list$setinv(b) ## Set the inverse
7 list$getinv() ## Get the inverse

8 cacheSolve(list) ## Give you the inverse: if it has been cached by list$setinv, it will show "Getting cached inverse" and display the inverse; if the inverse has not been cached, this sentence will calculate, display and cached the inverse for you

====================END=====================

Cheers, 

Min Zhong/ayanamilei0
