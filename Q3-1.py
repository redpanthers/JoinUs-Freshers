import string
import random 

def randgen(x,y): # Basic function for random generator
	return (random.randrange(x,y))



if __name__ == '__main__':
	f=open("myfile.txt","w")    # creating new file handler
	alpha=[x for x in string.lowercase]  #appending aplhebets to list
	for x in string.uppercase:
		alpha.append(x)

	for x in range(7):
		alpha.insert((randgen(1,len(alpha))),' ')  # adding 7 space for more words count in line

	for i in xrange(1000):    # creating random line loop
		for j in range(randgen(10,15)): 
			f.write(alpha[randgen(1,len(alpha))])
		f.write('\n')	
		

	


