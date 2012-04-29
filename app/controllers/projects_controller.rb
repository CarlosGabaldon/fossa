class ProjectsController < ApplicationController
  respond_to :html, :js
  
  def index
    respond_with get_projects
  end
  
  
  private
  
  def get_projects
    user = User.find(User.first)
    @current_user = user
    @projects = user.projects
    @high_projects = user.projects.high_priority
    @med_projects = user.projects.med_priority
    @low_projects = user.projects.low_priority
  end
  
end