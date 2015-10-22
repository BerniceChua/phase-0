=begin
4.3.1 Return a Formatted Address
https://github.com/BerniceChua/phase-0/blob/master/week-4/address/my_solution.rb

4.3.2 Defining Math Methods
https://github.com/BerniceChua/phase-0/blob/master/week-4/math/my_solution.rb
=end


=begin
Full name greeting: Write a program that asks for a person's first 
name, then middle, then last. Finally, it should greet the person 
using their full name.
=end
puts "What is your given name?"
first_name = gets.chomp 
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your surname?"
surname = gets.chomp

puts "Hello #{first_name} #{middle_name} #{surname}~~!!!!  ^__^"

# it "accepts a String called first_name as a given name" do
#     first_name = "Bernice Anne"
#     expect(first_name).to be == "Bernice Anne"
# end
# it "accepts a String called middle_name as a middle name" do
#     middle_name = "Wong"
#     expect(middle_name).to be == "Wong"
# end
# it "accepts a String called surname as a surname" do
#     surname = "Chua"
#     expect(surname).to be == "Chua"
# end
# it 'returns a greeting with the full name of the user' do
#     first_name = "Bernice Anne"
#     middle_name = "Wong"
#     surname = "Chua"
#     expect("Hello #{first_name} #{middle_name} #{surname}~~!!!!  ^__^").to be "Hello Bernice Anne Wong Chua~~!!!!  ^__^"
# end

=begin
Bigger, better favorite number: Write a program that asks for a 
person's favorite number. Have your program add 1 to the number, 
and then suggest the result as a bigger and better number.  (Do be 
tactful about it, though.)
=end
puts "What is your favorite number?"
favorite_number = gets.chomp.to_i

puts "You know how your favorite number can be improved?  Add 1 to it!!!  Your new favorite number is #{favorite_number + 1}."

#   it 'accepts a number as a single parameter' do
#     expect(method(:welcome).arity).to eq 1
#   end
#   it 'returns the favorite number + 1' do
#     
#     expect(welcome("a string with CA in it")).to eq "Welcome to California"
#   end
#   it 'returns "You should move to California" if the address does not contain "CA"' do
#     expect(welcome("nothing like cali in here")).to eq "You should move to California"
#   end