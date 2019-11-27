RSpec.describe Alimento do
	
	before (:all) do
		@carne_vaca = Alimento::Alimento.new("Carne de vaca", 21.1,0, 3.1, 50, 164)
		@carne_cordero = Alimento::Alimento.new("Carne de cordero", 18, 0, 17, 20, 185)
		@camarones = Alimento::Alimento.new("Camarones (pisifactorias)", 17.6, 1.5, 0.6, 18, 2)
		@chocolate = Alimento::Alimento.new("Chocolate", 5.3, 47, 30, 2.3, 3.4)
		@salmon = Alimento::Alimento.new("Salmon (pisifactoria)", 19.9, 0, 13.6, 6, 3.7)
		@cerdo = Alimento::Alimento.new("Cerdo", 21.5, 0, 6.3, 7.6, 11)
		@pollo = Alimento::Alimento.new("Pollo", 20.6, 0, 5.6, 5.7, 7.1)
		@queso = Alimento::Alimento.new("Queso", 25, 1.3, 33, 11, 41)
		@cerveza = Alimento::Alimento.new("Cerveza", 0.5, 3.6, 0, 0.24, 0.22)
		@leche = Alimento::Alimento.new("Leche de vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
		@huevo = Alimento::Alimento.new("Huevo", 13, 1.1, 11, 4.2, 5.7)
		@cafe = Alimento::Alimento.new("Cafe", 0.1, 0, 0, 0.4, 0.3)
		@tofu = Alimento::Alimento.new("Tofu", 8, 1.9, 4.8, 2, 2.2)
		@lenteja = Alimento::Alimento.new("Lentejas", 23.5, 53, 1.4, 0.4, 3.4)
		@nuez = Alimento::Alimento.new("Nuez", 20, 21, 54, 0.3, 7.9)
		
		@menu= Alimento::Alimento.new("Menu", 0, 0, 0, 0, 0)
		@hombre = [@salmon, @chocolate, @nuez, @lenteja]
		@cuantos_hombre = [1, 2, 3, 1]
		@mujer = [@chocolate, @lenteja, @queso, @nuez]
		@cuantos_mujer = [2, 1, 1, 1]
		
		
		@nodo_vaca = Alimento::Node.new(@carne_vaca, nil, nil)
		@lista = Alimento::List.new(@carne_vaca)
		
		@española = Alimento::List.new(@chocolate)
		@menu_español = [@chocolate, @lenteja, @lenteja, @lenteja, @nuez]
		
		@vasca = Alimento::List.new(@lenteja)
		@menu_vasco = [ @lenteja, @lenteja, @lenteja, @chocolate, @chocolate, @chocolate ]
		
		@vegetaria = Alimento::List.new(@queso)
		@menu_vegetario = [ @chocolate, @chocolate, @lenteja, @lenteja, @lenteja, @lenteja, @leche, @leche, @huevo ]
		
		@vegetaliana = Alimento::List.new(@chocolate)
		@menu_vegetaliano = [ @chocolate, @lenteja, @lenteja, @lenteja, @nuez ]
		
		@locura_carne = Alimento::List.new(@carne_cordero)
		@menu_locura = [ @carne_cordero, @carne_cordero, @salmon, @salmon, @salmon, @lenteja, @lenteja, @lenteja ]


		@española.insert_sundry(@menu_español)
		@vasca.insert_sundry(@menu_vasco)
		@vegetaria.insert_sundry(@menu_vegetario)
		@vegetaliana.insert_sundry(@menu_vegetaliano)
		@locura_carne.insert_sundry(@menu_locura)


		@lista_principal = Alimento::List.new(@carne_vaca)
		@lista_principal.insert_head(@queso)
		@cantidades_principal = [ 300, 100 ]
		@plato_principal = Alimento::Plato.new("Vaca con salsa de queso", @lista_principal, @cantidades_principal) 
		
		@lista_secundaria = Alimento::List.new(@pollo)
		@menu_secundario = [@nuez, @tofu]
		@lista_secundaria.insert_sundry(@menu_secundario)
		@cantidades_secundaria = [100, 400, 200]
		@plato_secundario = Alimento::Plato.new("Pollo con nueces y tofu", @lista_secundaria, @cantidades_secundaria)
	
		@lista_postre = Alimento::List.new(@chocolate)
		@lista_postre.insert_head(@leche)
		@cantidades_postre = [50, 100]
		@plato_postre = Alimento::Plato.new("Batido de chocolate", @lista_postre, @cantidades_postre)
		
		@ambiental_principal = Alimento::PlatoAmbiental.new("Vaca con salsa de queso", @lista_principal, @cantidades_principal)
		@ambiental_secundario = Alimento::PlatoAmbiental.new("Pollo con nueces y tofu", @lista_secundaria, @cantidades_secundaria)
	end

	context "# Nombre del alimento" do

		it "## Hay un metodo para OBTENER el nombre del alimento" do
			expect(@carne_vaca).to respond_to(:nombre)
		end

		it "## Hay un metodo para DAR un nombre al alimento" do
			expect(@carne_vaca.nombre).to eq("Carne de vaca")
		end

	end


	context "# Artributo de proteina" do
	
		it "## Hay un metodo para OBTENER las proteinas del alimento" do
			expect(@carne_vaca).to respond_to(:proteinas)
		end

		it "## Hay un metodo para DAR el valor a las proteinas" do
			expect(@carne_vaca.proteinas).to eq(21.1)
		end

	end

	context "# Atributo de carbohidratos" do
	
		it "## Hay un metodo para OBTENER los carbohidratos" do
			expect(@carne_vaca).to respond_to(:carbohidratos)	
		end

		it "## Hay un metodo para DAR los carbohidratos" do
			expect(@carne_vaca.carbohidratos).to eq(0)
		end
	
	end

	context "# Atributo de Lipidos" do
	
		it "## Hay un metodo para OBTENER los lipidos" do
			expect(@carne_vaca).to respond_to(:lipidos)
		end

		it "## Hay un metodo para DAR los lipidos" do
			expect(@carne_vaca.lipidos).to eq(3.1)
		end

	end

	context "#Atributo de gei" do
		
		it "## Hay un metodo para OBTENER el gei" do
			expect(@carne_vaca).to respond_to(:gei)
		end

		it "## Hay un metodo para DAR el gei" do
			expect(@carne_vaca.gei).to eq(50)
		end
	
	end
	
	context "#Atributo del terreno" do
	
		it "## Hay un metodo para OBTENER el terreno" do
			expect(@carne_vaca).to respond_to(:terreno)
		end

		it "## Hay un metodo para DAR el terreno" do
			expect(@carne_vaca.terreno).to eq(164)
		end

	end

	context "# Valor energetico" do

		it "## Hay un metodo para calcular las kcal de los glucidos" do
			expect(@carne_vaca.valor_glucidos(0.0)).to eq(0.0)
		end

		it "## Hay un metodo para calcular las kcal de las proteinas" do
			expect(@carne_vaca.valor_proteinas(21.1)).to eq(84.4)
		end
		
		it "## Hay un metodo para calcular las kcal de los lipidos" do
			expect(@carne_vaca.valor_lipidos(3.1)).to eq(27.9)
		end
		
		it "## Hay un metodo para calcular el valor energetico total" do
			expect(@carne_vaca.valor_energetico(@carne_vaca.valor_glucidos(0.0), @carne_vaca.valor_proteinas(21.1), @carne_vaca.valor_lipidos(3.1))).to eq(112.3)
		end

	end

	context "#Impactos ambientales segun la dieta" do
		
		it "## Hay un metodo para calcular el impacto ambiental en la dieta" do	
			expect(@menu.impacto_ambiental(@hombre, @cuantos_hombre)).to eq(11.9)
			expect(@menu.impacto_ambiental(@mujer, @cuantos_mujer)).to eq(16.3)
		end
	
	end
		
	context "# Uso de terreno de los alimentos de la dieta" do
			
		it "## Hay un metodo para calcular el uso del terreno" do
			expect(@menu.uso_terreno(@hombre, @cuantos_hombre)).to eq(37.6)	
			expect(@menu.uso_terreno(@mujer, @cuantos_mujer)).to eq(59.1)
		end

	end



	##LISTA
	context "# Hay metodos para obtener los datos de cada nodo" do
		
		it "## Hay un metodo para coger el valor de un nodo" do
			expect(@nodo_vaca.value.nombre).to eq("Carne de vaca")	
		end

	end

	context "# Hay metodos para obtener los datos de los nodos de la lista" do
		
		it "## Hay un metodo para obtener el HEAD de la lista" do
			expect(@lista.head.value.nombre).to eq("Carne de vaca")
		end
		
		it "## Hay un metodo para obtener el TAIL de a lista" do
			expect(@lista.tail.value.nombre).to eq("Carne de vaca")
		end
		
	end

	context "# Hay metodos para insertar los nodos en la lista" do
		
		it "## Hay un metodo para insertar un elemento" do
			expect(@lista).to respond_to(:insert_head)
		end
		
		it "## Hau un metodo para insertar mas de un elemento en la lista" do
			expect(@lista).to respond_to(:insert_sundry)
		end
		
	end

	context "# Hay metodos para extraer nodos de la lista" do
	
		it "## Hay un metodo para extraer el primer elemento de la lista" do
			expect(@lista).to respond_to(:extract_head)
		end
		
		it "## Hay un metodo para extraer el ultimo elemento de la lista" do
			expect(@lista).to respond_to(:extract_tail)
		end
	end
	
	context "# Hay metodos para obtener las emisiones y metros de cada dieta" do
		it "## Hay un metodo para calcular las emisiones diarias de efecto invernadero" do
			expect(@menu.emision_lista_dia(@española)).to eq(6.1)
			expect(@menu.emision_lista_dia(@vasca)).to eq(8.5)
			expect(@menu.emision_lista_dia(@vegetaria)).to eq(27.8)
			expect(@menu.emision_lista_dia(@vegetaliana)).to eq(6.1)
			expect(@menu.emision_lista_dia(@locura_carne)).to eq(79.2)
		end

		it "## Hay un metodo para calcular las emisiones anuales de efecto invernadero" do
			expect(@menu.emision_lista_anual(@española)).to eq(2226.5)
			expect(@menu.emision_lista_anual(@vasca)).to eq(3102.5)
			expect(@menu.emision_lista_anual(@vegetaria)).to eq(10147)
			expect(@menu.emision_lista_anual(@vegetaliana)).to eq(2226.5)
			expect(@menu.emision_lista_anual(@locura_carne)).to eq(28908)
		end

		it "## Hay un metodo para calcular el terreno de las dietas" do	
			expect(@menu.uso_lista_terreno(@española)).to eq(24.9)
			expect(@menu.uso_lista_terreno(@vasca)).to eq(23.8)
			expect(@menu.uso_lista_terreno(@vegetaria)).to eq(84.9)
			expect(@menu.uso_lista_terreno(@vegetaliana)).to eq(24.9)
			expect(@menu.uso_lista_terreno(@locura_carne)).to eq(576.3)
		end
	end

	context "# Hay metodos de mixins" do
		it "## Hay un metodo para comparar alimentos" do
			expect(@salmon < @chocolate).to eq(true)
		end

		it "## Se pueden comparar atributos de los alimentos" do
			expect(@salmon.gei > @chocolate.gei).to eq(true)
			expect(@salmon.terreno > @chocolate.terreno).to eq(true)
		end
	end

	context "# Hay metodos para enumerar las listas" do
		it "## Hay un metodo para saber el tamaño" do
			expect(@española.count).to eq(6)
		end

		it "## Se puede hacer el collect de las listas" do
			expect(@española.collect{|iter| iter.value.proteinas > 21 }).to eq([false,false,true,true,true,false])
			expect(@vasca.collect{|iter| iter.value.lipidos == 1.4}).to eq([true,true,true,true,false,false,false])
		end

		it "## Se puede hacer el select de las listas" do
			array = @española.select{|iter| iter.value.nombre == "Lentejas"}
			names_array = []
			array.each{|iter| names_array.push(iter.value.nombre)}
			expect(names_array).to eq(["Lentejas","Lentejas","Lentejas"])
		end

		it "## Se puede saber que alimento tiene el terreno maximo" do
			node = @española.max{|a, b| a.value.terreno <=> b.value.terreno} 
			expect(node.value.nombre).to eq("Nuez")
		end

		it "## Se puede saber que alimento tiene el terreno minimo" do
			node = @locura_carne.min{|a, b| a.value.terreno <=> b.value.terreno} 
			expect(node.value.nombre).to eq("Lentejas")
		end
			
		it "## Se puede ordenar cada lista por su gei" do
			array = @vegetaria.sort{|a, b| a.value.gei <=> b.value.gei}
			names_array = []
			array.each{|iter| names_array.push(iter.value.nombre)}
			expect(names_array).to eq(["Lentejas", "Lentejas", "Lentejas", "Lentejas", "Chocolate", "Chocolate", "Leche de vaca", "Leche de vaca", "Huevo", "Queso"])
		end
	end

	context "# Se pueden obtener datos de los platos" do
		it "## Se puede obtener el nombre de un plato" do
			expect(@plato_principal.nombre).to eq("Vaca con salsa de queso")
		end

		it "## Se puede obtener un conjunto de alimentos de cada plato" do
			array = @plato_principal.lista
			array.collect{|iter| iter.value.nombre}
			names_array = []
			array.each{|iter| names_array.push(iter.value.nombre)}
			expect(names_array).to eq(["Carne de vaca", "Queso"])
		end

		it "## Se puede obtener las cantidades de cada plato" do
			expect(@plato_principal.cantidades).to eq([300, 100])
		end
		
		it "## Se puede obtener el total en kcal de cada plato" do
			expect(@plato_principal.VCT).to eq(739.1)
		end

		it "## Se puede obtener el porcentaje de proteinas de cada plato" do
			expect(@plato_principal.porcentaje_proteinas).to eq(47.8)
		end
		
		it "## Se puede obtener el porcentaje de carbohidratos de cada plato" do
			expect(@plato_principal.porcentaje_carbohidratos).to eq(0.7)
		end

		it "## Se puede obtener el porcentaje de lipidos de cada plato" do
			expect(@plato_principal.porcentaje_lipidos).to eq(51.5)
		end
		
		it "## Se puede obtener el formateo del plato" do
			expect(@plato_principal.to_s).to eq("Plato: Vaca con salsa de queso, Componentes: 'Carne de vaca (300g)' 'Queso (100g)' ")
		end
	end

	context "# Hay pruebas para la heredada de plato" do
		it "## Hay un metodo para obtener las emisiones de gases de cada plato" do
			expect(@ambiental_principal.emisiones).to eq(161)
		end

		it "## Hay un metodo para obtener el terreno de cada plato" do
			expect(@ambiental_principal.terreno).to eq(533)
		end

		it "## Hay un metodo para obtener el formateo de la eficiencia energetica de cada plato" do
			expect(@ambiental_principal.to_s).to eq("La eficiencia energetica de 'Vaca con salsa de queso' es: 739.1")
		end
	end

	context "# Hay pruebas para saber si un objeto pertenece a una jerarquia" do
		it "## Hay metodos para comprobar la clase de un objeto"do
			expect(@ambiental_princial.is_a?BasicObject).to eq(true)
			expect(@ambiental_principal.is_a?Alimento::Plato).to eq(true)
			expect(@ambiental_principal.is_a?Alimento::PlatoAmbiental).to eq(true)
			expect(@ambiental_principal.is_a?Alimento).to eq(false)
		end

		it "## Hay metodos para comprobar el tipo de un objeto" do
			expect(@ambiental_principal.instance_of?Alimento::PlatoAmbiental).to eq(true)
			expect(@ambiental_principal.instance_of?Alimento::Plato).to eq(false)
			expect(@española.instance_of?Alimento::Plato).to eq(false)
			expect(@española.instance_of?Alimento::List).to eq(true)
		end
	end

	context "# Hay metodos para comparar objetos de herencia" do
	
	it "## Hay una manera de comparar la eficiencia energetica" do
		expect(@ambiental_principal > @ambiental_secundario).to eq(true)
		expect(@plato_postre < @plato_principal).to eq(true)
		expect(@plato_postre == @plato_postre).to eq(true)
		expect(@ambiental_principal < @ambiental_secundario).to eq(false)
	end
	
	end
end
