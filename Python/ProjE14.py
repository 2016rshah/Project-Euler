from math import floor
startToLength = {1:1}

def keywithmaxval(d):  
     v=list(d.values())
     k=list(d.keys())
     return k[v.index(max(v))]

def recursiveLength(n):
	global startToLength
	if(n not in startToLength):
		if(n%2 == 0):
			newN = floor(n/2)
		else:
			newN = 3 * n + 1
		startToLength[n] = recursiveLength(newN) + 1
	return startToLength[n]

def main():
	for n in range(1000000, 0, -1):
		recursiveLength(n)
	print("Answer:", keywithmaxval(startToLength))

main()

