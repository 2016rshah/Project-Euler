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
	
#given that all elements are orderable
#also arr.sort() works too, but that would be lame. 
def quickSort(arr):
	if(len(arr) == 0): return arr
	return quickSort([x for x in arr if x < arr[0]]) + [x for x in arr if x == arr[0]] + quickSort([x for x in arr if x > arr[0]])

def main():
	arr = getNames()
	arr = quickSort(arr)
	arr = replaceNameWithScore(arr)
	print(sum(arr))

main()