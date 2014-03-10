class DevicesController < ApplicationController
  
  before_filter :detected_device!

  def register 
    @device.regid = params[:device][:regid]
    render :json => @device.save
  end
  
  def show
    render json: { bookmarks: (@device.nil? ? 0 : @device.bookmarks) }
  end
  
  Private

  def device_params
    params.require(:device).permit(:email, :phone, :did, :regid, :uid, :validated_at, :blocked_at)
  end

end
