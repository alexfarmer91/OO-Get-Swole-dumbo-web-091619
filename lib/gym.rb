
class Gym

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all 
    # Get a list of all gyms
    @@all 
  end 

  def recruit_lifter(cost, lifter)
    Membership.new(cost, lifter, self)
  end 

  def memberships
    # Get a list of all memberships at a specific gym
    Membership.all.select { |mem_instance| mem_instance.gym == self }
  end 

  def lifters 
    # Get a list of all the lifters that have a membership to a specific gym
   memberships.map { |mem_instance| mem_instance.lifter }
  end 

  def lifter_names 
   # Get a list of the names of all lifters that have a membership to that gym
   lifters.map { |lifter_instance| lifter_instance.name }
  end 

  def my_lift_totals
    # Get the combined lift total of every lifter has a membership to that gym
   all_lift_totals = lifters.map { |lifter_instance| lifter_instance.lift_total }
   all_lift_totals.reduce(:+)
  end 

end
