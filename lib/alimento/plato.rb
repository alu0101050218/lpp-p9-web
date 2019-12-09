module Alimento

	class Plato

		include Enumerable
		include Comparable

		attr_reader :nombre, :lista, :cantidades

		def initialize(nombre, lista, cantidades)
			@nombre, @lista, @cantidades = nombre, lista, cantidades
		end


		def <=>(otro)
			VCT() <=> otro.VCT
		end

		def VCT
			total_kcal = 0
			i = 0
			@lista.each{ |iter|
				total_kcal += (iter.value.valor_energetico(iter.value.valor_glucidos(iter.value.carbohidratos), iter.value.valor_proteinas(iter.value.proteinas), iter.value.valor_lipidos(iter.value.lipidos)) * @cantidades[i]/100)
				i += 1
			}
			return total_kcal.round(1)
		end

		def porcentaje_proteinas
			total = VCT()
			proteinas =
			i = 0
				lista.each{|iter|
					proteinas += iter.value.valor_proteinas(iter.value.proteinas * @cantidades[i]/100)
					i += 1}
				return ((proteinas * 100) / total).round(1)
			end


		def porcentaje_carbohidratos
			total = VCT()
			carbohidratos =
			i = 0
				lista.each{|iter|
					carbohidratos += iter.value.valor_glucidos(iter.value.carbohidratos * @cantidades[i]/100)
					i += 1}
				return ((carbohidratos * 100) / total).round(1)
			end

		def porcentaje_lipidos
			total = VCT()
			lipidos =
			i = 0
				lista.each{|iter|
					lipidos += iter.value.valor_lipidos(iter.value.lipidos * @cantidades[i]/100)
					i += 1}
				return ((lipidos * 100) / total).round(1)
			end

		def to_s
			string = "Plato: #{nombre}, Componentes: "
			i = 0
			lista.collect{|iter|
				string += "'#{iter.value.nombre} (#{cantidades[i]}g)' "
				i += 1 }

			return string
		end

	end
end
