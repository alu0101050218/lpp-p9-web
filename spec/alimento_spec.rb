require 'alimento'

RSpec.describe Alimento do
	
	before (:all) do
		@carne_vaca = Alimento::Alimento.new("Carne de vaca", 21.1,0, 3.1, 50, 164)
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

end
