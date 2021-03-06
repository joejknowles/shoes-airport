class Airport
  attr_reader :planes, :climate, :capacity
  def initialize(settings = {})
    @planes = []
    @capacity = settings.fetch(:capacity, 6)
    @climate = settings.fetch(:climate, 1)
  end

  def land plane
    check_land_safety
    planes << plane
    plane.land
  end

  def check_land_safety
    if full?
      fail 'Airport full'
    elsif bad_weather?
      fail 'Stormy'
    end
  end

  def full?
    planes.length == @capacity
  end

  def bad_weather?
    true if rand(4 + climate) > 4
  end

  def take_off plane
    fail 'Stormy' if bad_weather?
    planes.delete(plane)
    plane.take_off
  end
end
