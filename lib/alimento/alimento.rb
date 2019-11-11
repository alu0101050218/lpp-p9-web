module Alimento

	class Alimento
		
		attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

		def initialize (nombre, proteinas, carbohidratos, lipidos, gei, terreno)
			@nombre, @proteinas, @carbohidratos, @lipidos, @gei, @terreno  = nombre, proteinas, carbohidratos, lipidos, gei, terreno
		end

		def valor_glucidos (carbohidrato)
			return (carbohidrato*4).round(1)
		end
		
		def valor_proteinas (proteinas)
			return (proteinas*4).round(1)
		end
		
		def valor_lipidos (lipidos)
			return (lipidos*9).round(1)
		end

	end

end
