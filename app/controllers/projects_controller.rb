class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @contact = Contact.new
  end

  def show
    @project = Project.find(params[:id])
  end


end
