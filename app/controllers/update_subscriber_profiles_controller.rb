class UpdateSubscriberProfilesController < ApplicationController

	def edit
    @subscriber = Subscriber.find(params[:id])
  end

  def update
  	@subscriber = Subscriber.find(params[:id])
		if @subscriber.update_attributes(params[:subscriber])
			redirect_to edit_update_subscriber_profile_path, :notice => "Profile telah berhasil diupdate"
		else
			render :edit
		end
  end
end
