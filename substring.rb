
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_string(text, dict)
    match = Hash.new(0)

    text.split(" ").each do |t|
        dict.each do |word|
            match[word] += 1 if t.downcase.include?(word.downcase)
        end
    end

    puts match
end

sub_string("below", dictionary)

sub_string("Howdy partner, sit down! How's it going?", dictionary)