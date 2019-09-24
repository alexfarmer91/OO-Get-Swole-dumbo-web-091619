require 'pry'

require_relative './lib/membership.rb'
require_relative './lib/gym.rb'
require_relative './lib/lifter.rb'

golds = Gym.new("Golds Gym")
twenty_four = Gym.new("24 Hour Fitness")
planet = Gym.new("Planet Fitness")

bob = Lifter.new("Bob", 600)
greg = Lifter.new("Greg", 500)
chad = Lifter.new("Chad", 800)
stacey = Lifter.new("Stacey", 300)
lyle = Lifter.new("Lyle", 200)
sponge = Lifter.new("Spongebob", 6)

Membership.new(50, lyle, twenty_four)
Membership.new(50, chad, twenty_four)
Membership.new(30, sponge, golds)
Membership.new(30, stacey, golds)
Membership.new(40, bob, planet)
Membership.new(40, greg, planet)

binding.pry 
0