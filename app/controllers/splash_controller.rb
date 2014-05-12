class SplashController < ApplicationController

  before_action :redirect_if_signed_in?

  def index
  
  end

  def redirect_if_signed_in?
  	redirect_to items_path if user_signed_in?
  end 
end
