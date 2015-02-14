#The answer will be the coefficient of the middle term of the binomial expansion of the maze size * 2
#I would have done it in java but sympy takes care of the binomial expansion for me
import sympy
import re
def getBinomial(mazeSize):
    binomSize = mazeSize*2
    x, y = sympy.symbols("x y")
    formula = (x+y) ** binomSize
    return formula.expand().__repr__()
def cleanString(s, mazeSize):
    s = re.search(r"\d*[*]x[*][*]"+str(mazeSize)+"[*]y[*][*]"+str(mazeSize), s).group()
    s = s.replace("*x**"+str(mazeSize)+"*y**"+str(mazeSize), "")
    return s
def main():
    mazeSize = 20
    print("Answer:", cleanString(getBinomial(mazeSize), mazeSize))
main()