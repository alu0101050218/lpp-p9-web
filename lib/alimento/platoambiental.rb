module Alimento

	class PlatoAmbiental < Plato

		include Comparable

		attr_reader :emisiones, :terreno

		def initialize(nombre, lista, cantidades)
			super(nombre, lista, cantidades)
			@emisiones = emisiones_total
			@terreno = terreno_total
		end


			def <=>(otro)
				emisiones_total <=> otro.emisiones_total
			end

		def emisiones_total

			total_emisiones = 0
			i = 0
			@lista.each{|iter|
				total_emisiones += (iter.value.gei * @cantidades[i]/100)
				i += 1
			}
			return total_emisiones.round(1)
		end


		def terreno_total
			ter_array = @lista.collect{|iter| iter.value.terreno}
			total_terreno = []
			i = 0
			while i < @cantidades.length do
				total_terreno.push(ter_array[i] * (@cantidades[i]/100))
				i +=1
			end
			return (total_terreno.sum).round(1)
		end
		
		def huella_energia
			if 	VCT() < 670
				return 1
			elsif (670..820) === VCT()
				return 2
			else
				return 3
			end
		end

		def to_s
			string = "La eficiencia energetica de '#{nombre}' es: #{VCT()}"
			return string
		end
	end

end
