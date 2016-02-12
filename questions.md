# Questions

1. Do you have your own personal computer?

2. Describe your present development enviornment (We are talking abour your dev machine, like OS, RAM, Screen Resolution)

3. Describe your ideal development enviornment

**Social links**

1. Link to your github account

2. Link to your stackoverflow account

3. Link to your Blog/Tumblr/Personal Website

4. Link to you Linkedin Account

**All the questions below are related to your development enviornment**

4. Write the steps you need to do to find a `string` from a group of files
cd /path/to/dir
grep -r "word" .
grep -r "string" 

5. Which all programming languages are installed in your system.

6. How long will it take you to install or re-setup your development enviornment from scratch? Have you done any automation on it

**Programming Languages**

7. The languages in which you have written over 1000 lines of code

8. The languages you learned which were not part of your course.

9. Programming question 1 (You may use a programming language of your choice, the code and instruction on how to run it should be included in your pull request)

  * Create a file with 1000 lines (Place random sentence and text in those lines using character 'a'..'z', 'A'..'Z'). Each line should have a sentence. Make sure everything is random, the file should have minimum of 5000 words.* Create a program that takes the file you made above as input, and then extract words from that file and place them into saperate files. The words that start with A, should be placed in a file called 'word_a.txt', those with B in 'word_b.txt'. (The extraction is case-insentive)
  Done using c++ in ubuntu 14.04

To run the same: copy the below given code in to file named extract.cpp and the run the command g++ -W extract.cpp -o extract
and then ./extract.

#include <iostream>
#include <fstream>
#include <time.h>
#include <stdlib.h> 
#include <string>
using namespace std;

string RandomString(int len)
{
   string str = "AjkBCabcdFGHIefghilMNOPvwxQRSTYZmnopDEJKLqrsUVWXtuyz";
   int pos;
   while(str.size() != len) {
    pos = ((rand() % (str.size() - 1)));
    str.erase (pos, 1);
   }
   return str;
}

int main()
{
	fstream file;
	file.open("my_file.txt",fstream::out);
	if (file.fail()){
		cout<<"Error in opening file"<<endl;
	}
	else{
		cout<< "\nWriting information to the file :- " << endl;
		for(int i=0; i<1000; i++){
			int no_of_words = 1+rand()%5;
			string text = "";
  			cout<<"\nRandom number:"<<no_of_words<<endl;
  			for(int j=0; j<no_of_words; j++){
  				int no_of_char_in_words =1+rand()%10;
  				string random_str = RandomString(no_of_char_in_words);
  				text += random_str + " ";	
  			}
  			cout<< text;
			file<<text<<"\n";
  			cout<<endl;
		}
		file.close();
	}
	string command = "rm -f ";
	string path = "word_*";
	system(command.append(path).c_str());
	file.open("my_file.txt",fstream::in);
	if (file.fail()){
		cout<<"Error in opening file"<<endl;
	}
	else{
		string line;
		while ( getline (file,line,' ') ){
			fstream new_file;
			string file_name = "word_";
			file_name.push_back(tolower((line[0])));
			new_file.open ((file_name+".txt").c_str(),fstream::out | fstream::app);
			new_file<<line+"\n";
			cout << "At"<<(line.at(0))<< endl;
      		cout << line << endl;
      		new_file.close();
    	}
    	file.close();
	}
  	return 0;
}

  

10. Programming question 2

  * Create a comand line twitter client, that lets you send tweet to your twitter profile form the command line.
  * The code has to be object oriented
  
  rails new commandlineapp
cd commandlineapp
bundle install
gem install twitter
I first created a twitter profile for myself in the name aparna951992 ( for testing purpose as i did'nt use twitter before).
Then inorder to make the tweets to be updated via command line, first step is to create a twitter application.
Visited https://dev.twitter.com/apps/new and entered 3 fields 1: name : My app for red panthers test , 2: description: A command line tool and 3 :website: http://www.google.com (The website name was given as a callback), clicked on the checkbox for agreeing the agreement and then clicked on "Create your twitter application" button. Once the app was created, i visited the link https://dev.twitter.com/apps/settings and changed the application type to read, write and access direct messages. Then an OAuth settings page is recieved with the listing of my consumer key( which is a secret) and a consumer secret(Another one which cant be shared). By clicking on this link (https://apps.twitter.com/app/) i could get keys and access tokens link from where i found Create my access token link which redirected me to my access token page listing the token . Obtaining all these keys for access, it was easy to have command line control over my twitter account by the following code.Create a file within the config/initializers called twitter.rb.

require 'rubygems'
require 'Twitter'

twitter = Twitter::REST::Client.new do |config|
  config.consumer_key = ['SECRET CONSUMER_KEY']
  config.consumer_secret = ['SECRET CONSUMER_SECRET']
  config.access_token = ['YOUR_ACCESS_TOKEN']
  config.access_token_secret = ['YOUR_ACCESS_SECRET']
end


twitter.update("Hello... trying out my sample tweet to know whether the command line app works")


gave me the on the screen the update.

