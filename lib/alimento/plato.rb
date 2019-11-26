module Alimento
#TIENE 3 ATRIBUTOS, NOMBRE DEL PLATO, LISTA DE ALIMENTOS Y VECTOR DE CANTIDADES
	
	class Plato

		include Enumerable
		
		attr_reader :nombre, :lista, :cantidades
		
		def initialize(nombre, lista, cantidades)
			@nombre, @lista, @cantidades = nombre, lista, cantidades
		end

	end
end
