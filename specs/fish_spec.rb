require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")
require_relative("../river")
require_relative("../bear")


class TestFish < MiniTest::Test
  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
  end

  def test_get_name
    assert_equal("Nemo", @fish1.name())
  end



end
