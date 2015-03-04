class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      Message.create(email: params[:contact][:email], name: params[:contact][:email], message: params[:contact][:message])
      flash.now[:notice] = "Thanks for the message.  David will get back to you shortly"
      redirect_to root_path
    else
      flash.now[:error] = "Message was not sent"
      render "static_pages#home"
    end
  end 
end