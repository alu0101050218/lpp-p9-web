
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
	end

	describe "# Nombre del alimento" do

		it "## Hay un metodo para OBTENER el nombre del alimento" do
			expect(@carne_vaca).to respond_to(:nombre)
		end

		it "## Hay un metodo para DAR un nombre al alimento" do
			expect(@carne_vaca.nombre).to eq("Carne de vaca")
		end

	end


	describe "# Artributo de proteina" do
	
		it "## Hay un metodo para OBTENER las proteinas del alimento" do
			expect(@carne_vaca).to respond_to(:proteinas)
		end

		it "## Hay un metodo para DAR el valor a las proteinas" do
			expect(@carne_vaca.proteinas).to eq(21.1)
		end

	end

	describe "# Atributo de carbohidratos" do
	
		it "## Hay un metodo para OBTENER los carbohidratos" do
			expect(@carne_vaca).to respond_to(:carbohidratos)	
		end

		it "## Hay un metodo para DAR los carbohidratos" do
			expect(@carne_vaca.carbohidratos).to eq(0)
		end
	
	end

	describe "# Atributo de Lipidos" do
	
		it "## Hay un metodo para OBTENER los lipidos" do
			expect(@carne_vaca).to respond_to(:lipidos)
		end

		it "## Hay un metodo para DAR los lipidos" do
			expect(@carne_vaca.lipidos).to eq(3.1)
		end

	end

	describe "#Atributo de gei" do
		
		it "## Hay un metodo para OBTENER el gei" do
			expect(@carne_vaca).to respond_to(:gei)
		end

		it "## Hay un metodo para DAR el gei" do
			expect(@carne_vaca.gei).to eq(50)
		end
	
	end
	
	describe "#Atributo del terreno" do
	
		it "## Hay un metodo para OBTENER el terreno" do
			expect(@carne_vaca).to respond_to(:terreno)
		end

		it "## Hay un metodo para DAR el terreno" do
			expect(@carne_vaca.terreno).to eq(164)
		end

	end

	describe "# Valor energetico" do

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

	describe "#Impactos ambientales segun la dieta" do
		
		it "## Hay un metodo para calcular el impacto ambiental en la dieta" do	
			expect(@menu.impacto_ambiental(@hombre, @cuantos_hombre)).to eq(11.9)
			expect(@menu.impacto_ambiental(@mujer, @cuantos_mujer)).to eq(16.3)
		end
	
	end
		
	describe "#Uso de terreno de los alimentos de la dieta" do
			
		it "## Hay un metodo para calcular el uso del terreno" do
			expect(@menu.uso_terreno(@hombre, @cuantos_hombre)).to eq(37.6)	
			expect(@menu.uso_terreno(@mujero, @cuantos_mujer)).to eq(59.1)
		end

	end

end
