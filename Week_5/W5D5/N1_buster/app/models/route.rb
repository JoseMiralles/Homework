class Route < ApplicationRecord
  has_many :buses,
    class_name: 'Bus',
    foreign_key: :route_id,
    primary_key: :id

  # Route.first.n_plus_one_drivers
  def n_plus_one_drivers
    buses = self.buses

    all_drivers = {}
    buses.each do |bus|
      drivers = []
      bus.drivers.each do |driver|
        drivers << driver.name
      end
      all_drivers[bus.id] = drivers
    end

    all_drivers
  end

  # Route.first.better_drivers_query
  def better_drivers_query
    buses = self.buses.includes(:drivers)
    
    all_drivers = {}
    buses.each do |bus|
      drivers = []

      bus.drivers.each do |driver|
        drivers << driver.name
      end

      all_drivers[bus.id] = drivers
    end

    all_drivers
  end
end
