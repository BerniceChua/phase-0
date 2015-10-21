# Simple Substrings

# I worked on this challenge [by myself, with: Aleksandra Nowak].


# Your Solution Below
=begin

pseudo code

input = address (string of characters)
output = string of characters that changes based on answer in "address"

step 1 = get "address"
step 2 = look for specific part of address that says "CA"
step 2.1 = substring?
    split the string into words
    go through each word to check if it is equal to "CA"
step 3: 
IF specific part of address has "CA", output = "Welcome to California"
ELSE output = "You should move to California"

=end

def welcome(address)
    split_words = address.split(" ")
    $count = 0

    until $count = split_words.len  

p is_a?(has_ca)
    if has_ca == true
        p "Welcome to California"
    else
        p "You should move to California"
    end
end

welcome("blah hello blah")

welcome("633 Folsom Street, 6th Floor, San Francisco, CA 94103")

welcome("calina kokocakoko kokoCAko CACA ca")

welcome("a string with CA in it")


def welcome(address)
    

     if address.include? "CA"
        p "Welcome to California"
    else
        p "You should move to California"
    end
end

welcome("blah hello blah")

welcome("633 Folsom Street, 6th Floor, San Francisco, CA 94103")

welcome("calina kokocakoko kokoCAko CACA ca")

welcome("a string with CA in it")