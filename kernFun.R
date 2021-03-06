linKern <- function(x, y, param){
  # input:
  #  x,y: input vectors
  #  param: parameters (sigma)
  # output:
  #  kern: covariance matrix cov(x,y)
  sigma <- param[1]
  kern <- sigma^2*outer(x, y, '*')
  return(kern)
}

cosKern <- function(x, y, param){
  # input:
  #  x,y: input vectors
  #  param: parameters (sigma,theta)
  # output:
  #  kern: covariance matrix cov(x,y)
  sigma <- param[1]
  theta <- param[2]
  dist <- outer(x/theta, y/theta, '-')
  kern <- sigma^2*cos(dist)
  return(kern)
}

expKern <- function(x, y, param){
  # input:
  #  x,y: input vectors
  #  param: parameters (sigma,theta)
  # output:
  #  kern: covariance matrix cov(x,y)
  sigma <- param[1]
  theta <- param[2]
  dist <- outer(x/theta, y/theta, '-')
  kern <- sigma^2*exp(-abs(dist))
  return(kern)
}
