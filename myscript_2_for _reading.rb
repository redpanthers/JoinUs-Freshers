File.open('simple_file.txt', 'r') do |f|
  readlin=f.read.split

  print readlin.length

  readlin.each do |line|
    first_letter = String(line)

    if first_letter[0] == 'A'
      my_file = File.new("Astored.txt", "w+")

      File.open("Astored.txt", "w") do |new_line|
        readlin.each do |line|
          first_letter = String(line)
          if first_letter[0] == 'A'
            new_line.print first_letter+ '  '
          end
        end
      end
      my_file.close


    elsif first_letter[0] == 'B'
      my_file = File.new("Bstored.txt", "w+")

      File.open("Bstored.txt", "w") do |new_line|
        readlin.each do |line|
          first_letter = String(line)
          if first_letter[0] == 'B'
            new_line.print first_letter+ '  '
          end
        end
      end
      my_file.close


    end
  end
end
