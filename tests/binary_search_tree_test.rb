
require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree.rb'
# require_relative 'Node'
class SearchTreeTest < Minitest::Test
  def setup
    @tree = BinarySearchTree.new(@rating, @title)
  end

  def test_exists
    assert_instance_of BinarySearchTree, @tree
  end

  # def test_if_rated
  #   @tree.insert_root(12, "Pie")
  #   assert_equal 12, @tree.root.rating
  # end
  #
  # def test_if_title
  #   @root = Node.new(@rating, "Random")
  #   assert_equal "Random", @root.title
  # end

  def test_if_it_can_create
    node = Node.new(@rating, @title)
    assert_instance_of Node, node
  end

# start a blank tree, insert one node, confirm it's included there
# start a tree, insert two nodes to the left, confirm both there
# start a tree, insert two right, confirm both there
# tree, lots of nodes, check a deep child
# ---
# start a tree, insert a node, check its depth is 1
# 

  def test_does_tree_include
    @tree.insert_new(12, "Hippos")
    @tree.insert_new(10, "Elephant")
    @tree.insert_new(25, "Meercats")
    assert @tree.includes(25)
  end



end
