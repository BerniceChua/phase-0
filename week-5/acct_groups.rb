# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

=begin
# What is the input?
# Input: List Of Students

# What is the output? (i.e. What should the code return?)
# Output: List Of Students separated into Accountability Groups

# What are the steps needed to solve the problem?
# Steps to solve the problem:

Step 1: Import the list of students.
Step 2: Make a variable to hold result -- "Accountability Groups"
Step 3: Randomize the sequence of the list of students
    How?
Step 4: Get the total number of the list of students.
Step 5: Get the least common denominator/least common multiple
    (so the groups can be divided evenly).  This gives us the
    number of members in each group.  Minimum number of 
    members is 5.
Step 6: Divide the total number of the list of students by the
    least common denominator (this gets the number of 
    Accountability Groups to create)
Step 7: WHILE the accountability groups have not yet run out, 
    fill each group with members from the randomized list.
Step 8: Give the list of Accountability Groups
    (Either Arrays or Hashes work for this purpose, so I'll do both.)

=end


# 1. Initial Solution
students_names = ["Abraham Clark", "Alan Alcesto", "Aleksandra Nowak", "Alexander Williams", "Alicia Quezada", "Amaar Fazlani", "Becky Lehmann", "Bernice Anne W Chua", "Brian Bensch", "Brian Wagner", "Bryan Munroe", "Carolina Medellin", "Chris Gomes", "Chris Miklius", "Christopher M. Guard", "Clinton Weber", "Daniel Andersen", "Darius Atmar", "Edward Gemson", "Fatma Ocal", "Gregory Wehmeier", "Igor Kazimirov", "Jacob Crofts", "Jamar Gibbs", "James Artz", "Jessie Richardson", "Jon Clayton", "Josh Shin", "Joshua Monzon", "Karla King", "Kevin Corso", "Kris Bies", "Logan Bresnahan", "Luis Fernando Plaz", "Malia Lehrer", "Michael Whelpley", "Natalie Polen", "Natasha Thapliyal", "Nicola Beuscher", "Nil Thacker", "Nimi Samocha", "Peter N Wood", "Pratik Shah", "Ryan Ho", "Ryan Zell", "Sabrina Unrein", "Sasha Tailor", "Scott Chou", "Shawn Spears", "Shea Munion", "Solomon Fernandez", "Syema Ailia", "Tal Schwartz", "Timothy Meixell", "Trevor Newcomb", "Van Phan", "Walter Kerr", "Will Granger", "William Brinkert", "Zach Schatz"]

def name_randomizer(array_of_names)
    randomized = {}
    # made this into a hash to ensure that non of the names repeat

    pseudo_random = Random.new

    counter = array_of_names.length
    while counter > 0
        index_picker = pseudo_random.rand(0...array_of_names.length)
        # randomly picks between zero & the length of the array

        if !randomized.has_key?(array_of_names[index_picker])
            randomized[array_of_names[index_picker]] = 1

            counter -= 1
        end
    end

    randomized.keys
end

def number_of_students(container_of_names)
    container_of_names.length
end

def lcm(total_number)
#this method finds what to divide them with.
    minimum_members_in_group = 5

    least_common_multiple = minimum_members_in_group
    while total_number % least_common_multiple != 0
        least_common_multiple += 1
    end

    least_common_multiple
end

def number_of_groups(total_number_of_names, least_common_multiple)
    if total_number_of_names.is_a?(Array) || total_number_of_names.is_a?(Hash)
        return total_number_of_names.length / least_common_multiple
    else
        return total_number_of_names / least_common_multiple
    end
end


random_names_list = name_randomizer(students_names)

def create_accountability_groups_hash_version(students_names_arg)
    copy = [] + students_names_arg # makes this non-destructive
    accountability_groups = {}

    groups = number_of_groups(number_of_students(students_names_arg), lcm(number_of_students(students_names_arg)))

    # creates hash keys names
    for number in 1..groups
        accountability_groups["Accountability Group #{number.to_s}"] = 1
    end

    accountability_groups.each { |key, value|
        accountability_groups[key] = [] + copy.shift(lcm(number_of_students(students_names_arg)))
    }

    accountability_groups
end

def create_accountability_groups_array_version(students_names_arg)
    copy = [] + students_names_arg # makes this non-destructive
    accountability_groups = []

    groups = number_of_groups(number_of_students(students_names_arg), lcm(number_of_students(students_names_arg)))

    groups.times {
        accountability_groups << [] + copy.shift(lcm(number_of_students(students_names_arg)))
    }
    
    accountability_groups
end
p create_accountability_groups_hash_version(random_names_list)
p create_accountability_groups_array_version(random_names_list)



# 2. Refactored Solution

def name_randomizer(array_of_names)
    array_of_names.shuffle
end

def lcm(total_number)
#this method finds what to divide them with.
    minimum_members_in_group = 5

    least_common_multiple = minimum_members_in_group
    while total_number % least_common_multiple != 0
        least_common_multiple += 1
    end

    least_common_multiple
end

def number_of_groups(total_number_of_names, least_common_multiple)
    return total_number_of_names.length / least_common_multiple if total_number_of_names.is_a?(Array) || total_number_of_names.is_a?(Hash)
    
    total_number_of_names / least_common_multiple
end


random_names_list = name_randomizer(students_names)

def create_accountability_groups_hash_version(students_names_arg)
    copy = [] + students_names_arg # makes this non-destructive
    accountability_groups = {}

    groups = number_of_groups(students_names_arg.length, lcm(students_names_arg.length))

    # creates hash keys names
    for number in 1..groups
        accountability_groups["Accountability Group #{number.to_s}"] = 1
    end

    accountability_groups.each { |key, value|
        accountability_groups[key] = [] + copy.shift(lcm(students_names_arg.length))
    }

    accountability_groups
end

def create_accountability_groups_array_version(students_names_arg)
    copy = [] + students_names_arg # makes this non-destructive
    accountability_groups = []

    groups = number_of_groups(students_names_arg.length, lcm(number_of_students(students_names_arg)))

    groups.times {
        accountability_groups << [] + copy.shift(lcm(number_of_students(students_names_arg)))
    }
    
    accountability_groups
end
p create_accountability_groups_hash_version(random_names_list)
p create_accountability_groups_array_version(random_names_list)


# Release 3: Add complexity (OPTIONAL)

=begin
    What I wanted to accomplish here:
    1) list of students names would come from an external file, and use 
    File.open and stuff like that, so that the names would come from a 
    file instead of manually creating an array of names.
    (I will need help on this, because when I try to copy the Ruby Docs, it 
    does not import, and it says that the file was not found.)
=end

# require 'io/console'

# def import_list_of_names
#     input = "list_of_students.txt"

#     my_file = File.open(input, "r")
#     my_file.each_line { |line|
#         puts line
#     }
#     my_file.close
# end

# p import_list_of_names

=begin
    2) If you run this program three times in a row, will the program give you 
    three different outputs?

    The program WOULD give different outputs.  IF you want the outputs to be 
    the same each time, then I would need to use a SEEDED pseudo-random number.

    Since this file is really long already, then I'll only put the changes 
    here.
=end

# iterative version

def name_randomizer(array_of_names)
    randomized = {}
    # made this into a hash to ensure that non of the names repeat

    pseudo_random = Random.new(1234)
    # The "(1234)" is the seed, which will make all instances of 
    # this "random number" create the same results each time.

    counter = array_of_names.length
    while counter > 0
        index_picker = pseudo_random.rand(0...array_of_names.length)
        # randomly picks between zero & the length of the array

        if !randomized.has_key?(array_of_names[index_picker])
            randomized[array_of_names[index_picker]] = 1

            counter -= 1
        end
    end

    randomized.keys
end

# built-in methods version

def name_randomizer(array_of_names)
    array_of_names.shuffle(random: Random.new(1234))
end

=begin
    3) If one person were to leave the cohort, how would the accountability 
    groups change?

    If only 1 person left, then I would only delete that name from the 
    accountability group that he or she belongs to.  

    Since I set the "minimum_members_in_group = 5", then a group having 
    only 4 people will not really suffer that much.
=end

=begin
    4) How do you decide when you're done? You'll need to decide. This is much 
    more challenging than you probably think, especially since there are no 
    pre-written tests.

    I know that I'm done if I meet all the requirements that was asked for.  

    But one day, after I learned of a new technique, I would come back and 
    checkout a branch just to try if it works ONLY IF this is a personal 
    project.  

    For a work project, usually these things involve teams and project 
    managers.  Usually, the complexity of these things were already voted 
    on by consensus, or the specs were already decided.  So it's not a good 
    idea to fiddle with it anymore.  
=end


# 3. Reflection

=begin

Release 6: Reflect
Create a commented-out reflection section in your acct_groups.rb file to 
answer the following questions in:

1. What was the most interesting and most difficult part of this challenge?

    Not really difficult, just stuff that I'm not used to yet so it took me 
    along time to figure it out.  

    I learned more about the random number generator today.  In the iterative 
    version of the code, at first, I thought of putting it outside the while 
    loop, but that does not work, because it's the same random number, since 
    it's a number and not a series of numbers.  Because of this mistake, only 
    one name got put into ALL of the output LOL!!  

    This got fixed when I put the 
    "index_picker = pseudo_random.rand(0...array_of_names.length)"
    INSIDE the while loop.

    My main difficulty now is refactoring, because I think that I cannot 
    reduce the code even further without sacrificing readability, or without 
    breaking anything.  

2. Do you feel you are improving in your ability to write pseudocode and break 
the problem down?

    Yes, I feel that my ability to write pseudocode and break the problem down 
    has gotten better.  

3. Was your approach for automating this task a good solution? What could have 
made it even better?

    At this point, I'm not sure what could make the code better because I am 
    still a n00b, but I'm sure that it COULD be better when I learn more.  

4. What data structure did you decide to store the accountability groups in 
and why?

    I could not decide whether or not to use an Array or a Hash, because 
    either Arrays or Hashes work for this purpose, so I made 2 versions:

    create_accountability_groups_hash_version(random_names_list)
    and
    create_accountability_groups_array_version(random_names_list)

    In this case, both versions work, depending on how picky you are with the 
    names.  If you want the names to actually show "Accountability Group #", 
    then you can use my hash_version.  In the hash version, the keys are the 
    names of the accountability groups, and the values are arrays with 5 names 
    in them.  If you don't really care so much for the names, then the Array 
    version would also work, since the sub-arrays inside them are sorted by 
    numbers already.  So the accountability group's labels are merely 
    "Accountability Group #{array_index_number + 1}".

    You can see the output for yourself:

    {"Accountability Group 1"=>["Igor Kazimirov", "Clinton Weber", "Solomon Fernandez", "Gregory Wehmeier", "Josh Shin"], "Accountability Group 2"=>["Peter N Wood", "Amaar Fazlani", "Ryan Zell", "Bernice Anne W Chua", "Sasha Tailor"], "Accountability Group 3"=>["Chris Gomes", "James Artz", "Carolina Medellin", "Kris Bies", "Walter Kerr"], "Accountability Group 4"=>["Fatma Ocal", "Van Phan", "Chris Miklius", "Sabrina Unrein", "Timothy Meixell"], "Accountability Group 5"=>["Abraham Clark", "Malia Lehrer", "Shawn Spears", "Alexander Williams", "Luis Fernando Plaz"], "Accountability Group 6"=>["Alicia Quezada", "William Brinkert", "Kevin Corso", "Michael Whelpley", "Ryan Ho"], "Accountability Group 7"=>["Bryan Munroe", "Logan Bresnahan", "Brian Wagner", "Aleksandra Nowak", "Alan Alcesto"], "Accountability Group 8"=>["Darius Atmar", "Natalie Polen", "Edward Gemson", "Trevor Newcomb", "Brian Bensch"], "Accountability Group 9"=>["Daniel Andersen", "Becky Lehmann", "Nicola Beuscher", "Nil Thacker", "Syema Ailia"], "Accountability Group 10"=>["Zach Schatz", "Will Granger", "Jacob Crofts", "Pratik Shah", "Jon Clayton"], "Accountability Group 11"=>["Christopher M. Guard", "Tal Schwartz", "Joshua Monzon", "Scott Chou", "Natasha Thapliyal"], "Accountability Group 12"=>["Jamar Gibbs", "Karla King", "Shea Munion", "Jessie Richardson", "Nimi Samocha"]}

    [["Igor Kazimirov", "Clinton Weber", "Solomon Fernandez", "Gregory Wehmeier", "Josh Shin"], ["Peter N Wood", "Amaar Fazlani", "Ryan Zell", "Bernice Anne W Chua", "Sasha Tailor"], ["Chris Gomes", "James Artz", "Carolina Medellin", "Kris Bies", "Walter Kerr"], ["Fatma Ocal", "Van Phan", "Chris Miklius", "Sabrina Unrein", "Timothy Meixell"], ["Abraham Clark", "Malia Lehrer", "Shawn Spears", "Alexander Williams", "Luis Fernando Plaz"], ["Alicia Quezada", "William Brinkert", "Kevin Corso", "Michael Whelpley", "Ryan Ho"], ["Bryan Munroe", "Logan Bresnahan", "Brian Wagner", "Aleksandra Nowak", "Alan Alcesto"], ["Darius Atmar", "Natalie Polen", "Edward Gemson", "Trevor Newcomb", "Brian Bensch"], ["Daniel Andersen", "Becky Lehmann", "Nicola Beuscher", "Nil Thacker", "Syema Ailia"], ["Zach Schatz", "Will Granger", "Jacob Crofts", "Pratik Shah", "Jon Clayton"], ["Christopher M. Guard", "Tal Schwartz", "Joshua Monzon", "Scott Chou", "Natasha Thapliyal"], ["Jamar Gibbs", "Karla King", "Shea Munion", "Jessie Richardson", "Nimi Samocha"]]


5. What did you learn in the process of refactoring your initial solution? Did 
you learn any new Ruby methods?

    I newly learned about .shuffle when I refactored my initial solution. ^_^

    It's pretty cool, because all those lines of code got reduced into 1 line.

=end