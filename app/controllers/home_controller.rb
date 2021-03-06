class HomeController < ApplicationController


  def index
    @assignments = current_user.assignments.all
    @posts = current_user.posts.with_attached_image
  end

  def home
    if !logged_in?
      redirect_to login_path
    end
  end

end
