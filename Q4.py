import tweepy
import sys

class user:
	def __init__(self,uname,password):
		self.uname=uname
		self.password=password
	def api_init(data):
		auth = tweepy.OAuthHandler(data['consumer_key'], data['consumer_secret'])
 		auth.set_access_token(data['access_token'], data['access_token_secret'])
  	        return tweepy.API(auth)


	def getdata(arg1,arg2,arg3,arg4):
		data ={
			
			 "consumer_key"        : arg1,
   			 "consumer_secret"     : arg2,
    			 "access_token"        : arg3,
    			  "access_token_secret" : arg4}


	def tweet():
		tweet=raw_input("enter tweet")
		status = api.update_status(status=tweet) 


def main():
	
	usr=user(sys.argv[2],sys.argv[3])
	usr.getdata(sys.argv[4],sys.argv[5],sys.argv[6],sys.argv[7])
	usr.api_init(data)
	usr.tweet()
	

if __name__ == "__main__":
	if len(sys.argv)<7:
		print "Usage---> Python filename.py [Uname] [Password] [consumer_key] [consumer_secret][access_token][access_token_secret]"
		exit()
	else:
		main()

	
	
