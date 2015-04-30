from math import sqrt
def median(a, b, c):
	res = (1/2)*sqrt(2*a*a+2*b*b-c*c)
	return res

def f(n):
	answers = 0
	for c in range(2, n+1, 2):
		for b in range(1, c+1):
			if(b%2==0):
				for a in range(2, b+1, 2):
					if(a+b > c and a+c > b and b+c > a):
						if median(a, b, c).is_integer():
							answers+=1
			elif(b%2==1):
				for a in range(1, b+1, 2):
					if(a+b > c and a+c > b and b+c > a):
						if median(a, b, c).is_integer():
							answers+=1
	return answers

print(f(10))
