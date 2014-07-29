gem 'minitest'
require 'minitest/autorun'
require './database'

class DatabaseTest < Minitest::Test
  def test_it_initializes
    assert Database.new
  end
end
