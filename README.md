Solution code

```ruby
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
  PG::Connection.new(dbname: 'learndb')
end

# Create method that creates a new table named users
def create_table(table_name)
  connection.exec("CREATE TABLE #{table_name} (id SERIAL PRIMARY KEY,
                                               email VARCHAR(255))")
  p "Table created: #{table_name}"
end

# Create a method that inserts a new book into the database
def add_user(first_name, last_name)
  connection.exec("INSERT INTO users (email) VALUES ('#{first_name}', '#{last_name}')")
  p "User created: #{first_name last_name}"
end

# Output a table of current data in our database by running this script: `ruby db.rb`
# You'll see it print out a table of the current contents of our database
connection.exec( "SELECT * FROM books" ) do |result|
  puts "ID | Email"
  result.each do |row|
    puts " %s | %s" % row.values_at('id', 'email')
  end
end


```