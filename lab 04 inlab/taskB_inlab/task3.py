#!/usr/bin/env python

def transposeit(matrix,m,n):
	new = [[None for a in range(m)] for b in range(n)]
	for i in range(m):
		for j in range(n):
			new[j][i] = matrix[i][j]
	return new



with open('matrix.txt','r') as f:
	mn = f.readline()
	mn = mn.split()
	m = int(mn[0])
	n = int(mn[1])

	matrix = [[None for a in range(n)] for b in range(m)]
	
	p = f.readlines()
	for j in range(m):
		lin = p[j].split( )
		for k in range(len(lin)):
			matrix[j][k] = lin[k]

matrix = transposeit(matrix,m,n)


file = open('transpose.txt','w')
file.write('{0} {1}\n'.format(n,m))

for i in range(n):
	for j in range(m):
		file.write(str(matrix[i][j])+" ")
	file.write('\n')
file.close()




