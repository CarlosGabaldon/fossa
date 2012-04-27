class ProjectsController < ApplicationController
  
  def index
    @user = User.find(User.first)
  end
  
end