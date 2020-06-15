require 'pry'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#Create function take 2 arguments. 1 word e 1 array of substrings
def sub_string(word,dictionary)
#convert string into array with split method
word = word.split(" ")
p word
#iterate trough the array and see how many times find the word
word_times = Hash[dictionary.collect{|w| [w,""]}]
#associate the times to a words

word.each do |words|
    counter = 0
    word_times.each_key do |key|
        if word_times.key?(words.to_s)
            counter += 1
            word_times[words.to_s] = counter
        else
            counter = 0
        end
    end
end
#return an hash with the results
puts word_times
end

sub_string("below down going going", dictionary)