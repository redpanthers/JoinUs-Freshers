File.open('simple_file.txt', 'r') do |f| #file open for reading
  readlin=f.read.split                   #read word by word

  print readlin.length                    #making sure we read 5000 words

  readlin.each do |line|                  #iterating the readlin variable
    first_letter = String(line)           #converting value in to string

    if first_letter[0] == 'A'                 #condition for cheking the words having first letter A
      my_file = File.new("Astored.txt", "w+") #create a file for saving words which begin with A

      File.open("Astored.txt", "w") do |new_line| #open the file
        readlin.each do |line|                    #iterating the readlin variable
          first_letter = String(line)             #convert in to string
          if first_letter[0] == 'A'
            new_line.print first_letter+ '  '       #writing the word begin with 'A' into the file
          end
        end
      end
      my_file.close


    elsif first_letter[0] == 'B'                    #condition for cheking the words having first letter B
      my_file = File.new("Bstored.txt", "w+")       #create a file for saving words which begin with B

      File.open("Bstored.txt", "w") do |new_line|   #open the file
        readlin.each do |line|                      #iterating the readlin variable
          first_letter = String(line)               #convert in to string
          if first_letter[0] == 'B'
            new_line.print first_letter+ '  '       ##writing the word begin with 'B' into the file
          end
        end
      end
      my_file.close                                 #close the file which we have open first


    end
  end
end
