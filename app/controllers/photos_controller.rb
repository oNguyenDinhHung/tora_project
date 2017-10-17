class PhotosController < ApplicationController
	def create
		@app=App.find_by_id(params[:id])
		@photo=@app.photos.build(photo_params)
		@photo.save			
	end
	def destroy
		photo=Photo.find_by_id params[:id]
		photo.destroy if photo
		@deleted_id=params[:id]
	end
	private
	def photo_params
		params.require(:photo).permit(:app_id,:image)
	end
end
