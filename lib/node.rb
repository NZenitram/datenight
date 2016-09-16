# require_relative 'pseudodatenight.rb'  # => false
require 'pry'
class Node
  attr_accessor :rating, :left, :right, :root, :tree
  attr_reader :title

  def initialize(rating, title)
    @rating = rating
    @title = title
    @left = nil
    @right = nil
  end
# binding.pry

  def insert(rating, title)
    node = Node.new(rating, title)
    # binding.pry
      if rating < node.rating
        @left.nil? ? @left = Node.new(rating, title) : @left.insert(rating, title)
      else rating > node.rating
        @right.nil? ? @right = Node.new(rating, title) : @right.insert(rating, title)
      end
  end
  #
  # def insert(rating, title, node = Node.new(rating,title))
  #   if rating < node.rating
  #     until @left.nil?
  #        @left.insert(rating, title)
  #        @left.left = Node.new(rating, title)
  #     end
  #   else rating > node.rating
  #     until @right.nil?
  #        @right.insert(rating, title)
  #       # @right = Node.new(rating, title)
  #     end
  #   end
  # end

binding.pry

end
# binding.pry
@node = Node.new(@rating, @title)
# binding.pry
