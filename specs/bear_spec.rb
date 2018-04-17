require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class TestBear < MiniTest::Test
  def setup
    # @river1 = River.new("Amazon")

    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")

    @bear1 = Bear.new("Yogi")

  end

  def test_get_name
    assert_equal("Yogi", @bear1.name())
  end

  def test_stomach_empty
    assert_equal(0, @bear1.stomach.length)
  end

  def test_bear_eat_fish
    @bear1.eat_fish(@fish1)
    assert_equal(1, @bear1.stomach.length)
  end

  def test_bear_can_roar()
    assert_equal("Roar!!", @bear1.roar())
  end



end
