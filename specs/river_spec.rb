require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")



class TestRiver < MiniTest::Test
  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")

    @river1 = River.new("Amazon")
  end

  def test_river_name
    assert_equal("Amazon", @river1.name)
  end

  def test_school_starts_empty()
    assert_equal(0, @river1.school_length())
  end

  def test_add_fish_to_school
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    assert_equal(2, @river1.school_length())
  end

end
