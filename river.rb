class River
  attr_accessor(:school, :name)

  def initialize(name)
    @name = name
    @school = []
  end

  def school_length()
    return @school.length()
  end

  def add_fish(fish)
    @school.push(fish)
  end






end
