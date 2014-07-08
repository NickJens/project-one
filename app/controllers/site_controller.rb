class SiteController < ApplicationController
  def index
    unless user_signed_in?
      redirect_to login_path
    end
  end

  def users
  end

  def events
  end

  def profile
  end

end