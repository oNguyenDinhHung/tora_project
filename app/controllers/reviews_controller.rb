class ReviewsController < ApplicationController
	before_action :authenticate_user!
	def create
		@review=current_user.reviews.find_by(app_id: params[:review][:app_id])
		if @review
			@review.update_attributes(review_params)
		else
			@review=current_user.reviews.build(review_params)
			@review.save
		end	
		# TestjobJob.set(wait_until: 10.seconds.from_now).perform_later("a","b",5)
	end
	private
	def review_params
		params.require(:review).permit(:app_id,:value,:text)
	end
end
