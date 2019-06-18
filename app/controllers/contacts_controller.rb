class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create 
    @contact = Contact.new(contacts_params)
    byebug
    if @contact.valid?
       @contact.save
      flash[:notice] = "Contact Successfully Created!"
      render :new
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
    params.require(:contact).permit(:name, :email, :message)
  end

end 





