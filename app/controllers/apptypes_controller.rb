class ApptypesController < ApplicationController
	def index
		@apptypes=Apptype.all
	end
	def create
		respond_to :js
		@apptype=Apptype.new(apptype_params)
		@apptype.save
	end
	def update
		respond_to :js
		@apptype=Apptype.find_by_id params[:id]		
		@apptype.update_attributes(apptype_params)
	end
	def destroy
		respond_to :js
		@apptype=Apptype.find_by_id params[:id]
		@apptype.destroy if @apptype	
	end
	private
	def apptype_params
		params.require(:apptype).permit :name
	end
end
