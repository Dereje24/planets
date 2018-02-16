# Create a database named: starwars
# This script must do 4 things:
# 1. Create a database connection
# 2. Create a table named planets
# 3. Insert a new row into the planets table
# 4. Print a message to the console to notify you of successful actions

# TODO: Create a method named connection that connects to the database

# TODO: Create a method that adds a table: planets

# TODO: Create a method named add_planet(planet) that inserts a new row into the database

require 'pg'

def connection 
	PG::Connection.new(dbname: 'starwars')
end

def create_table(table_name)
	connection.exec("CREATE TABLE #{table_name} (id SERIAL PRIMARY KEY, climate VARCHAR(255), diameter VARCHAR(255), gravity VARCHAR(255), planet_name VARCHAR(255), orbital_period VARCHAR(255), population VARCHAR(255), rotation_period VARCHAR(255), surface_water VARCHAR(255), terrain VARCHAR(255), url VARCHAR(255) )")
  p "Table created: #{table_name}"	

end

def add_planet(planet)
	connection.exec("INSERT INTO planets (climate, diameter, gravity, planet_name, orbital_period, population, rotation_period, surface_water, terrain, url) VALUES ('#{planet.climate}', '#{planet.diameter}','#{planet.gravity}', '#{planet.planet_name}', '#{orbital_period}', '#{population}', '#{planet.rotation_period}', '#{planet.surface_water}', '#{planet.terrain}', '#{planet.url}') ")
	p "Planet created: #{planet.planet_name}"
end

def delete_table(table_name)
  connection.exec("DROP TABLE #{table_name}")
  p "Table deleted #{table_name}"
end