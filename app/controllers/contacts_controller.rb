class ContactsController < ApplicationController
   def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Message sent!'
    else
      flash.now[:error] = 'Could not send message'
      render 'projects/index'
    end
  end

  private

  def contact_params
    params.permit(:contact).permit(:name, :email, :message, :nickname)
  end

end
