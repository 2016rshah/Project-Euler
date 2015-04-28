from math import sqrt
def median(xs):
	a = xs[0]
	b = xs[1]
	c = xs[2]
	res = (1/2)*sqrt(2*a*a+2*b*b-c*c)
	#print(res)
	return res

def perms(n):
	xs = [[a, b, c] for c in range(2, n+1, 2) for b in range(1, c+1) for a in range(1, b+1) if(a+b > c and a+c > b and b+c > a)]
	xs = []
	for c in range(1, n+1):
		for b in range(1, c+1):
			for a in range(1, b+1):
				if(a+b > c and a+c > b and b+c > a):
					if(c%2 == 0): #solutions always have even c values
						xs.append([a, b, c])
	#print(xs)
	return xs

def main():
	solutions = []
	permutations = perms(500)
	#print(len(permutations))
	for permutation in permutations:
		if median(permutation).is_integer():
			#print(permutation)
			solutions.append(permutation)
	print(len(solutions))

main()