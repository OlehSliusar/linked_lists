class LinkedList

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
    tmp.next_node = Node.new(value, nil)
  end

  def to_s
    str = ""
    tmp = @head
    while tmp.next_node != nil
      str = str + "( #{tmp.value} ) -> "
      tmp = tmp.next_node
    end
    str += "nil"
    str
  end
end

class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

linked_list = LinkedList.new
5.times { |i| linked_list.append("data#{i}") }
5.times { |i| linked_list.prepend("prepended_data#{i}") }
p linked_list
p linked_list.to_s
