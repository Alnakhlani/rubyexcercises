# puts "Tell me your name: "
# name = gets.chomp
# puts "Tell me your age: "
# age = gets.chomp
# puts "Tell me your city: "
# city = gets.chomp
# puts "Tell me your color: "
# color = gets.chomp
# puts "#{name} - #{age} - #{city} - #{color}"

# def profile(input)
#   puts "Tell me your #{input}"
#   gets.chomp
# end
# puts "#{profile ("name")} - #{profile ("age")} - #{profile ("city")} - #{profile ("color")}"
# Write a ruby script that will give this output.
# The program will ask questions (3, to begin with) to the user and give a feedback to the user if the answer is correct or not.
# The program will calculate in the end how many correct answers the user gave out of the total number of questions.
# hash and arrays kullan {"weight" => ["pound", "kilogram"]"} korrekt answerları store etmelisin
#önce bi soru için yap sora geliştir.
# Optionally,
#
# The program will give random responses for a correct answer (That's right!, Well Done!.. etc)
# The answers for each question will be presented in a shuffled order.
# Are you ready for a quiz?  Y
# Okay, here it comes!
#
# Q1) What is the capital of Alaska?
#     1) Melbourne
#     2) Anchorage
#     3) Juneau
#
# > 3
#
# That's right!
#
# Q2) Can you store the value "cat" in a variable of type int?
#     1) yes
#     2) no
#
# > 1
#
# Sorry, "cat" is a string. ints can only store numbers.
#
# Q3) What is the result of 9+6/3?
#     1) 5
#     2) 11
#     3) 15/3
#
# > 2
#
# That's correct!
#
# Overall, you got 2 out of 3 correct.
# Thanks for playing!

def ask_user(quiz)
  puts quiz
  case gets.chomp.downcase
  when "y"
      true
  when "n"
      false
  else
    puts "Come again?"
    ask_user(quiz)
  end
end
want_quiz = ask_user("Are you ready for a quiz? [y/n]")

if want_quiz == true
  puts "Okay, here it comes."
  else
  puts "K. Bye!"
  end
  score=0
if want_quiz == true
  questionone = "\n \n \n Q1) What is the capital of Alaska? \n \t 1) Melbourne \n \t 2) Anchorage \n \t 3) Juneau "
  puts questionone
  print "> "
  answerone=gets.chomp
  else
  exit
end
if answerone == "3"
  score += 1
  puts "Correct!"
  else
  puts "Incorrect. The answer is Juneau."
end
questiontwo="\n \n \n Q2) Can you store the value \"cat\" in a variable of type int? \n \t 1) Yes \n \t 2) No"
puts questiontwo
print "> "
answertwo = gets.chomp
if answertwo == "2"
  score += 1
  puts "Correct!"
  else
  puts "Sorry, \"cat\" is a string. Ints can only store numbers."
end
questionthree = "\n \n \n Q3) What is the result of 9+6/3? \n \t 1) 5 \n \t 2) 11 \n \t 3) 15/3"
puts questionthree
print "> "
answerthree = gets.chomp
if answerthree == "2"
  score += 1
  puts "Correct!"
  else
  puts "Incorrect. The answer is 2."
end

print "You have got #{score} out of 3 correct! "
print "Thanks for playing!"
