class StaticpagesController < ApplicationController
  require 'flickr'
  def index
    @flickr = Flickr.new ENV['FLICKR_API_KEY'], ENV['FLICKR_SECRET_KEY'] 
    if params[:id]
      @list = @flickr.people.getPhotos(:user_id => params[:id])
    end
  end


end
