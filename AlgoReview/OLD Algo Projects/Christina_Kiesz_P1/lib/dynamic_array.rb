require_relative "static_array"

class DynamicArray
  attr_reader :length

  def initialize
    @length = 0
    @index = 0
    @array = StaticArray.new(8)
  end

  # O(1)
  def [](index)
    raise "index out of bounds" if @length == 0
    
    
  end

  # O(1)
  def []=(index, value)
  end

  # O(1)
  def pop
  end

  # O(1) ammortized; O(n) worst case. Variable because of the possible
  # resize.
  def push(val)
  end

  # O(n): has to shift over all the elements.
  def shift
  end

  # O(n): has to shift over all the elements.
  def unshift(val)
  end

  protected
  attr_accessor :capacity, :store
  attr_writer :length

  def check_index(index)
  end

  # O(n): has to copy over all the elements to the new store.
  def resize!
  end
end
