require './lib/character'

class Show

  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters = [])
    @name = name
    @creator = creator
    @characters = characters
  end

  # def total_salary
  #   characters.inject({}) do |name, salary|
  #
  #   end #end for the enumerable
  # end #end for the method

  def total_salary
    characters.Character.:salary.sum
  end

end
