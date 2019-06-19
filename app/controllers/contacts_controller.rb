class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create 
    @contact = Contact.create(contacts_params)
    if @contact.valid?
       @contact.save
      flash[:notice] = "Contact Successfully Created!"
      redirect_to '/thanks'
    else
      flash[:notice] = "Something went wrong, please try again."
      render :new
    end 
  end
  
  def messages 
    @messages = Contact.all 
  end 

  def destroy
    @message = Contact.find(params[:id])
    @message.destroy
    redirect_to '/messages'
  end

  private

  def contacts_params
    params.require(:contact).permit(:authenticity_token, :name, :email, :message)
  end

end 





