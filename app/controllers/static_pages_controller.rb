class StaticPagesController < ApplicationController

  def search
  end

  def register
  end
  
  def home
    @keywords = Keyword.find(:all)
    @user = User.new
  end

def create
  @bookmark = Bookmark.new(params[:bookmark])
  end
end
