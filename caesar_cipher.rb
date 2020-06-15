#Caesar's cipher

require 'pry'

def switch_letter(words, shift)
    lower = ('a'...'z').to_a
    upper = ('A'...'Z').to_a

    words = words.split("")
    ciphred_string = ""
    words.each do |letter|
        if  letter == 'Z'
            ciphred_string += upper[shift]
        elsif letter == 'z'
            ciphred_string += lower[shift]
        elsif upper.include?(letter)
            ciphred_string += upper[(upper.index(letter) + shift) % 26]
        elsif lower.include?(letter)
            ciphred_string += lower[(lower.index(letter) + shift) % 26]
        elsif letter == ' '
            ciphred_string += ' '
        else
            ciphred_string += letter
        end
    end

    puts ciphred_string
end

switch_letter("Zz", 5)
