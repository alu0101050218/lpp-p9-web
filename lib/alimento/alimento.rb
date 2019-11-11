module Alimento

	class Alimento
		
		attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei

		def initialize (nombre, proteinas, carbohidratos, lipidos, gei)
			@nombre, @proteinas, @carbohidratos, @lipidos, @gei  = nombre, proteinas, carbohidratos, lipidos, gei
		end

	end

end
