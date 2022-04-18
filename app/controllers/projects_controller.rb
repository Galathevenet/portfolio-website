class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @contact = Contact.new
  end

  def show
    @project = Project.find(params[:id])
  end

  def download
    send_file '/home/blog/downloads/away.png',:type=>"application/png", :x_sendfile=>true
end
end
