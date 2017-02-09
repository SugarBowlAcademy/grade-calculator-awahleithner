=begin
in this project you will be creating a program that tells people what grade they will need on a test to get a particular overall grade in the class. Look at the pseudocode below as an example of how the the UI is and how the calculation works
=end

#Example 1

#My current overall grade is 80/100
# my next test is worth 20 points
# I want to know what grade I will need on the test in order to keep a C in the class
# I know that the overall points in the class will be 120
# and that 120*.7 is 84 so I will need a 4/20, or 20% on the next test to maintain a 70% in the class.


#Example 2

# my current grade is 45/50, a 90%
# I want to know how to move to a 95% if my next test is worth 25 points
# I know that my overall grade will be out of 75 points, and .95 of 75 is 71.25
# so the person will need 71.25-45=26.5 points on the next test or 106% to get a 95%

def test
puts "What is your percentage in the class right now? Please put it in as a decimal such as .8 for 80%, and type it in digits only."
grade = gets.to_f
#Above code allows Ruby to get your current grade
puts "As for the points your upcoming test is worth?"
worth = gets.to_f
#Above code lets Ruby know how many points the test is worth
puts "What would you like your grade as a decimal to be after the test?"
after = gets.to_f
#This part lets Ruby know what grade you want from the test
puts "How many points total has your class earned so far?"
total = gets.to_f
#This part lets you know how many points the class has earned so far

 #this part is the most important part to comment, as it is the most complicated. The other parts of the code are relatively self explanatory. 
totalPoints = (grade * total)#yep
totalPointsWithTest = (total + worth)#yep
dreamGrade = (after*totalPointsWithTest)#yep
neededGrade = ((dreamGrade - totalPoints)/worth)*100
#This code calculates the grade
puts "You will need to earn a #{neededGrade}% on the test to get the grade you want."
#This code lets you know what grade you need
end
#you have to run this method in order for it to work in terminal
test
