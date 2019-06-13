class ContactsController < ApplicationController

  def new 
  end 

  def create 
    @contact = Contact.new(contacts_params)
    byebug
    if @contact.valid?
       @contact.save
      flash[:notice] = "contact successfully created"
      redirect_to '/contact'
    else
      flash[:notice] = "Something went wrong, please try again"
      redirect_to '/contact'
    end 
  end

  private

  def contacts_params
    params.require(:contact).permit(:name, :email, :message)
  end

end 


