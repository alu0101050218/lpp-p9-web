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
		
		def insert_sundry (value_array)
			i = 0
			while i < value_array.lenght do
				insert_head(value_array[i])
				i += 1
			end
		end
		
		def extract_head
			actual_head = @head
			new_head = actual_head.prev
			actual_head.prev = nil
			new_head.next = nil
			return new_head
		end
		
		def extract_tail
			actual_tail = @tail
			new_tail = actual_tail.next
			actual_tail.next = nil
			new_tail.prev = nil
			return new_tail
		end

	end

end
