class HomeController < ApplicationController
  def index
  	if params[:user_id]
  		ActionCable.server.broadcast "user_#{params[:user_id]}",
  			message: params[:mess]
  	else
  	end
  end
end
