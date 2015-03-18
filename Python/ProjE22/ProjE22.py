def getNames():
	file = open("names.txt", "r")
	return file.readline().replace('"', "").split(",")

def getLetterVal(c):
	return ord(c) % 64

def replaceNameWithScore(arr):
	for i in range(len(arr)):
		nameSum = 0
		for s in arr[i]:
			nameSum+=getLetterVal(s)
		arr[i] = nameSum * (i+1)
	return arr

def main():
	arr = getNames()
	arr.sort()
	arr = replaceNameWithScore(arr)
	print(sum(arr))

main()