class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_a_fish_from_river(fish, river)
    for f in river.fishes()
      if f == fish
        @stomach.push(fish)
        river.remove_fish(fish)
      end
    end
  end

  def roar()
    return "Grrr.."
  end

  def food_count()
    return @stomach.count()
  end

end
