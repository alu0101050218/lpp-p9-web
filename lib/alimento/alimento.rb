module Alimento

	class Alimento
		
		attr_reader :nombre, :proteinas, :carbohidratos, :lipidos

		def initialize (nombre, proteinas, carbohidratos, lipidos)
			@nombre, @proteinas, @carbohidratos, @lipidos  = nombre, proteinas, carbohidratos, lipidos
		end

	end

end
