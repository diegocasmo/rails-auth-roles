class HomeController < ApplicationController
  before_action :authenticate_user!

  def get
    @users = User.with_pictures
  end
end
