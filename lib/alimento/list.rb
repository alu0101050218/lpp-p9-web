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
			

	end

end
