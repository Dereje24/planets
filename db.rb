# Exercise 1: Intro to Databases
# Documentation: https://deveiate.org/code/pg/PG.html
#
# We're establishing our first connection to a database in this first exercise. To do so, we first need to create a
# new database.
#     - Open a terminal window
#     - Type the following command: `createdb learndb`
#     - This will create a database with your currently logged in system user; the default user is postgres. Remember.

# Import our Postgres module so that we can connect to the database.
# Ruby is simply the language we're using to connect. It's separate from PostgreSQL!
require 'pg'

# Create a connection to our database
def connection
  # This line of code will allow us to execute SQL commands.
  # This function returns that connection and you can see how we use it below.
  PG::Connection.new(dbname: 'library')
end

# TODO: Change this to a method that takes a first name and last name, and creates a new table named authors
connection.exec('CREATE TABLE books (id SERIAL PRIMARY KEY,
                                     title VARCHAR(255))')

# TODO: Change this to a method that inserts a new author into the authors table
connection.exec("INSERT INTO books (title) VALUES ('It')")

# Output a table of current data in our database by running this script: `ruby db.rb`
# You'll see it print out a table of the current contents of our database
connection.exec( "SELECT * FROM books" ) do |result|
  puts "ID | Email"
  result.each do |row|
    puts " %s | %s" % row.values_at('id', 'email')
  end
end

