class ReviewJob < ApplicationJob
  queue_as :default

  def perform(*args)    
    app=App.find_by_id(args[0])    
    app.reviewed_users.pluck(:id).each do |user_id|    	
    	ActionCable.server.broadcast "user_#{user_id}",review_id: args[1].id,review_template: ApplicationController.renderer.render(args[1])
    end    
  end
end
