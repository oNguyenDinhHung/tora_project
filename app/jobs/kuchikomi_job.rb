class KuchikomiJob < ApplicationJob
  queue_as :default

  def perform(*args)
    ActionCable.server.broadcast "kuchikomi_app",app_id: args[0],kuchikomi_id: args[1].id,kuchikomi_template: ApplicationController.renderer.render(args[1])
  end
end
