require 'alimento'

RSpec.describe Alimento do
	
	before (:all) do
		@carne_vaca = Alimento::Alimento.new("Carne de vaca", 21.1)
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
	
		it "## Hay un metodo para obtener las proteinas del alimento" do
			expect(@carne_vaca).to respond_to(:proteinas)
		end

	end

end
