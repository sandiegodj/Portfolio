class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = "Thanks for the message.  David will get back to you shortly"
    else
      flash.now[:error] = "Message was not sent"
    end
  end 
end