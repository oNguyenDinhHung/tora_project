class CategoriesController < ApplicationController
	def index
		@categories=Category.all
	end
	def create
		respond_to :js
		@category=Category.new(category_params)
		@category.save
	end
	def update
		respond_to :js
		@category=Category.find_by_id params[:id]		
		@category.update_attributes(category_params)
	end
	def destroy
		respond_to :js
		@category=Category.find_by_id params[:id]
		@category.destroy if @category	
	end
	private
	def category_params
		params.require(:category).permit :name
	end
end
