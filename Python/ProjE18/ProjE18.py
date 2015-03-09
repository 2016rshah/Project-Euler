def readFile():
    file = open("triangle.txt", "r")
    array = [[int(digit) for digit in line.split(" ")] for line in file.readlines()]
    return array

def collapseRow(xs, ys):
    newRow = []
    for i in range(len(xs)):
        newRow.append(max([xs[i] + ys[i], xs[i]+ys[i+1]]))
    return newRow

def main():
    triangle = readFile()
    while len(triangle) > 1:
        triangle.append(collapseRow(triangle.pop(len(triangle)-2), triangle.pop(len(triangle)-1)))
    print("Answer:", max(triangle[0]))

main()