from num2words import num2words
s = ""
for i in range(1, 1001):
    s+=num2words(i)
s = s.replace(" ", "").replace("-", "")
print("Answer:", str(len(s)))
