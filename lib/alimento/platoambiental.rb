# @author Hernan Daniel Gonzalez Guanipa
module Alimento

	class PlatoAmbiental < Plato

		include Comparable
		include Enumerable

		attr_reader :emisiones, :terreno


		# @note Constructor de la clase que llama al de Plato y al propio
		# @param nombre Identificador del plato
		# @param lista Conjunto de alimentos del plato
		# @param cantidades Vector de cantidades de cada alimento
		def initialize(nombre, lista, cantidades)
			super(nombre, lista, cantidades)
			@emisiones = emisiones_total
			@terreno = terreno_total
		end

			# @note Comparador de las emisiones ambientales totales de cada plato
			# @param otro Objeto del mismo tipo con el cual comparar
			# @return [PlatoAmbiental] Plato con mayores emisiones
		def <=>(otro)
			emisiones_total <=> otro.emisiones_total
		end


		# @note Calculo de las emisiones de gases del plato
		# @return [Float] Emisiones totales del plato
		def emisiones_total
			total_emisiones = 0
			i = 0
			@lista.each{|iter|
				total_emisiones += (iter.value.gei * @cantidades[i]/100)
				i += 1
			}
			return total_emisiones.round(1)
		end


		# @note Calculo del terreno ocupado por los alimentos del plato
		# @return [Float] Terreno total de los alimentos del plato
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



		# @note Calculo del indice de huella nutricional del plato
		# @return [Integer] Indice resultante
		def huella_energia
			if 	VCT() < 670
				return 1
			elsif (670..830) === VCT()
				return 2
			else
				return 3
			end
		end

	
		# @note Calculo de la huella de carbono total del plato
		# @return [Integer] Indice segun la huella de carbono del plato
		def huella_carbono
			emi_total_dia = ((emisiones_total()*1000)/365)
			if 	emi_total_dia < 800
				return 1
			elsif (800..1200) === emi_total_dia
				return 2
			else
				return 3
			end
		end

		
		# @note Calculo del indice medio entre todos los del plato
		# @return [Integer] Indice de media de los demas
		def huella_nutricional
			return ((huella_carbono + huella_energia) / 2).floor
		end
		

		# @note Formateo del plato
		# @return [String] Datos del plato que son el nombre y energia total
		def to_s
			string = "La eficiencia energetica de '#{nombre}' es: #{VCT()}"
			return string
		end
	end

end
