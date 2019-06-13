class ContactsController < ApplicationController

  def index
    @contact = Contact.new(params[:contact])
  end

  def create 
    @contact = Contact.new(contacts_params)
    if @contact.valid?
       @contact.save
      flash[:notice] = "Contact Successfully Created"
      redirect_to '/thanks'
    else
      flash[:notice] = "Something went wrong, please try again"
      redirect_to '/contacts'
    end 
  end

  private

  def contacts_params
    params.require(:contact).permit(:name, :email, :message)
  end

end 





