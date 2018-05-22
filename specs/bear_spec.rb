require ("minitest/autorun")
require ("minitest/rg")

require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")

    @fish1 = Fish.new("Shark")
    @fish2 = Fish.new("Whale")
    @fish3 = Fish.new("Dolphin")

    @river = River.new("Ganges")
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
  end

  def test_take_a_fish_from_river
    @bear.take_a_fish_from_river(@fish1, @river)
    assert_equal(1, @bear.stomach().count())
    assert_equal(2, @river.fishes().count())
  end

  def test_roar
    assert_equal("Grrr..", @bear.roar())
  end

  def test_food_count__has_food
    @bear.take_a_fish_from_river(@fish1, @river)
    @bear.take_a_fish_from_river(@fish2, @river)
    count = @bear.food_count()
    assert_equal(2, count)
  end
  def test_food_count__no_food
    count = @bear.food_count()
    assert_equal(0, count)
  end

end
