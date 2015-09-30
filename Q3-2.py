
import string
f=open("myfile.txt","r")
data=sorted(f.read().split())


for j in string.lowercase:
	w=open('word_'+j+".txt","w") 
	for y in sorted(([ x for x in data if ((x[0]==j ) or x[0]==(chr(ord(j)-32)))])):
		w.write("%s\n" %y)
	w.close()






	
