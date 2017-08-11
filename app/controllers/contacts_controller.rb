class ContactsController < ApplicationController
skip_before_action :authenticate_user!
def index
@contacts = Contact.all
end

  def new
    @contact = Contact.new
  end

  def create
    @contact = @contact.new(contact_params)
    if @contact.save
     redirect_to contacts_path
    else
     render :new
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :description, :email_address)
  end
end
