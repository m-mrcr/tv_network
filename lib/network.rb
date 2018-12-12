class Network

  attr_reader :name,
              :shows

  def initialize(name, shows = [] )
    @name = name
    @shows = shows

  end

  def add_show(show)
    shows.push(show)
  end

  def payroll
    
  end

end
