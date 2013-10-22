class SubscribersController < ApplicationController
  layout "admin"
  
  def index
    @subscribers = Subscriber.all
  end

  def destroy
    @subscriber = Subscriber.find(params[:id])
    @subscriber.destroy
    redirect_to subscribers_list_path
  end
end
