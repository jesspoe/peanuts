class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create 
    @contact = Contact.create(contacts_params)
    if @contact.valid?
       @contact.save
      flash[:notice] = "Message Delivered!"
      redirect_to '/thanks'
    else
      flash[:notice] = "Invalid entry, please try again."
      render "new", status: 400 
    end 
  end
  
  def messages 
    @messages = Contact.all 
  end 


  def destroy
    @message = Contact.find_by(id: params[:id])
    if @message
      @message.destroy
      flash[:notice] = "Message Removed"
    else
      flash[:errors] = "message doesn't exist"
    end
    redirect_to '/messages'
  end

  private

  def contacts_params
    params.require(:contact).permit(:authenticity_token, :name, :email, :message)
  end

end 





