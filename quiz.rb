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
want_quiz = ask_user("Are your ready for a quiz? [y/n]")

if want_quiz == false
  puts "K.Bye.."
  exit
end
puts "Okay, here it comes."
