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
		
		def valor_energetico (valor_glucidos, valor_proteinas, valor_lipidos)
			return (valor_glucidos + valor_proteinas + valor_lipidos).round(1)
		end
		
		def impacto_ambiental(persona, cuantos_persona)
			i = 0
			impacto_amb = 0
			while i < persona.length do
				impacto_amb += persona[i].gei * cuantos_persona[i]
				i += 1
			end
			return (impacto_amb).round(1)


			#persona.each do |i :persona|
			#	impacto_amb += persona[i].gei * cuantos_persona[i]
			#end
			#return impacto_amb.round(1)
		end

	end

end
