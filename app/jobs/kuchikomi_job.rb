class KuchikomiJob < ApplicationJob
  queue_as :default

  def perform(*args)  	
    ActionCable.server.broadcast "kuchikomi_app",
    	app_id: args[0],
    	kuchikomi_id: args[1].id,
    	kuchikomi_template: ApplicationController.renderer.render(partial: "kuchikomis/kuchikomi",locals: {kuchikomi: args[1],current_user: args[2]})
  end
end
