class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      UserMailer.contact_message(@contact).deliver
      redirect_to root_path, notice: 'Your message has been sent!'
    else
      render action: 'new'
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :subject, :message)
    end
end
