module Alimento

	class Alimento
		
		attr_reader :nombre, :proteinas

		def initialize (nombre, proteinas)
			@nombre, @proteinas = nombre, proteinas
		end

	end

end
