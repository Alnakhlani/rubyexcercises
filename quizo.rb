# q1 = "\n \n \n Q1) What is the capital of Alaska? \n \t 1) Melbourne \n \t 2) Anchorage \n \t 3) Juneau"
# q2 = "\n \n \n Q2) Can you store the value \"cat\" in a variable of type int? \n \t 1) Yes \n \t 2) No"
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
quiz = {
  "What is the capital of Alaska?" => [{answer:"Melbourne", correct: false}, {answer:"Anchorage", correct: false}, {answer:"Juneau", correct: true}],
  "Can you store the value \"cat\" in a variable of type int?" => [{answer:"yes", correct:false}, {answer:"no", correct: true}]
}
quiz.each_with_index { |(key, value), index|
  puts "Q#{index+1}) #{key}"
value.each_with_index {|answer, index|
  puts "\t#{index+1}) #{answer[:answer]}"
  }
  puts "\n"
  print "> "
  input = Integer(gets.chomp) #gets.chomp.to_i çalışmıo cunku, böle daha strict bi sekilde integera çevirio

  if value[input -1][:correct]
    puts "That's right."
  else
    puts "Incorrect."
  end
}



#
# } #iteration
# #compare the user input with the correct answer in the data structure
# if input == third answer of question one
