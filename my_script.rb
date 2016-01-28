

my_file = File.new("simple_file.txt", "w+") #making a new file


File.open("simple_file.txt", "w") do |new_line|               #open the file with write permission
  arr= [] #empty array
  m =0




  while m <= 5000                                             #while loop for 5000 time loop
    m += 1
    o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten 
    string = Array[(0...4).map { o[rand(o.length)] }.join]   #converting random generated strings into array for easy iteration
    arr << string                                            #save each string value to an array
  end
  arr.to_a.flatten.each_slice(5) do |d,e,f,g,i|               #here we slicing the array  value to 4 elements
    new_line.print d ,' ', e,' ',f,' ',g ,' ',i,"\n"          #print into file contain 5 words in a line 
  end



end







my_file.close