#Caesar's cipher

def switch_letter(words, shift)
    lower = ('a'...'z').to_a
    upper = ('A'...'Z').to_a

    words = words.split("")
    ciphred_string = ""
    words.each do |letter|
        if upper.include?(letter)
            ciphred_string += upper[upper.index(letter) + shift]
        elsif lower.include?(letter)
            ciphred_string += lower[lower.index(letter) + shift]
        end
    end

    puts ciphred_string
end

switch_letter("Ciao sono marco", 5)
