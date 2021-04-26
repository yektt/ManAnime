class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      UserMailer.with(contact: @contact).receive_contact.deliver_now
      flash[:notice] = "We received your message. We will write you back as soon as possible."
      redirect_to root_path
    else
      flash[:error] = 'Cannot send the message. Please try again!'
      render 'new'
    end
  end
end
