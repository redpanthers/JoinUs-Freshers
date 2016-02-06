# Questions

1. Do you have your own personal computer?
Yes, I do have a personal computer with windows 7 OS
2. Describe your present development enviornment (We are talking abour your dev machine, like OS, RAM, Screen Resolution)
 Device - Dell vostro 3546,3rd generation intel core i3 processor,windows 7,2gb ram,resolution 1366*768 pixels
3. Describe your ideal development enviornment
i would prefer a windows 7 with sublime text 2.0.2
**Social links**

1. Link to your github account   https://github.com/josinbabu

2. Link to your stackoverflow account  i donot have a stackoverflow account

3. Link to your Blog/Tumblr/Personal Website i donot have a Blog/Tumblr/Personal Website

4. Link to you Linkedin Account  https://www.linkedin.com/in/josin-babu-a67b5bba

**All the questions below are related to your development enviornment**

4. Write the steps you need to do to find a `string` from a group of files    grep -rnisI "foo" /home/thisuser/bar/baz/*
   
  -grep -rl string' * -r helps in reccursively checking the folders -l to ignore binary files

5. Which all programming languages are installed in your system. I have installed java,c,cpp,ruby and ruby on rails in my system 

6. How long will it take you to install or re-setup your development enviornment from scratch? Have you done any automation on it

it willtake 15 to 20 minutes to install or re-setup my development enviornment from scratch. No, I havent done any automation on it.

**Programming Languages**

7. The languages in which you have written over 1000 lines of code
c,cpp,c++,java,asp.net,HTML

8. The languages you learned which were not part of your course.
 c#,php,ruby

9. Programming question 1 (You may use a programming language of your choice, the code and instruction on how to run it should be included in your pull request)

  * Create a file with 1000 lines (Place random sentence and text in those lines using character 'a'..'z', 'A'..'Z'). Each line should have a sentence. Make sure everything is random, the file should have minimum of 5000 words.

  * Create a program that takes the file you made above as input, and then extract words from that file and place them into saperate files. The words that start with A, should be placed in a file called 'word_a.txt', those with B in 'word_b.txt'. (The extraction is case-insentive)
  

 +z = []		
 for j in 1..1000		
 +    x = []		
 +    t = Random.rand(7...15)		
 +     for i in 1..t		
 +               s = (('a'..'z').to_a+('A'..'Z').to_a).shuffle.first(rand(1...8)).join		
 +            x = x<<s		
 +      end		
 +        x = x.join(" ")		
 +        x = x + "."		
 +        z = z<<x		
 +end		
 +z = z.join("\n")		
 +		
 +File.open("file.txt", 'w') { |file| file.write(z) }		
 +file =File.open("file.txt","r")		
 +text = file.read		
 +		
 +for k in 'a'..'z'		
 +        File.delete("word_#{k}.txt") if File.exist?("word_#{k}.txt")		
 +end		
 +		
 +words = text.split(/\W+/)		
 +words.each do |w|		
 +        File.open("word_#{w[0].downcase}.txt","a+") { |file| file.write(w + "\n") }		
 +end		
 +		
  

10. Programming question 2

  * Create a comand line twitter client, that lets you send tweet to your twitter profile form the command line.
  * The code has to be object oriented
  
equire 'twitter'		
 +client = Twitter::REST::Client.new do |config|		
 +  config.consumer_key        = "consumer_key"		
 +  config.consumer_secret     = "consumer_secret"		
 +  config.access_token        = "2904850933-kSx6IqplP2d6qIL1lQMpyVTHdfDooXYlnUI4uzE"		
 +  config.access_token_secret = "ipOihJc2vfw0eXDR4AvAX9XBHyUddsnLTuzd1RxjMyyM5"		
 +end		
 +		
 +client.update("I'm tweeting")
