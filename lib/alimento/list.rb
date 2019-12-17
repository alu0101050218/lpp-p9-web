# @author Hernan Daniel Gonzalez Guanipa
module Alimento
	
	# @note Estructura de datos correspondiente a un nodo
	Node = Struct.new(:value, :next, :prev)

	class List
	
		include Enumerable

		attr_reader :head, :tail
		
		# @note Constructor de la clase
		# @param value Contenido de un nodo
		def initialize (value)
			@head = Node.new(value, nil, nil) 
			@tail = @head
		end

	
		# @note Recorrer la lista
		def each
			return nil unless block_given?
			actual = self.tail
			while actual
				yield actual
				actual = actual.next
			end
		end
	

		# @note Insertar elemento en la cabeza de la lista
		# @param value Contenido del nodo a insertar
		def insert_head(value)
			actual_head = @head
			new_head = Node.new(value, nil,actual_head)
			actual_head.next = new_head
			@head = new_head
		end
		

		# @note Insertar elemento por la cola de la lista
		# @param value Contenido del nodo a insertar
		def insert_tail(value)
			actual_tail = @tail
			new_tail = Node.new(value, actual_tail, nil)
			actual_tail.prev = new_tail
			@tail = new_tail
		end


		# @note Insertar varios elementos en la lista
		# @param value_array Vector de elementos a insertar en la lista
		def insert_sundry(value_array)
			i = 0
			while i < value_array.length do
				insert_head(value_array[i])
				i += 1
			end
		end
		


		# @note Extraer el elemento en la cabeza de la lista
		# @return [Node] Nodo de la lista extraido
		def extract_head
			actual_head = @head
			new_head = actual_head.prev
			actual_head.prev = nil
			new_head.next = nil
			return new_head
		end
		

		# @note Extraer elemento en la cabeza de la lista
		# @return [Node] Nodo de la lista extraido
		def extract_tail
			actual_tail = @tail
			new_tail = actual_tail.next
			actual_tail.next = nil
			new_tail.prev = nil
			return new_tail
		end

	end

end
