class KuchikomiJob < ApplicationJob
  queue_as :default

  def perform(kuchikomi)  		
    ActionCable.server.broadcast "kuchikomi_app",    	    	
    	kuchikomi_template: ApplicationController.renderer.render(partial: "kuchikomis/kuchikomi",locals: {kuchikomi: kuchikomi,current_user: kuchikomi.user}),
  		user_id: kuchikomi.user.id.to_s,
  		app_id: kuchikomi.app.id
  end
end
