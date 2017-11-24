class KuchikomisController < ApplicationController
	before_action :authenticate_user!
	def create
		@kuchikomi=current_user.kuchikomis.build(kuchikomi_params)
		KuchikomiJob.perform_later(@kuchikomi) if @kuchikomi.save
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
