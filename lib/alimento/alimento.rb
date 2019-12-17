# @author Hernan Daniel Gonzalez Guanipa

module Alimento

	class Alimento
		
		include Comparable

		attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

		# @note Constructor de la clase
		# @param nombre Identificador del alimento
		# @param proteinas Cantidad de proteinas en gramos
		# @param carbohidratos Cantida de carbohidratos en gramos
		# @param lipidos Cantidad e lipidos en gramos
		# @param gei Cantidad de emisiones de gases
		# @param terreno Terreno ocupado por la frabricacaion de cada alimento
		def initialize (nombre, proteinas, carbohidratos, lipidos, gei, terreno)
			@nombre, @proteinas, @carbohidratos, @lipidos, @gei, @terreno  = nombre, proteinas, carbohidratos, lipidos, gei, terreno
		end

		# @note Comparador de alimentos
		# @param other Alimento con el que comparar
		# @return [Alimento] Objeto que sea mayor 
		def <=>(other)
			valor_energetico(valor_glucidos(carbohidratos), valor_proteinas(proteinas), valor_lipidos(lipidos)) <=> other.valor_energetico(other.valor_glucidos(other.carbohidratos), other.valor_proteinas(other.proteinas), other.valor_lipidos(other.lipidos))
		end

		# @note Conversion de los carbohidratos a kcal
		# @param carbohidrato Cantidad de carbohidratos en gramos
		# @return [Float] El cambio a kcal
		def valor_glucidos (carbohidrato)
			return (carbohidrato*4).round(1)
		end
		

		# @note Conversion de las proteinnas en kcal
		# @param proteinas Cantidad de proteinas en gramos
		# @return [Float] El cambio a kcal
		def valor_proteinas (proteinas)
			return (proteinas*4).round(1)
		end
		

		# @note Conversion de los lipidos en kcal
		# @param lipidos Cantida dde proteinas en gramos
		# @return [Float] El cambio a kcal
		def valor_lipidos (lipidos)
			return (lipidos*9).round(1)
		end
		

		# @note Calculo de la energia del alimento
		# @param valor_glucidos Kcal de los carbohidratos
		# @param valor_proteinas  Kcal de las proteinas
		# @param valor_lipidos Kcal de los lipidos
		# @return [Float] Valor energetico del alimento
		def valor_energetico (valor_glucidos, valor_proteinas, valor_lipidos)
			return (valor_glucidos + valor_proteinas + valor_lipidos).round(1)
		end
		

		# @note	Calculo de emisiones de gases de un conjunto de alimentos
		# @param persona Vector de conjunto de alimentos
		# @param cuantos_persona Vector de cantidad de cada alimento
		# @return [Float] Emisiones del conjunto de alimntos y sus respectivas cantidades
		def impacto_ambiental(persona, cuantos_persona)
			i = 0
			impacto_amb = 0
			while i < persona.length do
				impacto_amb += persona[i].gei * cuantos_persona[i]
				i += 1
			end
			return (impacto_amb).round(1)
		end


		# @note Calculo del terreno ocupado por un conjunto de alimentos
		# @param persona Vector de conjunto de alimentos
		# @param cuantos_persona Vector de cantidad de cada alimento
		# @return [Float] Terreno ocupado por todos los alimentos y sus cantidades
		def uso_terreno(persona, cuantos_persona)
			i = 0
			uso_ter = 0
			while i < persona.length do
				uso_ter += persona[i].terreno * cuantos_persona[i]
				i += 1
			end
			return (uso_ter).round(1)
		end
	

		# @note Calculo de emisiones en un dia con una lista de alimentos
		# @param list Lista de alimentos doblemente enlazada
		# @return [Float] Suma de las emisiones (gei) de todos los alimentos de la lista
		def emision_lista_dia(list)
			actual = list.tail
			sum_emision = 0
			while actual.next != nil do
				sum_emision += actual.value.gei
				actual = actual.next
			end
			if actual = list.head
				sum_emision += list.head.value.gei
			end
			return sum_emision.round(2)
		end
		
		# @note Calculo de las emisiones en un año con una lista de alimentos
		# @param list Lista de alimentos doblemente enlazada
		# @return [Float] Suma de las emisiones por un año
		def emision_lista_anual(list)
			return (emision_lista_dia(list) * 365).round(2)
		end
	
		# @note Calculo del terreno ocupado por una lista de alimentos
		# @param list Lista de alimetos doblemente enlazada
		# @return [Float] Terreno total ocupado por la lista de alimentos
		def uso_lista_terreno(list)
			actual = list.tail
			sum_emision = 0
			while actual.next != nil do
				sum_emision += actual.value.terreno
				actual = actual.next
			end
			if actual = list.head
				sum_emision += list.head.value.terreno
			end
			return sum_emision.round(2)
		end
		

	end

end
