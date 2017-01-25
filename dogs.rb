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
end
dog1 = dogs.new("boxer", "travis","bushra", "friendly")
dog2 = dogs.new("terrier", "fran", "laura", "not friendly")
dog3 = dogs.new("beagle", "leila", "chiara", "friendly")
dog4 = dogs.new("bulldog", "nana", "angelique", "not friendly")

def eat
  puts "#{name} eats garbage."
end
dog1.eat
