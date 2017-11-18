class AppsController < ApplicationController
	before_action :authenticate_user!,except: [:index,:show]
	def index
		# @apps=App.left_outer_joins(:reviews)
		# .group("apps.id")
		# .select("apps.*","count(reviews.id) as review_number","avg(reviews.value) as rating_value")
		# .order("rating_value desc","review_number desc")
		@apps = App.all
		@categories = Category.all
	end
	def new
		@app=App.new		
	end
	def show
		@app=App.find_by_id params[:id]
		@total_reviews = @app.reviews.count
		@avg_rate = (@app.reviews.average(:value) || 0).round(1)
		if @total_reviews > 0
		@five_rate_percent = (100*(@app.reviews.where({:value => 5}).count)/@total_reviews).round(2)
		@four_rate_percent = (100*(@app.reviews.where({:value => 4}).count)/@total_reviews).round(2)
		@three_rate_percent = (100*(@app.reviews.where({:value => 3}).count)/@total_reviews).round(2)
		@two_rate_percent = (100*(@app.reviews.where({:value => 2}).count)/@total_reviews).round(2)
		@one_rate_percent = (100*(@app.reviews.where({:value => 1}).count)/@total_reviews).round(2)
		else
		@five_rate_percent=@four_rate_percent=@three_rate_percent=@two_rate_percent=@one_rate_percent=0
		end
		if current_user
		@review = @app.reviews.find_by({:user_id => current_user.id})
		end
		unless @app			
			redirect_to root_path,alert: t(".notfound")
		end				
	end
	def create
		# respond_to :js
		@app=current_user.apps.build(app_params)
		if @app.save
			# redirect_to apps_path,notice: t(".success")
			redirect_to @app,notice: t(".success")
		else
			# puts @app.errors.full_messages
			render 'new'
		end
	end
	def edit
		@app = App.find(params[:id])
	end
	def update
		@app = App.find(params[:id])
		if @app.update_attributes(app_params)
			# flash[:success] = "Profile updated"
			redirect_to @app, notice: t(".success")
		else
			render 'edit'
		end
		# @app=App.find_by_id(params[:id])
		# @app.update(app_params)
		# @updated_params=[]
		# @updated_params<<"update_app_picture" if app_params[:picture]
		# @updated_params<<"update_app_description" if app_params[:description]
	end
	def destroy
		App.find(params[:id]).destroy
		flash[:success] = "削除が成功"
		redirect_to app_list_path
	end
	def list
		@apps = current_user.apps
	end
	private
	def app_params
		params.require(:app).permit(:name,:picture,:maker_id,:store_id,:originid,:link,:category_id,:apptype_id,:description,:user_id, {photos: []})
	end
end
