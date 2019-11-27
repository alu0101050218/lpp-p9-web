module Alimento
#TIENE 3 ATRIBUTOS, NOMBRE DEL PLATO, LISTA DE ALIMENTOS Y VECTOR DE CANTIDADES
	
	class Plato

		include Enumerable
		
		attr_reader :nombre, :lista, :cantidades
		
		def initialize(nombre, lista, cantidades)
			@nombre, @lista, @cantidades = nombre, lista, cantidades
		end
		
		def VCT
			kcal_array = @lista.collect{|iter| iter.value.valor_energetico(iter.value.valor_glucidos(iter.value.carbohidratos), iter.value.valor_proteinas(iter.value.proteinas), iter.value.valor_lipidos(iter.value.lipidos))}
			total_kcal_array = []
			i = 0
			while i < @cantidades.length do
				total_kcal_array.push(kcal_array[i] * (@cantidades[i]/100))
				i +=1
			end
			
		return (total_kcal_array.sum).round(1)
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
	
	end
end
