# Goal: Learn about ruby classes and objects
#
# You are the owner of a dog daycare. Things are getting out of hand and you have to start organizing the group of dogs that you have on hand.
# You write a program to help you organize the dogs.
#
# For each dog you want to keep track of: breed, name, owner's name and if they are friendly
#
# The dogs can bark, eat, play or sleep.
#
# TASK 1: Write a program that has 4 different dogs. Each dog should perform one of the actions it can do.
#
# e.g. output:
#
# The dogs at the daycare are named:
# Pookie, Aurelia, Cher and Fritz
#
# Right now, the dogs are:
# Pookie says "ruf!"
# Aurelia is sleeping
# Cher is playing
# Fritz is eating
#
# USE A RUBY CLASS.
# At the end of this, you should be able to answer the following questions:
# What is an object? What is a class? What is the difference between those two?

class Dogs
    attr_accessor :breed, :name, :owner, :behaviour

  def initialize(breed, name, owner_name, behaviour)
      @breed = breed
      @name = name
      @owner = owner_name
      @behaviour = behaviour
  end
  def eat
    puts "#{name} eats garbage."
  end
  def bark
   puts "#{name} barks when angry."
  end
  def sleep
    puts "#{name} sleeps around noon."
  end
  def play
    puts "#{name} plays with kittens."
  end
end
dog1 = Dogs.new("boxer", "travis","bushra", "friendly")
dog2 = Dogs.new("terrier", "fran", "laura", "not friendly")
dog3 = Dogs.new("beagle", "leila", "chiara", "friendly")
dog4 = Dogs.new("bulldog", "nana", "angelique", "not friendly")

puts "the dogs currently at the daycare are:\n#{dog1.name}, #{dog2.name}, #{dog3.name} and #{dog4.name}."

dog1.eat
dog2.bark
dog3.sleep
dog4.play
