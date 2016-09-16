require_relative 'Node'
require 'pry'
require 'pp'

class BinarySearchTree
  attr_reader :root, :rating, :title

  def initialize (rating, title)
    @rating = rating
    @title = title
    @root = nil
  end

  def insert_new(rating, title, node = @root)
    if @root.nil?
       @root = Node.new(rating, title)
    else
      @root.insert(rating, title)
    end
    # elsif rating < node.rating
    #   if @root.left.nil?
    #     @root.left = Node.new(rating, title)
    #   else
    #     @root.left.insert(rating, title)
    #   end
    # else rating > node.rating
    #   @root.right.nil? ? @root.right = Node.new(rating, title) : @root.right.insert(rating, title)
    # end
  end

  def includes(rating, current_node = @root)
    if current_node == nil
      false
    elsif
      current_node.rating == rating
      true
    elsif
      rating < current_node.rating
        includes(rating, current_node.left)
    elsif
      rating > current_node.rating
        includes(rating, current_node.right)

    end
  end





    # If root is nil, return false. If
    # elsif input < current_node.input



  def tree_traverse(node= @root)
       return if (node == nil)
       tree_traverse(node.left)
       tree_traverse(node.right)
       puts node.title
  end



end

@tree = BinarySearchTree.new(@rating, @title)

@tree.insert_new(67, "Random")
@tree.insert_new(45, "This")
@tree.insert_new(74, "That")
@tree.insert_new(40, "Other")
@tree.insert_new(43, "Stuff")
@tree.insert_new(35, "Stuff")
@tree.insert_new(28, "Stuff")
@tree.insert_new(91, "Stuff")


binding.pry
