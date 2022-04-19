class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @woolks = Project.find_by(title: 'Woolks')
    @pig_rent = Project.find_by(title: 'PigRent')
    @contact = Contact.new
  end

  def show
    @project = Project.find(params[:id])
  end

  def download
    send_file '/home/blog/downloads/away.png',:type=>"application/png", :x_sendfile=>true
end
end
