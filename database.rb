require 'sequel'

class Database
  attr_reader :connection

  def initialize
    if ENV['RUBY_ENV'] == "test"
      @connection = test_connection
    else
      @connection = production_connection
    end
  end

  def test_connection
    puts "Setting up the TEST environment database."
    Sequel.sqlite('database_test.sqlite3')
  end

  def production_connection
    puts "Setting up the PRODUCTION environment database."
    Sequel.sqlite('production.sqlite3')
  end

  def find(something)
    connection.select(something)
  end
end
