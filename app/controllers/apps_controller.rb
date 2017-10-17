class AppsController < ApplicationController
	before_action :authenticate_user!,except: [:index,:show]
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
		@app=current_user.apps.build(app_params)
		if @app.save
			# redirect_to apps_path,notice: t(".success")
			redirect_to @app,notice: t(".success")
		else
			puts @app.errors.full_messages
			render 'new'
		end
	end
	def update
		@app=App.find_by_id(params[:id])
		@app.update(app_params)
		@updated_params=[]
		@updated_params<<"update_app_picture" if app_params[:picture]
		@updated_params<<"update_app_description" if app_params[:description]
	end
	private
	def app_params
		params.require(:app).permit(:name,:picture,:maker_id,:store_id,:originid,:link,:category,:app_type,:description,:user_id)
	end
end
