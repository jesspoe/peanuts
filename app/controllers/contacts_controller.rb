class ContactsController < ApplicationController

  def index
    @contact = Contact.new(params[:contact])
  end

  def messages 
    @messages = Contact.all 
  end 

  def create 
    @contact = Contact.new(contacts_params)
    if @contact.valid?
       @contact.save
      flash[:notice] = "Contact Successfully Created!"
      redirect_to '/thanks'
    else
      flash[:notice] = "Something went wrong, please try again."
      redirect_to '/contacts'
    end 
  end

  def destroy
    @message = Contact.find(params[:id])
    @message.destroy
    redirect_to '/messages'
  end

  private

  def contacts_params
    params.require(:contact).permit(:name, :email, :message)
  end

end 





