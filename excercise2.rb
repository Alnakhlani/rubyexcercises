# - Print 5 times a sentence
# - Print the alphabet
# - Print the alphabet, but for even index number print an uppercase letter
#
# 5.times do |i|
#   i = "hello \n"
#   print i
# end
# or 5.times {puts "hello \n"}

# print ("a".."z").to_a

("a".."z").each_with_index do |object, index| #block starts here with the do
  if index.even?
    puts object.upcase
  else
    puts object
  end
