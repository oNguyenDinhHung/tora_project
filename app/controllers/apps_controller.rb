class AppsController < ApplicationController
	def index
		@apps=App.all
	end
	def new
		@app=App.new		
	end
	def show
		@app=App.find_by_id params[:id]
	end
	def create
		@app=App.new(app_params)
		if @app.save
			# redirect_to apps_path,notice: t(".success")
			redirect_to @app,notice: t(".success")
		else
			puts @app.errors.full_messages
			render 'new'
		end
	end
	private
	def app_params
		params.require(:app).permit(:name,:picture,:maker_id,:store_id,:originid,:link,:category,:app_type)
	end
end
