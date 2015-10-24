# Simple Substrings

# I worked on this challenge [with: Aleksandra Nowak (navigator), me=driver].


# Your Solution Below
=begin

Pseudo code

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


# initial solution

def welcome(address)
    # Your code goes here!
    split_words = address.split(" ")

    for word in split_words
        if word == "CA"
            return "Welcome to California"
        end
    end

    return "You should move to California"
end


# refactored solution

def welcome(address)
    if address.include? "CA"
        p "Welcome to California"
    else
        p "You should move to California"
    end
end


# refactored solution

def welcome(address)
    return "Welcome to California" if address.include? "CA"
        
    return "You should move to California"
end