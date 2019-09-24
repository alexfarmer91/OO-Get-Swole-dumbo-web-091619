
class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name,lift_total)
    @name = name
    @lift_total = lift_total
    @@all.push(self)
  end

  def self.all 
    # Get a list of all lifters
    @@all 
  end 

  def join_gym(cost, gym)
    # Given a gym and a membership cost, sign a specific lifter up for a new gym
    Membership.new(cost, self, gym)
  end 

  def memberships
  # Get a list of all the memberships that a specific lifter has
   Membership.all.select { |mem_instance| mem_instance.lifter == self }
  end 

  def my_gyms
   # Get a list of all the gyms that a specific lifter has memberships to
   memberships.map { |mem_instance| mem_instance.gym }
  end 

  def self.lift_average
   # Get the average lift total of all lifters
   total_array = @@all.map { |lifter_instance| lifter_instance.lift_total }
   avg = total_array.reduce(:+).to_f / total_array.length
   avg.round(2)
  end 

  def total_cost
   memberships.map { |mem_instance| mem_instance.cost }.reduce(:+)
  end 

end
