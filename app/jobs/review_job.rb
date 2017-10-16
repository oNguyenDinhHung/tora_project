class ReviewJob < ApplicationJob
  queue_as :default

  def perform(*args)    
    ActionCable.server.broadcast "review_app",app_id: args[0],review_id: args[1].id,review_template: ApplicationController.renderer.render(args[1])
  end
end
