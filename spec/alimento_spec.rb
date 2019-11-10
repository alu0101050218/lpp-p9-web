require 'alimento'

RSpec.describe Alimento do
	
	before (:all) do
		@carne_vaca = Alimento::Alimento.new("Carne de vaca")
	end

	describe "# Nombre del alimento" do

		it "## Hay un metodo para obtener el nombre del alimento" do
			expect(@carne_vaca).to respond_to(:nombre)
		end

		it "## Hay un metodo para DAR un nombre al alimento" do
			expect(@carne_vaca.nombre).to eq("Carne de vaca")
		end

	end
end
