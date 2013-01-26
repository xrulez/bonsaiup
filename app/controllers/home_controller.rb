class HomeController < ApplicationController
  def home
    @users = User.find(:all)
  end
  
  def index
    @users = User.find(:all)
  end

  def search
  end
end
