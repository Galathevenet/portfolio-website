class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @woolks = Project.find_by(title: 'Woolks')
    @pig_rent = Project.find_by(title: 'Pig Rent')
    @contact = Contact.new
  end

  def show
    @project = Project.find(params[:id])
    @woolks = Project.find_by(title: 'Woolks')
    @pig_rent = Project.find_by(title: 'Pig Rent')
  end
end
