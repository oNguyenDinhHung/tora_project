class KuchikomisController < ApplicationController
	before_action :authenticate_user!
	def create
		# @kuchikomi=current_user.kuchikomis.find_by(app_id: params[:kuchikomi][:app_id])
		# if @kuchikomi
		# 	@kuchikomi.update_attributes(kuchikomi_params)
		# else
			@kuchikomi=current_user.kuchikomis.build(kuchikomi_params)
			@kuchikomi.save
		# end	
		KuchikomiJob.perform_later(params[:kuchikomi][:app_id],@kuchikomi,current_user) if @kuchikomi.id
	end
	def destroy
		respond_to :js
		@kuchikomi=current_user.kuchikomis.find_by_id params[:id]
		@kuchikomi.destroy if @kuchikomi
	end
	private
	def kuchikomi_params
		params.require(:kuchikomi).permit(:app_id,:text)
	end
end
