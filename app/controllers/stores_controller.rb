class StoresController < ApplicationController
	def index
		@stores=Store.all
	end
	def create
		respond_to :js
		@store=Store.new(store_params)
		@store.save
	end
	def update
		respond_to :js
		@store=Store.find_by_id params[:id]		
		@store.update_attributes(store_params)
	end
	def destroy
		respond_to :js
		@store=Store.find_by_id params[:id]
		@store.destroy if @store	
	end
	private
	def store_params
		params.require(:store).permit :name
	end
end
