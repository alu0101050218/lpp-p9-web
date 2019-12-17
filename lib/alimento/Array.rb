# @title Modificacion de la clase Array ya existente
# @author Hernan Daniel Gonzalez Guanipa
class Array


	# @note Calculo del elemento maximo del array
	# @return [Object] Objeto del mayor dato entre los comparados
  def Max
    self.max{|a, b| a.huella_nutricional <=> b.huella_nutricional}
  end

	# @note Aumento de los precios segun el indice
	# @param precios Array con valores flotantes
	# @return [Array] Vector con los valores aumentados
  def high_prices(precios)
    huella_maxima = self.Max.huella_nutricional
    i = 0
    nuevos_precios = []
    self.each { |iter|
      if huella_maxima = 1
        nuevos_precios.push((precios[i] * 1.10).round(2))
      elsif huella_maxima = 2
        nuevos_precios.push((precios[i] * 1.25).round(2))
      else
        nuevos_precios.push((precios[i] * 1.50).round(2))
      end
      i += 1
    }
    return nuevos_precios
  end

end
