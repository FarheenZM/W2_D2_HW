require ("minitest/autorun")
require ("minitest/rg")

require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
    @fish1 = Fish.new("Shark")
    @fish2 = Fish.new("Whale")
    @fish3 = Fish.new("Dolphin")
  end

  def test_add_fish
    @river.add_fish(@fish1)
    assert_equal(1, @river.fishes().count())

  end

  def test_remove_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)

    @river.remove_fish(@fish2)
    assert_equal(2, @river.fishes().count())
  end

  def test_fish_count__has_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish1)

    count = @river.fish_count()

    assert_equal(2, count)
  end

  def test_fish_count__no_fish
    count = @river.fish_count()
    assert_equal(0, count)
  end

end
