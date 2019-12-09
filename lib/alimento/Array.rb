class Array

  def Max
    self.max{|a, b| a.huella_nutricional <=> b.huella_nutricional}
  end

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
