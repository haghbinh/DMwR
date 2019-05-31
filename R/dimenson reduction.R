library(imager)
Digit <- read.table("Datasets/Digit.txt",header=T)
dim(Digit)
img <- Digit[,-(257:266)]
Y <- apply(Digit[,257:266],1,function(x) {
  sum(x*(0:9))
})
  
i <- 81
im <- as.cimg(matrix((as.numeric(X[i,])),nr=16))
plot(im)
Y[i]

pca <- prcomp(X,scale =F )
dim(pca$x)
pairs(pca$x[1:100,1:5],col=Y,pch=19)
pairs(X[,1:5],col=Y,pch=19)

