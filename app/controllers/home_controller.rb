class HomeController < ApplicationController
  before_action :authenticate_user!

  def get
  end
end
