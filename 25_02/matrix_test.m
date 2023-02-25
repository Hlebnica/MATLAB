clear all;

A = [[0 1 2]; [3 1 4]; [2 -2 1]]

det(A)

B = inv(A)

B * A

eig(A)

rank(A)

A'

B = [3, 8, 1]
X = inv(A) * B'