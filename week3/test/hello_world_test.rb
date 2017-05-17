require "minitest/autorun"
require './lib/hello_world.rb'

class HelloTest < Minitest::Test
  def test_it_greets
    hello = Hello.new
    assert_equal "Hello, World!", hello.greet
  end
end
