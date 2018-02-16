# TODO: Create a class - Planet
# TODO: Planet must have all attributes except 'residents' from the swapi.co
# TODO: Planet must have a save() method
# HINT: Your model will have to use the exercises/db.rb file to connect to the database!
require './db.rb'

class Planet
	attr_reader :climate, :diameter, :gravity, :planet_name, :orbital_period, :population, :rotation_period, :surface_water, :terrain, :url

	def initialize(climate, diameter, gravity, planet_name, orbital_period, population, rotation_period, surface_water, terrain, url)
		@climate = climate
		@diameter = diameter
		@gravity = gravity
		@planet_name = planet_name
		@orbital_period = orbital_period
		@population = population
		@rotation_period = rotation_period
		@surface_water = surface_water
		@terrain = terrain
		@url = url
	end

	def save
		add_planet(self)
	end 


end

earth = Planet.new(1,2,3,4,5,6,7,8,9,10)
earth.save
