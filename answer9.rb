y = []
for j in 1..1000
        x = []
        t = Random.rand(7...15)
        for i in 1..t
                s = (('a'..'z').to_a+('A'..'Z').to_a).shuffle.first(rand(1...8)).join
                x = x<<s
        end
        x = x.join(" ")
        x = x + "."
        y = y<<x
end
y = y.join("\n")

File.open("file.txt", 'w') { |file| file.write(y) }
file =File.open("file.txt","r")
text = file.read

for k in 'a'..'z'
        File.delete("word_#{k}.txt") if File.exist?("word_#{k}.txt")
end

words = text.split(/\W+/)
words.each do |w|
        File.open("word_#{w[0].downcase}.txt","a+") { |file| file.write(w + "\n") }
end

