## create matrix
m <- matrix(1:5, nrow = 3, ncol = 2)
m1 <- matrix(1:5, nrow = 3, ncol = 2, byrow = TRUE)

## create matrix from vector
x <- 1:10  #vector
dim(x) <- c(2,5)  #matrix

# ---
## create Factor type
f1 <- factor(c("y","y","n","y"))
f2 <- factor(f1, levels = c("y","n")) #ordering the levels

## count element in each level
table(f1)
