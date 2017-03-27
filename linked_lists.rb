class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(value)
    @head = Node.new(value, @head)
  end

  def prepend(value)
    tmp = @head
    while tmp.next_node != nil
      tmp = tmp.next_node
    end
    tmp.next_node = Node.new(value)
  end

  def size
    counter = 0
    tmp = @head
    while tmp != nil
      counter += 1
      tmp = tmp.next_node
    end
    counter
  end

  def to_s
    str = ""
    tmp = @head
    while tmp != nil
      str = str + "( #{tmp.value} ) -> "
      tmp = tmp.next_node
    end
    str += "nil"
    str
  end
end

class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

linked_list = LinkedList.new
puts ""
p linked_list
puts ""
p linked_list.to_s
puts ""
p linked_list.size
puts ""
p linked_list.head
puts "#" * 50
5.times { |i| linked_list.append("data#{i}") }
p linked_list
puts ""
p linked_list.to_s
puts ""
p linked_list.size
puts ""
p linked_list.head
puts "#" * 50
5.times { |i| linked_list.prepend("prepended_data#{i}") }
p linked_list
puts ""
p linked_list.to_s
puts ""
p linked_list.size
puts ""
p linked_list.head
