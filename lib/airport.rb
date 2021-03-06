class Airport

  attr_reader :planes_in_airport
  attr_accessor :weather
  attr_accessor :plane_capacity

  DEFAULT_PLANE_CAPACITY = 50

  def initialize
    @planes_in_airport = []
    @weather = Weather.new
    @plane_capacity = DEFAULT_PLANE_CAPACITY
  end

  def plane_is_added_to_available_fleet(plane)
    @planes_in_airport << plane
  end

  def plane_in_airport?(plane)
    @planes_in_airport.include?(plane)
  end

  def plane_is_removed_from_available_fleet(plane)
    @planes_in_airport -= [plane]
  end

  def check_weather?
    @weather != "stormy"
  end

  def full?
    @planes_in_airport.length >= @plane_capacity
  end
end
