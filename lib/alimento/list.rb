module Alimento

	Node = Struct.new(:value, :next, :prev)

	class List
		
		attr_reader :head, :tail

		def initialize (value)
			@head = Node.new(value, nil, nil) 
			@tail = @head
		end

		def insert_head (value)
			actual_head = @head
			new_head = Node.new(value, nil,actual_head)
			actual_head.next = new_head
		end


	end

end
