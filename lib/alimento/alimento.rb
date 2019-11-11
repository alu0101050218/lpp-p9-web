module Alimento

	class Alimento
		
		attr_reader :nombre, :proteinas, :carbohidratos

		def initialize (nombre, proteinas, carbohidratos)
			@nombre, @proteinas, @carbohidratos  = nombre, proteinas, carbohidratos
		end

	end

end
