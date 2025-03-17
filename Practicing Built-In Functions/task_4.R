# Create a 3x3 matrix
m <- matrix(1:9, nrow = 3, byrow = TRUE)
print("Original Matrix:")
print(m)


# Transpose the matrix
m_transpose <- t(m)
print("Transposed Matrix:")
print(m_transpose)


# Determinant
m_determinant <- det(m)
print("Determinant:")
print(m_determinant)

invert_matrix <- function(matrix)
{
  # Inverse (only if determinant is non-zero)
  matrix_determinant <- det(matrix)  # Calculate determinant of the passed matrix
  
  if (matrix_determinant != 0) {
    m_inverse <- solve(matrix)  # Inverse (using the passed matrix)
    print("Inverse Matrix:")
    print(m_inverse)
  } else {
    print("Matrix is singular and cannot be inverted.")
  }
}

# Inverting the matrix m
invert_matrix(m)

# Create another 3x3 matrix n
n <- matrix(c(3, 2, -1, 1, 6, 3, 2, -4, 0), nrow = 3, ncol = 3)
print("Matrix n:")
print(n)

# Inverting matrix n
invert_matrix(n)