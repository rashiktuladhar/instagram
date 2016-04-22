class PicsController < ApplicationController


	def index
	end

	def new
		@pic = Pic.new
	end

	def create
		@pic = Pic.new(pci_params)
	end

	
	# private methods
	private

	def pic_params
		params.require(:pic).permit(:title, :description)
	end


end
