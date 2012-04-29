class ProjectsController < ApplicationController
  
  def index
    get_projects
  end
  
  
  private
  
  def get_projects
    user = User.find(User.first)
    @projects = user.projects
    @high_projects = user.projects.high_priority
    @med_projects = user.projects.med_priority
    @low_projects = user.projects.low_priority
  end
  
end