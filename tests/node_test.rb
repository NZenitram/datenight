require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_if_node
    node = Node.new(45, "RNG")
    assert_equal 45, node.rating
  end

  def test_if_title
    node = Node.new(45, "RNG")
    assert_equal "RNG", node.title
  end
  
end
