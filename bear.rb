class Bear
  attr_reader(:name, :stomach)
  def initialize(name)
    @name = name
    @stomach = []
  end

  def eat_fish(fish)
    @stomach.push(fish)
  end



  def roar()
    return "Roar!!"
  end

end
