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
			gei_array = @lista.collect{|iter| iter.value.gei}
			total_emisiones = []
			i = 0
			while i < @cantidades.length do
				total_emisiones.push(gei_array[i] * (@cantidades[i]/100))
				i +=1
			end
			return (total_emisiones.sum).round(1)
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


		def to_s
			string = "La eficiencia energetica de '#{nombre}' es: #{VCT()}"
			return string
		end
	end

end
