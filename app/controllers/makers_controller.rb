class MakersController < ApplicationController
	def index
		@makers=Maker.all
	end
	def create
		respond_to :js
		@maker=Maker.new(maker_params)
		@maker.save		
	end
	def update
		respond_to :js
		@maker=Maker.find_by_id params[:id]		
		@maker.update_attributes(maker_params)
	end
	def destroy
		respond_to :js
		@maker=Maker.find_by_id params[:id]
		@maker.destroy if @maker	
	end
	private
	def maker_params
		params.require(:maker).permit :name
	end
end
