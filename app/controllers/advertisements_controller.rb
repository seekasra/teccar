class AdvertisementsController < ApplicationController
	
	def index
		@advertisements = Advertisement.all
	end

	def show
		@advertisement = Advertisement.find_by_code params[:device][:did]
	end

	def new
		#@advertisements = current_device.advertisements
		#@advertisement = Advertisement.new(create_params)
	end

	def create
		@advertisement = Advertisement.create params[:advertisement]
		redirect_to advertisement_path 
	end

	def destroy
		@advertisement = advertisements.find(params[:id])
		@advertisement.destroy
		redirect_to advertisements_path
	end

	def create_params
		params.require(:advertisement).permit(:make_id,:model_id,:price,:location,:year,:description,:type)
	end

end
