with open('downloads', 'r') as f:
    htmlfile = f.readlines()

for i in range(len(htmlfile)):
    findchar = htmlfile[i].find('x86_64.deb') 
    if findchar > 0:
        line = i
        char = findchar
print(htmlfile[line][char-55:char+10])

