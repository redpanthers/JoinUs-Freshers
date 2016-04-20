# Questions

1. Do you have your own personal computer?

	Yes
	
2. Describe your present development environment (We are talking about your dev machine, like OS, RAM, Screen Resolution, your favorite IDE etc)
	
	OS : I switch between Windows 10 and Ubuntu depending on the project and dependencies.
	RAM : 8GB
	Screen Resolution : 1360*768
	IDE : Almost IDE from JetBrains (Personally used RubyMine, IntelliJ IDEA, Webstorm, PyCharm), Android Studio (which has the taste of JetBrains as well ),Eclipse from olden days, Adobe Dreamweaver
	Text Editors : I often use Sublime Text, Notepad++ as well
	Processor : Powerful enough to handle anything I throw at it (AMD FX-8120).
	GPU : MSI GTX960 2G Gaming edition
	
3. Describe your ideal development environment
	
	I have very little experience working on Laptop so far as I don't own one.
	So, obviously my ideal environment would be to setup on a desktop. 
	Am comfortable with Windows and Linux but I haven't been on Mac. As far as development is concerned, I usually code for a long stretch and then take a break to come back soon while working on projects. I prefer IDE compared to normal text editors as I don't have to switch windows and make things complicated.
	IDEs from JetBrains are infact my favourite, as all of them have common structure but all are highly intuitive.
	I love open source projects and for the same reason, I do work on Linux based systems for development. So, in general, I find my ideal development environment as a more flexible one.
	
	
**Social links**

1. Link to your Github account

	https://github.com/sreecodeslayer
	
2. Link to your StackOverflow account

	http://stackoverflow.com/users/6220432/sreenadh-t-c

3. Link to your Blog/Tumblr/Personal Website

	http://www.teczoz.com  (group blog)
	
4. Link to you LinkedIn Account

	https://in.linkedin.com/in/sreenadhtc
	
	
**All the questions below are related to your development environment**

4. Write the steps you need to do to find a `string` from a group of files

	1. read the 'string'
	2. open file and search for the 'string' in the file
	
		2.1 if found, show the file name, line number and so on of the 'string', then,
		
		2.2 repeat (2) until all the files in the group have been searched.
		
		2.3 if no matches are found, then the 'string' isn't present in any of the files in the specified group
		

5. Which all programming languages are installed in your system.
	1. C/C++
	2. Java
	3. Python
	4. Perl
	5. Ruby
	6. php
	
6. How long will it take you to install or re-setup your development environment from scratch? Have you done any automation on it
	
	Setting up my environment from scratch would take around 60-100mins, for I usually keep the installation and sources saved/updated on my
	computer as a backup for almost all the time.
	
	
**Programming Languages**

7. The languages in which you have written over 1000 lines of code
	1. c/c++
	2. Java
	3. Python
	4. Ruby (RoR)
	5. JavaScript
	6. php
	
	
8. The languages you learned which were not part of your course.
	1. Python
	2. Ruby
	
	
9. Programming question 1

  * Create a file with 1000 lines (Place random sentence and text in those lines using character 'a'..'z', 'A'..'Z'). Each line should have a sentence. Make sure everything is random, the file should have minimum of 5000 words.
	**************** PROGRAM BEGIN ****************
	```ruby
	class TextGen
	
		def initialize()
			@words = 5000
			@lines = 1000
		end

		def read_words_from_file()
			File.open('sentence.txt') {|f| @words = f.read.count(" ")}
			return @words
		end
	
		def read_line_from_file()
			File.open('sentence.txt') {|f| @lines = f.read.count("\n")}
			return @lines + 1
		end
	
		def make_file
			f = File.open("sentence.txt",'w')
			f.write(@lines.times.collect{
					rand(6..9).times.collect{
						Array('a'..'z').sample(rand(3..5)).join
				}.join(" ").capitalize+"."
			}.join("\n"))
		end
	end

	gen = TextGen.new()
	
	gen.make_file

	puts "Words: " + gen.read_words_from_file.to_s + "\n" + "Lines: " + gen.read_line_from_file.to_s
	
	puts "We are done here ;-) :-D"
	```
	**************** PROGRAM END ******************
	
	
  * Create a program that takes the file you made above as input, and then extract words from that file and place them into separate files. The words that start with A, should be placed in a file called 'word_a.txt', those with B in 'word_b.txt'. (The extraction is case-insensitive)
	
	**************** PROGRAM BEGIN ****************
	```ruby
	class Extractor
	
		def init()
		@f = File.open("sentence.txt",'r')		
		end
		def extract_word()
			puts "Extracting the words...."
			File.open('sentence.txt').each do |line|
				word_array =  line.split(' ')
				word_array.each do |word|			
					File.open("word_"+word[0].downcase+".txt",'a'){|f|f.write(word.tr('.','')+"\n")}
				end
			end
			
			puts "We are done here!"
		end
	end
	
	extract = Extractor.new()
	
	extract.extract_word
	
	```
	**************** PROGRAM END ******************
	
	
10. Programming question 2

  * Create a command line twitter client, that lets you send tweet to your twitter profile from the command line.
	**************** PROGRAM BEGIN ****************
	```ruby
	
	require 'rubygems'
	require 'twitter_oauth'

	class Tweeter
	private
		TWITTER_CONSUMER_KEY = 'add your here'
		TWITTER_CONSUMER_SECRET = 'add your here'
		TWITTER_ACCESS_TOKEN = 'add your here'
		TWITTER_ACCESS_SECRET = 'add your here'
	public
		def tweet_now(status)
			client = TwitterOAuth::Client.new(
			:consumer_key => TWITTER_CONSUMER_KEY,
			:consumer_secret => TWITTER_CONSUMER_SECRET,
			:token => TWITTER_ACCESS_TOKEN,
			:secret => TWITTER_ACCESS_SECRET)
			client.update("#{status}")
		end
	end

	tb = Tweeter.new()
	
	puts "Please enter your tweet here:"
	
	status = STDIN.readline.chomp
	
	tb.tweet_now(status)
	
	```
	**************** PROGRAM END ******************
	

  **NB: We expect you to write code using Ruby in an object oriented way. If you aren't familiar with the language, you can have a look at the following resources to learn ruby.**

  #### Resources:
  1. http://tryruby.org/levels/1/challenges/0
  2. https://rubymonk.com/
  3. https://www.ruby-lang.org/en/documentation/quickstart/
  4. https://www.codecademy.com/learn/ruby
  5. https://www.codeschool.com/learn/ruby
