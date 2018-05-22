class River

  attr_reader :name, :fishes

  def initialize(name)
    @name = name
    @fishes = []
  end

  def add_fish(fish)
    @fishes.push(fish)
  end

  def remove_fish(fish)
    for f in @fishes
      if f == fish
        @fishes.delete(fish)
      end
    end
  end

  def fish_count()
    return @fishes.count()
  end

end
