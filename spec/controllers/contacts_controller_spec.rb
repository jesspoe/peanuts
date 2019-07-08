require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

  before do
    ActionController::Base.allow_forgery_protection = true
  end
  
  after do
    ActionController::Base.allow_forgery_protection = false
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, params:{contact: {name: "Jessica", email: "jesspoe@gmail.com", message: "hello y'all this should pass the test!"}}
      expect(response).to redirect_to '/thanks'
    end
  
  
    it "returns failure for missing message" do
      post :create, params:{contact: {name: "Jessica", email: "jesspoe@gmail.com", message: nil}}
      expect(response).to redirect_to new_contact_path
    end
    

  end


end

